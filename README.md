# SneakyEndpoints
Hide from the InstanceCredentialExfiltration GuardDuty finding by using VPC Endpoints!

## Background
When targeting AWS environments as a Penetration Tester or Red Teamer you may stumble into an opportunity to steal IAM credentials from an EC2 instance. If you were to attempt to use those credentials outside of the original host, however, you would run into the [InstanceCredentialExfiltration](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_finding-types-iam.html#unauthorizedaccess-iam-instancecredentialexfiltrationoutsideaws) GuardDuty finding. This detects when IAM credentials from an EC2 instance are used outside of AWS.

The common [solution](https://hackingthe.cloud/aws/avoiding-detection/steal-keys-undetected/) was to use those credentials from your own EC2 instance. This would evade detection because GuardDuty was only checking if the credentials were used outside of EC2. Not the original EC2 instance, any EC2 instance.

On January 20th, 2022 AWS released a new [GuardDuty finding](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_finding-types-iam.html#unauthorizedaccess-iam-instancecredentialexfiltrationinsideaws) which would detect when credentials were used on a different EC2 instance, thus defeating the bypass. 

[Very quickly](https://twitter.com/Frichette_n/status/1484314130626449417?s=20), it was identified that this detection did not apply to [VPC Endpoints](https://docs.aws.amazon.com/vpc/latest/privatelink/vpc-endpoints.html). As a result, we can evade the GuardDuty finding by instead using VPC Endpoints. This project (SneakyEndpoints) seeks to make this evasion easier by providing the Terraform configs to setup an environment very quickly.

## How To Use
Simple clone this repository and run the `terraform apply` command with suitable AWS credentials and [Terraform](https://www.terraform.io/) installed. This will create an EC2 instance in a private subnet with no internet access. It will also create a ton of VPC Endpoints for you to connect to. 

Without internet access we prevent the possibility of leaking our use of the credentials and thus, alerting their owner. This ensures we use the VPC Endpoints.

To use the EC2 instance, connect to it using [Session Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager.html). The easiest way to do this is to navigate to the list of EC2 instances, select the `sneakyendpoints_host` and click `connect` in the upper right.

When you're finished, perform the `terraform destroy` command to tear down the environment.

For your convenience, this tool will also create an S3 bucket for you to move scripts and other tools to the host. The name of the bucket is displayed as an output when the `apply` is finished. The bucket will be destroyed when you run `destroy`.

All infrastructure is created in `us-east-1`. A find and replace tool can set this to the region of your choice.

## IMPORTANT
Please note! This will charge your account for the environment. The cost should be low if being used for short periods of time. However, if left for extended periods of time the charges can add up. Please ensure you are deleting the infrastructure when you're finished. `I take no responsibility for charges incurred on your account for using this project`.

Additionally, if you cannot connect to the EC2 instance, please wait a few minutes. If the issue persists, reboot the EC2 instance and wait a few more minutes. Likely the needed SSM VPC Endpoints did not come up in time for the SSM agent to connect to them.

## Supported Services
For the sake of not spinning up resources that would never be used, this project on creates VPC Endpoints for common services. You are welcome to add your own, or submit a pull request. The following are the supported services.

* S3
* EC2
* RDS
* EBS
* ECS
* RedShift
* CloudTrail
* STS
* CodePipeline
* KMS
* Lambda
* SNS
* SQS
