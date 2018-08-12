# AWS Lambda module

This Terraform module deploys an AWS Lambda function.


## Usage
```hcl
provider "aws" {
  region = "eu-west-1"
}

module "lambda" {
  source               = "../../lambda"
  function_description = "This is just a description"
  function_handler     = "function.handler"
  function_iam_role    = "${aws_iam_role.lambda_role.arn}"
  function_max_memory  = 512
  function_name        = "myfunction"
  function_package     = "../dist/test.zip"
  function_timeout     = 60
  function_runtime     = "nodejs8.10"

  function_env_variables = {
    "VERSION" = "1.0"
  }
}
```


## Variables

| Name                  | Default | Description                                                                            | Type   |
|-----------------------|---------|----------------------------------------------------------------------------------------|--------|
|function_description   |         | What this Lambda function does.                                                        | string |
|function_env_variables |         | Environment variables this function requires.                                          | map    |
|function_handler       |         | The handler function this Lambda will run when invoked.                                | string |
|function_iam_role      |         | IAM Role to be used by this Lambda function.                                           | string |
|function_max_memory    |         | Maximum amount of memory to execute this function.                                     | number |
|function_name          |         | Name for this Lambda function.                                                         | string |
|function_package       |         | The zipped package containing the source code and dependencies this function will use. | string |
|function_runtime       |         | Runtime to be used for Lambda execution.                                               | string |
|function_tags          |         | Tags for this Lambda function.                                                         | map    |
|function_timeout       |         | Maximum amount of seconds for this function to run.                                    | number |
|function_vpc_sg        |         | Security groups for this function, when running within an AWS VPC.                     | list   |
|function_vpc_subnets   |         | VPC Subnets for this function, when running within an AWS VPC.                         | list   |
|publish                |         | When set to true will publish changes as a new lambda version.                         | bool   |

## Outputs

| Name                | Description                                               |
|---------------------|-----------------------------------------------------------|
|function_arn         | Lambda ARN/                                               |
|function_version_arn | Lambda ARN. Includes version if `publish` was set to true.|
|function_api_gw_arn  | Lambda ARN to use with API Gateway.                       |
|function_version     | Version of the deployed Lambda function.                  |
|last_modified        | Last modified                                             |

