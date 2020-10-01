Import-Module AWSPowerShell

function Get-AppStreamUserHash{
    [CmdletBinding()]
    param
    (
        [string[]]$UserPrincipalNames
    )
    $output = @()
    $hasher = New-Object System.Security.Cryptography.SHA256Managed
    Foreach($UserPrincipalName in $UserPrincipalNames)
    {
        $toHash = [System.Text.Encoding]::UTF8.GetBytes($UserPrincipalName)
        $hashByteArray = $hasher.ComputeHash($toHash)
        foreach($byte in $hashByteArray)
        {
            $hash += ([System.String]::Format("{0:X2}", $byte)).ToLower()
        }
        $output = $output + @{
            "Name" = $UserPrincipalName
            "SHA256Hash" = $hash
        }
        $hash = $null
    }
    return $output
}

function Remove-AppStreamProfile {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string[]]$UserPrincipalNames,
        [Parameter(Mandatory=$false)]
        [string]$Vendor="Windows",
        [Parameter(Mandatory=$false)]
        [string]$Version='\d{1,}',
        [Parameter(Mandatory=$false)]
        [string]$OperatingSystem='[\w-]+',
        [Parameter(Mandatory=$false)]
        [string]$StackName='[A-z0-9-_\.]+',
        [Parameter(Mandatory=$false)]
        [string]$AuthType='(custom|federated|userpool)',
        [Parameter(Mandatory=$false)]
        [string]$ProfileName,
        [Parameter(Mandatory=$false)]
        [switch]$DryRun
    )

    # If the user has specified a profile, use that instead of the default profile.
    if ($PSBoundParameters.ContainsKey('ProfileName')) {
        Set-AWSCredential -ProfileName $ProfileName
    }

    # We're looking for a bucket that starts with this string.
    $S3BucketPattern = 'appstream-app-settings-(us(-gov)?|a[fp]|c[an]|eu|me|sa)-(central|(north|south)?(east|west)?)-\d-\d{12}-\w+'

    # And a key that starts with this string.
    $S3KeyPrefix = "$Vendor/v$Version/$OperatingSystem"

    # Search for the bucket that contains the AppStream profiles.
    $S3BucketName = (Get-S3Bucket | Where-Object { $_.BucketName -match $S3BucketPattern }).BucketName

    # Exit if we couldn't find the bucket.
    if($null -eq $S3BucketName) {
        Write-Error "Unable to find a bucket for $S3BucketPattern."
        return $null
    }

    # Calculate the hashes of the supplied UPNs.
    $UPNsWithHashes = Get-AppStreamUserHash -UserPrincipalNames $UserPrincipalNames

    if ($DryRun) {
        Write-Host "DryRun = $true. Function will not actually remove the targeted S3 objects." -ForegroundColor Yellow
        Write-Host "***************"
    }

    foreach ($pair in $UPNsWithHashes) {
        # Construct the Key for the profile "folder".
        $S3Key = @(
            $S3KeyPrefix,
            $StackName,
            $AuthType,
            $pair.SHA256Hash
        ) -join "/"

        # Check that the profile exists.
        $S3ProfileObjects = Get-S3Object -BucketName $S3BucketName | Where-Object {$_.Key -match $S3Key }
        if ($S3ProfileObjects) {
            foreach ($object in $S3ProfileObjects) {
                if ($DryRun) {
                    Write-Host "DryRun:`tRemove-S3Object -BucketName $S3BucketName -Key $($object.Key)" -ForegroundColor Yellow
                } else {
                    Remove-S3Object -BucketName $S3BucketName -Key $object.Key
                }
            }
        } else {
            Write-Warning "Could not find AppStream Profile for $($pair.Name) [$($pair.SHA256Hash)]!"
        }
    }
}