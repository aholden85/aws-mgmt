# aws-mgmt
Tools, information, and other snippets that have made working with AWS easier for me personally.

## AWS Regions
I have found it useful to use dictionaries, maps, arrays, and other structures holding relevant region information, particularly the AWS-published abbreviations for regions. Below is a compiled table, as well as data structures in Powershell and Python, containing this information for easy reference.

All of these region names, codes, and abbreviations have been collated from [AWS service endpoints][AWSAllRegions], [AWS GovCloud (US) service endpoints][AWSGovRegions], and [Understanding your AWS billing and usage reports for Amazon S3][AWSAbbreviations].

All information not explicitly covered within these resources comes from inference, such as the abbreviations for the Osaka, Milan, and China regions.

### Table
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

### Powershell
<details>
<summary>Code</summary>
<p>
  
``` powershell
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

### Python
<details>
<summary>Code</summary>
<p>
  
```python
aws_regions = [
	{
		'name':'US East (Ohio)',
		'code':'us-east-2',
		'abbreviation':'USE2',
	},
	{
		'name':'US East (N. Virginia)',
		'code':'us-east-1',
		'abbreviation':'USE1',
	},
	{
		'name':'US West (N. California)',
		'code':'us-west-1',
		'abbreviation':'USW1',
	},
	{
		'name':'US West (Oregon)',
		'code':'us-west-2',
		'abbreviation':'USW2',
	},
	{
		'name':'Africa (Cape Town)',
		'code':'af-south-1',
		'abbreviation':'CPT',
	},
	{
		'name':'Asia Pacific (Hong Kong)',
		'code':'ap-east-1',
		'abbreviation':'APE1',
	},
	{
		'name':'Asia Pacific (Mumbai)',
		'code':'ap-south-1',
		'abbreviation':'APS3',
	},
	{
		'name':'Asia Pacific (Osaka-Local)',
		'code':'ap-northeast-3',
		'abbreviation':'APN3',
	},
	{
		'name':'Asia Pacific (Seoul)',
		'code':'ap-northeast-2',
		'abbreviation':'APN2',
	},
	{
		'name':'Asia Pacific (Singapore)',
		'code':'ap-southeast-1',
		'abbreviation':'APS1',
	},
	{
		'name':'Asia Pacific (Sydney)',
		'code':'ap-southeast-2',
		'abbreviation':'APS2',
	},
	{
		'name':'Asia Pacific (Tokyo)',
		'code':'ap-northeast-1',
		'abbreviation':'APN1',
	},
	{
		'name':'Canada (Central)',
		'code':'ca-central-1',
		'abbreviation':'CAN1',
	},
	{
		'name':'China (Beijing)',
		'code':'cn-north-1',
		'abbreviation':'CNN1',
	},
	{
		'name':'China (Ningxia)',
		'code':'cn-northwest-1',
		'abbreviation':'CNN2',
	},
	{
		'name':'Europe (Frankfurt)',
		'code':'eu-central-1',
		'abbreviation':'EUC1',
	},
	{
		'name':'Europe (Ireland)',
		'code':'eu-west-1',
		'abbreviation':'EU',
	},
	{
		'name':'Europe (London)',
		'code':'eu-west-2',
		'abbreviation':'EUW2',
	},
	{
		'name':'Europe (Milan)',
		'code':'eu-south-1',
		'abbreviation':'EUS1',
	},
	{
		'name':'Europe (Paris)',
		'code':'eu-west-3',
		'abbreviation':'EUW3',
	},
	{
		'name':'Europe (Stockholm)',
		'code':'eu-north-1',
		'abbreviation':'EUN1',
	},
	{
		'name':'Middle East (Bahrain)',
		'code':'me-south-1',
		'abbreviation':'MES1',
	},
	{
		'name':'South America (São Paulo)',
		'code':'sa-east-1',
		'abbreviation':'SAE1',
	},
	{
		'name':'AWS GovCloud (US-West)',
		'code':'us-gov-west-1',
		'abbreviation':'UGW1',
	},
	{
		'name':'AWS GovCloud (US-East)',
		'code':'us-gov-east-1',
		'abbreviation':'UGE1',
	},
]
```
</p>
</details>

[AWSAllRegions]: <https://docs.aws.amazon.com/general/latest/gr/rande.html>
[AWSGovRegions]: <https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/using-govcloud-endpoints.html>
[AWSAbbreviations]: <https://docs.aws.amazon.com/AmazonS3/latest/dev/aws-usage-report-understand.html>
