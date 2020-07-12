# Input variable definitions
variable "ami_id" {
  description = "The Amazon Machine Image ID"
  type        = string

  /*validation {
    # regex(...) fails if it cannot find a match -- this functionality is experimental and not yet recommended
    #including in project of demonstration of REGEX validation for security/data cleaning
    condition     = can(regex("^ami-", var.ami_id))
    error_message = "The image_id value must be a valid AMI id that beings with \"ami-\"."
  }*/
}

variable "resource_group_name" {
  description = "The name of team and project identifiers"
  type        = string
}

variable "environment_prefix" {
  description = "The name of team and project identifiers"
  type        = string
}

variable "tenant" {
  description = "The name of team and project identifiers"
  type        = string
}

variable "region" {
  description = "The Amazon default region"
  type        = string
}

variable "instance_type" {
  description = "The AWS instance type"
  type        = string
}

variable "instance_count" {
  description = "Number of instances of aws EC2 servers"
  type        = number
}

#variable "key_file_path" {
#  description = "This is the path to private key managed by aws"
#  type        = string
#}

#variable "aws_team_key_id" {
#  description = "This is the aws managed key"
#  type        = string
#}

variable "team_name" {
  description = "This is the name of the team of owners."
  type        = string
}

variable "app_name" {
  description = "Default app name in Module"
  type        = string
}

variable "iam_profile_aws" {
  description = "Global IAM profile"
  type = string
}

variable "security_group_aws" {
  description = "Global security group profile"
  type = string
}

variable "tags" {
  description = "Global takes on resource"
  type = map(string)
}


