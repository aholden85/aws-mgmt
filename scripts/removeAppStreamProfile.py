import boto3
import hashlib
import re

def getAppStreamUserHash(
    user_principal_names,
):
    output = []
    for upn in user_principal_names:
        output.append({
            'Name': upn,
            'SHA256Hash': hashlib.sha256(upn.encode('utf-8')).hexdigest()
        })
    return output

def removeAppStreamProfile(
    user_principal_names,
    vendor='Windows',
    version=r'\d{1,}',
    operating_system=r'[\w-]+',
    stack_name=r'[A-z0-9-_\.]+',
    auth_type=r'(custom|federated|userpool)',
    profile_name=None,
    dry_run=False,
):
    # If the user has specified a profile, use that instead of the default profile.
    if profile_name is None:
        session = boto3.Session()
    else:
        session = boto3.Session(profile_name=profile_name)

    # We're looking for a bucket that starts with this string.
    s3_bucket_pattern = r'appstream-app-settings-(us(-gov)?|a[fp]|c[an]|eu|me|sa)-(central|(north|south)?(east|west)?)-\d-\d{12}-\w+'

    # And a key that starts with this string.
    s3_key_prefix = '{}/v{}/{}'.format(
        vendor,
        version,
        operating_system,
    )

    s3_client = session.client('s3')
    
    matching_buckets = list(
        filter(
            lambda bucket: re.match(
                s3_bucket_pattern,
                bucket['Name'],
            ),
            s3_client.list_buckets()['Buckets'],
        )
    )

    if len(matching_buckets)==0:
        raise Exception('Unable to find a bucket matching {}.'.format(s3_bucket_pattern))
    
    s3_bucket_name = matching_buckets[0]['Name']

    # Calculate the hashes of the supplied UPNs.
    upns_with_hashes = getAppStreamUserHash(
        user_principal_names=user_principal_names
    )

    if dry_run:
        print("dry_run=True. Function will not actually remove the targeted S3 objects.")
        print("***************")

    for pair in upns_with_hashes:
        # Construct the Key for the profile "folder".
        s3_key = "/".join([
            s3_key_prefix,
            stack_name,
            auth_type,
            pair['SHA256Hash'],
         ])

        s3_profile_objects = list(
            filter(
                lambda s3_object: re.match(
                    s3_key,
                    s3_object['Key'],
                ),
                s3_client.list_objects(
                    Bucket=s3_bucket_name,
                )['Contents'],
            )
        )
        if (len(s3_profile_objects)):
            for s3_object in s3_profile_objects:
                if dry_run:
                    print('dry_run:\ts3_client.delete_object(Bucket={}, Key={})'.format(
                        s3_bucket_name,
                        s3_object['Key']
                    ))
                else:
                    s3_client.delete_object(
                        Bucket=s3_bucket_name,
                        Key=s3_object['Key']
                    )
        else:
            print('Could not find AppStream Profile for {} [{}]!'.format(
                pair['Name'],
                pair['SHA256Hash'],
            ))