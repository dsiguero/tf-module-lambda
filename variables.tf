variable "function_description" {
  type        = "string"
  description = "What this Lambda function does."
}

variable "function_environment" {
  type        = "string"
  description = "Name of the environment where this Lambda belongs: develop, testing, production..."
}

variable "function_env_variables" {
  default     = {}
  description = "Environment variables this function requires."
  type        = "map"
}

variable "function_handler" {
  description = "The handler function this Lambda will run when invoked."
  type        = "string"
}

variable "function_iam_role" {
  description = "IAM Role to be used by this Lambda function."
  type        = "string"
}

variable "function_max_memory" {
  description = "Maximum amount of memory to execute this function."
}

variable "function_name" {
  description = "Name for this Lambda function."
}

variable "function_package" {
  description = "The zipped package containing the source code and dependencies this function will use."
}

variable "function_runtime" {
  description = "Runtime to be used for Lambda execution."
  type        = "string"
}

variable "function_tags" {
  default     = {}
  description = "Tags for this Lambda function."
  type        = "map"
}

variable "function_timeout" {
  description = "Maximum amount of seconds for this function to run."
}

variable "function_vpc_sg" {
  description = "Security groups for this function, when running within an AWS VPC."
  type        = "list"
  default     = []
}

variable "function_vpc_subnets" {
  description = "VPC Subnets for this function, when running within an AWS VPC."
  type        = "list"
  default     = []
}

variable "publish" {
  default     = true
  description = "When set to true will publish changes as a new lambda version."
}

variable "function_semver_version" {
  description = "Version for the deployed lambda."
}
