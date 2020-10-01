# aws-mgmt
Tools, information, and other snippets that have made working with AWS easier for me personally.

# AWS Regions
I have found it useful to use dictionaries, maps, arrays, and other structures holding relevant region information, particularly the AWS-published abbreviations for regions. Below is a compiled table, as well as data structures in Powershell and Python, containing this information for easy reference.

All of these region names, codes, and abbreviations have been collated from the following resources:
* [AWS service endpoints][AWSAllRegions],
* [AWS GovCloud (US) service endpoints][AWSGovRegions], and
* [Understanding your AWS billing and usage reports for Amazon S3][AWSAbbreviations].

All information not explicitly covered within these resources comes from inference, such as the abbreviations for the Osaka, Milan, and China regions.

## Table
<details>
<summary>Table</summary>
<p>
	
| Region Name | Code | Abbreviation |
| ----------- | ---- | ------------ |
| US East (Ohio) | us-east-2 | USE2 |
| US East (N. Virginia) | us-east-1 | USE1 |
| US West (N. California) | us-west-1 | USW1 |
| US West (Oregon) | us-west-2 | USW2 |
| Africa (Cape Town) | af-south-1 | CPT |
| Asia Pacific (Hong Kong) | ap-east-1 | APE1 |
| Asia Pacific (Mumbai) | ap-south-1 | APS3 |
| Asia Pacific (Osaka-Local) | ap-northeast-3 | APN3 |
| Asia Pacific (Seoul) | ap-northeast-2 | APN2 |
| Asia Pacific (Singapore) | ap-southeast-1 | APS1 |
| Asia Pacific (Sydney) | ap-southeast-2 | APS2 |
| Asia Pacific (Tokyo) | ap-northeast-1 | APN1 |
| Canada (Central) | ca-central-1 | CAN1 |
| China (Beijing) | cn-north-1 | CNN1 |
| China (Ningxia) | cn-northwest-1 | CNN2 |
| Europe (Frankfurt) | eu-central-1 | EUC1 |
| Europe (Ireland) | eu-west-1 | EU |
| Europe (London) | eu-west-2 | EUW2 |
| Europe (Milan) | eu-south-1 | EUS1 |
| Europe (Paris) | eu-west-3 | EUW3 |
| Europe (Stockholm) | eu-north-1 | EUN1 |
| Middle East (Bahrain) | me-south-1 | MES1 |
| South America (São Paulo) | sa-east-1 | SAE1 |
| AWS GovCloud (US-West) | us-gov-west-1 | UGW1 |
| AWS GovCloud (US-East) | us-gov-east-1 | UGE1 |
</p>
</details>

## Powershell
<details>
<summary>Code</summary>
<p>
  
``` Powershell
$aws_regions = @(
	@{
		Name = 'US East (Ohio)';
		Code = 'us-east-2';
		Abbreviation = 'USE2';
	},
	@{
		Name = 'US East (N. Virginia)';
		Code = 'us-east-1';
		Abbreviation = 'USE1';
	},
	@{
		Name = 'US West (N. California)';
		Code = 'us-west-1';
		Abbreviation = 'USW1';
	},
	@{
		Name = 'US West (Oregon)';
		Code = 'us-west-2';
		Abbreviation = 'USW2';
	},
	@{
		Name = 'Africa (Cape Town)';
		Code = 'af-south-1';
		Abbreviation = 'CPT';
	},
	@{
		Name = 'Asia Pacific (Hong Kong)';
		Code = 'ap-east-1';
		Abbreviation = 'APE1';
	},
	@{
		Name = 'Asia Pacific (Mumbai)';
		Code = 'ap-south-1';
		Abbreviation = 'APS3';
	},
	@{
		Name = 'Asia Pacific (Osaka-Local)';
		Code = 'ap-northeast-3';
		Abbreviation = 'APN3';
	},
	@{
		Name = 'Asia Pacific (Seoul)';
		Code = 'ap-northeast-2';
		Abbreviation = 'APN2';
	},
	@{
		Name = 'Asia Pacific (Singapore)';
		Code = 'ap-southeast-1';
		Abbreviation = 'APS1';
	},
	@{
		Name = 'Asia Pacific (Sydney)';
		Code = 'ap-southeast-2';
		Abbreviation = 'APS2';
	},
	@{
		Name = 'Asia Pacific (Tokyo)';
		Code = 'ap-northeast-1';
		Abbreviation = 'APN1';
	},
	@{
		Name = 'Canada (Central)';
		Code = 'ca-central-1';
		Abbreviation = 'CAN1';
	},
	@{
		Name = 'China (Beijing)';
		Code = 'cn-north-1';
		Abbreviation = 'CNN1';
	},
	@{
		Name = 'China (Ningxia)';
		Code = 'cn-northwest-1';
		Abbreviation = 'CNN2';
	},
	@{
		Name = 'Europe (Frankfurt)';
		Code = 'eu-central-1';
		Abbreviation = 'EUC1';
	},
	@{
		Name = 'Europe (Ireland)';
		Code = 'eu-west-1';
		Abbreviation = 'EU';
	},
	@{
		Name = 'Europe (London)';
		Code = 'eu-west-2';
		Abbreviation = 'EUW2';
	},
	@{
		Name = 'Europe (Milan)';
		Code = 'eu-south-1';
		Abbreviation = 'EUS1';
	},
	@{
		Name = 'Europe (Paris)';
		Code = 'eu-west-3';
		Abbreviation = 'EUW3';
	},
	@{
		Name = 'Europe (Stockholm)';
		Code = 'eu-north-1';
		Abbreviation = 'EUN1';
	},
	@{
		Name = 'Middle East (Bahrain)';
		Code = 'me-south-1';
		Abbreviation = 'MES1';
	},
	@{
		Name = 'South America (São Paulo)';
		Code = 'sa-east-1';
		Abbreviation = 'SAE1';
	},
	@{
		Name = 'AWS GovCloud (US-West)';
		Code = 'us-gov-west-1';
		Abbreviation = 'UGW1';
	},
	@{
		Name = 'AWS GovCloud (US-East)';
		Code = 'us-gov-east-1';
		Abbreviation = 'UGE1';
	}
)
```
</p>
</details>

## Python
<details>
<summary>Code</summary>
<p>
  
``` Python
aws_regions = [
	{
		'Name':'US East (Ohio)',
		'Code':'us-east-2',
		'Abbreviation':'USE2',
	},
	{
		'Name':'US East (N. Virginia)',
		'Code':'us-east-1',
		'Abbreviation':'USE1',
	},
	{
		'Name':'US West (N. California)',
		'Code':'us-west-1',
		'Abbreviation':'USW1',
	},
	{
		'Name':'US West (Oregon)',
		'Code':'us-west-2',
		'Abbreviation':'USW2',
	},
	{
		'Name':'Africa (Cape Town)',
		'Code':'af-south-1',
		'Abbreviation':'CPT',
	},
	{
		'Name':'Asia Pacific (Hong Kong)',
		'Code':'ap-east-1',
		'Abbreviation':'APE1',
	},
	{
		'Name':'Asia Pacific (Mumbai)',
		'Code':'ap-south-1',
		'Abbreviation':'APS3',
	},
	{
		'Name':'Asia Pacific (Osaka-Local)',
		'Code':'ap-northeast-3',
		'Abbreviation':'APN3',
	},
	{
		'Name':'Asia Pacific (Seoul)',
		'Code':'ap-northeast-2',
		'Abbreviation':'APN2',
	},
	{
		'Name':'Asia Pacific (Singapore)',
		'Code':'ap-southeast-1',
		'Abbreviation':'APS1',
	},
	{
		'Name':'Asia Pacific (Sydney)',
		'Code':'ap-southeast-2',
		'Abbreviation':'APS2',
	},
	{
		'Name':'Asia Pacific (Tokyo)',
		'Code':'ap-northeast-1',
		'Abbreviation':'APN1',
	},
	{
		'Name':'Canada (Central)',
		'Code':'ca-central-1',
		'Abbreviation':'CAN1',
	},
	{
		'Name':'China (Beijing)',
		'Code':'cn-north-1',
		'Abbreviation':'CNN1',
	},
	{
		'Name':'China (Ningxia)',
		'Code':'cn-northwest-1',
		'Abbreviation':'CNN2',
	},
	{
		'Name':'Europe (Frankfurt)',
		'Code':'eu-central-1',
		'Abbreviation':'EUC1',
	},
	{
		'Name':'Europe (Ireland)',
		'Code':'eu-west-1',
		'Abbreviation':'EU',
	},
	{
		'Name':'Europe (London)',
		'Code':'eu-west-2',
		'Abbreviation':'EUW2',
	},
	{
		'Name':'Europe (Milan)',
		'Code':'eu-south-1',
		'Abbreviation':'EUS1',
	},
	{
		'Name':'Europe (Paris)',
		'Code':'eu-west-3',
		'Abbreviation':'EUW3',
	},
	{
		'Name':'Europe (Stockholm)',
		'Code':'eu-north-1',
		'Abbreviation':'EUN1',
	},
	{
		'Name':'Middle East (Bahrain)',
		'Code':'me-south-1',
		'Abbreviation':'MES1',
	},
	{
		'Name':'South America (São Paulo)',
		'Code':'sa-east-1',
		'Abbreviation':'SAE1',
	},
	{
		'Name':'AWS GovCloud (US-West)',
		'Code':'us-gov-west-1',
		'Abbreviation':'UGW1',
	},
	{
		'Name':'AWS GovCloud (US-East)',
		'Code':'us-gov-east-1',
		'Abbreviation':'UGE1',
	},
]
```
</p>
</details>

# AppStream user profiles
> :memo: While this section is currently closely-scoped to deleting AppStream user profiles, it will be expanded in future as I continue to interact with this service.

## S3 Buckets
AppStream deployments store user profile-related files in an S3 bucket with a name matching the `appstream-app-settings-<region_code>-<account_id>-<random_string>` pattern, expanded as:
*   `appstream-app-settings-`: This part is consistent across accounts and regions.
*   `region_code`: The code for the region where the AppStream stack was created.
*   `account_id`: Your AWS account ID.
*   `random_string`: A random string of characters used to avoid bucket naming conflicts.

You can use the `^appstream-app-settings-(us(-gov)?|a[fp]|c[an]|eu|me|sa)-(central|(north|south)?(east|west)?)-\d-\d{12}-\w+$` regex pattern to match these bucket names, such as `appstream-app-settings-ap-southeast-2-123456789012-a1b2c3d4`.

## S3 Objects
The keys of relevant objects match the `Windows/v<version_number>/<operating_system>/<authentication_type>/<sha256_hashed_upn>/*` pattern, expanded as:
*   `version_number`: At least one digit.
*   `operating_system`: The operating system that the AppStream stack is running on.
*   `authentication_type`: How the user authenticates against AppStream - `custom` for the AppStream 2.0 API or CLI, `federated` for SAML, and `userpool` for user pool users.
*   `sha256_hashed_upn`: A SHA256 hash hexadecimal string of the user's UPN that they use to authenticate to AppStream.

You can use the `^Windows/v\d/[\w-]+/[A-z0-9-_\.]+/(custom|federated|userpool)/([A-Fa-f0-9]{64})/.*$` regex pattern to match these object keys, such as `Windows/v6/Server-2019/AppStream-Stack/federated/2a97516c354b68848cdbd8f54a226a0a55b21ed138e207ad6c5cbb9c00aa5aea/Profile.vhdx`.

> :information_source: Amazon have provided a detailed breakdown of the bucket names and object paths [here][AppstreamVHD], but my experience differs when it comes to the folder paths, specifically around the path for the folder where the settings VHD is stored.

## Deleting Profiles
To delete a user's AppStream profile, you will first need to the SHA256-hash of the username used to log into AppStream. This can then be used to identify what S3 objects to remove.

### Manual Solutions
#### AWS WebUI
> :warning: Don’t do this, it’s inefficient and frustrating. These instructions are here primarily to indicate why there are scripted/automated solutions for this process.

This is the least efficient way to locate and delete the S3 objects, but it can be done. 

#### SHA256 Hashing
Use your tool-of-choice, such as [SHA256 Online][SHA256GitHub], to hash the usernames - these will be the Unique Identifiers (UIDs) used to determine which keys are linked to the target users.
As an example, `first.last@domain.com.au` will be SHA256-hashed to `8760a2dc649c887fcaea17db30b0462f29aeffae73a4d804c51507ce4dbefcd1`.

#### Locating the S3 Objects
You will need to navigate to the S3 service within the target AWS account and find a bucket matching the `^appstream-app-settings-(us(-gov)?|a[fp]|c[an]|eu|me|sa)-(central|(north|south)?(east|west)?)-\d-\d{12}-\w+$` regex pattern.

##### Specific Stack
From here, you can navigate to `Windows/v<version_number>/<operating_system>/<stack_name>/<authentication_type>/` and delete the folder-objects matching the SHA256-hashed values.

##### All Stacks
From here, you can navigate to `Windows/v<version_number>/<operating_system>/` and explore each of the stacks, and underlying authentication type (either `custom`, `federated`, or `userpool`), and then delete the folder-objects matching the SHA256-hashed values .

### Scripted Solutions
#### Powershell
##### Script File
[Remove-AppStreamProfile.ps1](scripts/Remove-AppStreamProfile.ps1)
This script contains two functions:
###### Get-AppStreamUserHash
This function accepts an array of User Principal Names (usernames/logins) and returns an array of dictionaries containing the original UPN, and the SHA256-hashed UPN in the following format:
``` Powershell
@(
    @{
        "Name" = $UserPrincipalName
        "SHA256Hash" = $SHA256HashedUPN
    }
)
```
Valid parameters include:
| Parameter Name | Mandatory? | Description |
| ----------- | ---- | ------------ |
| UserPrincipalNames | :heavy_check_mark: | An array of strings representing the UPNs used to log in to the AppStream stack. |

###### Remove-AppStreamProfile
This function will remove the S3 Objects for the AppStream profiles of the specified User Principal Names. Valid parameters include:
| Parameter Name | Mandatory? | Description |
| ----------- | ---- | ------------ |
| UserPrincipalNames | :heavy_check_mark: | An array of strings representing the UPNs used to log in to the AppStream stack. |
| Vendor | :x: | The vendor of the operating system that the stack is running on. *If this argument is not specified, the function will default to `Windows`.* |
| Version | :x: | From what I can tell, this is the version of the platform within the AppStream stack. It's been `6` as long as I've been working with this service. *If this argument is not specified, the function will instead search all versions.* |
| OperatingSystem | :x: | The operating system that the stack is running on. *If this argument is not specified, the function will instead search all operating systems.* |
| StackName | :x: | The name of the AppStream stack to specifically target. This argument is regex-compatible, and can accept arguments such as `"^(Development|Production).*$"`. *If this argument is not specified, the function will instead search all stacks.* |
| AuthType | :x: | The type of authentication the user is utilising to access the AppStream stack. This argument, if specified **MUST BE** one of `custom`, `federated`, or `userpool`. *If this argument is not specified, the function will instead search all types.* |
| ProfileName | :x: | If you do not wish to use the default AWS profile, specify one here. |
| DryRun | :x: | If you specify `-DryRun` as one of your arguments, the script will perform a "What-If" and report on what objects it would delete during a non-dry run. |

##### Usage
If you wanted to remove **Jane Doe** and **John Smith**’s *federated* profiles from the **Name_Of_Stack** stack using the **custom** profile, you would use the following script:
``` Powershell
Remove-AppStreamProfile `
-UserPrincipalNames @(
    "jane.doe@domain.com.au",
    "john.smith@domain.com.au"
) `
-StackName "Name_Of_Stack" `
-AuthType "federated" `
-ProfileName "custom" `
```
Alternatively, if you wanted to perform a **Dry Run** of removing **Jane Doe**’s profile, regardless of the Stack Name or Authentication Type, and using the **custom** profile, you could use the following script:
``` Powershell
Remove-AppStreamProfile `
-UserPrincipalNames @(
    "jane.doe@domain.com.au"
) `
-ProfileName "custom" `
-DryRun
```
> :memo: Both of these usage examples are using the `custom` profile, which expects you to have a profile defined with this name. You will need to change this, as mentioned earlier, if you want to use a different profile, or omit it entirely if you want to use the default profile.

#### Python
##### Script File
[RemoveremoveAppStreamProfile.py](scripts/removeAppStreamProfile.py)
This script contains two functions:
###### getAppStreamUserHash
This function accepts an array of User Principal Names (usernames/logins) and returns an array of dictionaries containing the original UPN, and the SHA256-hashed UPN in the following format:
``` Python
[
    {
        'Name': UserPrincipalName,
        'SHA256Hash': SHA256HashedUPN,
    },
]
```
Valid parameters include:
| Parameter Name | Mandatory? | Description |
| ----------- | ---- | ------------ |
| user_principal_names | :heavy_check_mark: | An array of strings representing the UPNs used to log in to the AppStream stack. |

###### removeAppStreamProfile
This function will remove the S3 Objects for the AppStream profiles of the specified User Principal Names. Valid parameters include:
| Parameter Name | Mandatory? | Description |
| ----------- | ---- | ------------ |
| user_principal_names | :heavy_check_mark: | An array of strings representing the UPNs used to log in to the AppStream stack. |
| vendor | :x: | The vendor of the operating system that the stack is running on. *If this argument is not specified, the function will default to `Windows`.* |
| version | :x: | From what I can tell, this is the version of the platform within the AppStream stack. It's been `6` as long as I've been working with this service. *If this argument is not specified, the function will instead search all versions.* |
| operating_system | :x: | The operating system that the stack is running on. *If this argument is not specified, the function will instead search all operating systems.* |
| stack_name | :x: | The name of the AppStream stack to specifically target. This argument is regex-compatible, and can accept arguments such as `'^(Development|Production).*$'`. *If this argument is not specified, the function will instead search all stacks.* |
| auth_type | :x: | The type of authentication the user is utilising to access the AppStream stack. This argument, if specified **MUST BE** one of `custom`, `federated`, or `userpool`. *If this argument is not specified, the function will instead search all types.* |
| profile_name | :x: | If you do not wish to use the default AWS profile, specify one here. |
| dry_run | :x: | If you specify `dry_run=True`, the script will perform a "What-If" and report on what objects it would delete during a non-dry run. |

##### Usage
If you wanted to remove **Jane Doe** and **John Smith**’s *federated* profiles from the **Name_Of_Stack** stack using the **custom** profile, you would use the following script:
``` Python
removeAppStreamProfile(
    user_principal_names=[
        'jane.doe@domain.com.au',
        'john.smith@domain.com.au',
    ],
    stack_name='Name_Of_Stack',
    auth_type='federated',
    profile_name='custom',
)
```
Alternatively, if you wanted to perform a **Dry Run** of removing **Jane Doe**’s profile, regardless of the Stack Name or Authentication Type, and using the **custom** profile, you could use the following script:
``` Python
removeAppStreamProfile(
    user_principal_names=[
        'jane.doe@domain.com.au',
    ],
    profile_name='custom',
    dry_run=True,
)
```
> :memo: Both of these usage examples are using the `custom` profile, which expects you to have a profile defined with this name. You will need to change this, as mentioned earlier, if you want to use a different profile, or omit it entirely if you want to use the default profile.

[AWSAllRegions]: <https://docs.aws.amazon.com/general/latest/gr/rande.html>
[AWSGovRegions]: <https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/using-govcloud-endpoints.html>
[AWSAbbreviations]: <https://docs.aws.amazon.com/AmazonS3/latest/dev/aws-usage-report-understand.html>
[AppstreamVHD]: <https://docs.aws.amazon.com/appstream2/latest/developerguide/administer-app-settings-vhds.html>
[SHA256GitHub]: <https://emn178.github.io/online-tools/sha256.html>