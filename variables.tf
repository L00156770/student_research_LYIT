# Input variable definitions

variable "environment_prefix" {
  description = "This is the environment where your webapp is deployed."
  type = string
}

variable "tenant" {
  description = "This is the relational space owner name"
  type = string
}

/*------------------------------------------
variable "ami_id" {
  description = "The AWS AMI utilized for this project"
  type        = string
  default     = "ami-0f7919c33c90f5b58"
}

variable "region" {
  description = "The AWS default region"
  type        = string
  default = "us-east-2"
}

variable "instance_type" {
  description = "The AWS EC2 instance type"
  type        = string
  default = "t2.micro"
}

variable "instance_count" {
  description = "The AWS EC2 instance count"
  type        = number
  default = "1"
}

variable "key_file_path" {
  description = "This is the path to private key managed by aws"
  type        = string
  default     = "~/Downloads/enterprivkey.pem"
}

variable "aws_team_key_id" {
  description = "This is the aws managed key"
  type        = string
  default     = "enterpubkeyhere"
}

variable "team_name" {
  description = "This is the name of the team of owners."
  type        = string
  default     = "My_Research_Project"
}

variable "app_name" {
  description = "Path to the certificate key used to verify incoming connections."
  type        = string
  default     = "Terraforming"
}

variable "prefix" {
  description = "This is the environment where your webapp is deployed."
  type = string
  default = "dev"
}

variable "iam_profile_aws" {
  description = "This is the available IAM profile"
  type = string
  default = "AmazonSSMRoleForInstancesQuickSetup"
}

variable "security_group_aws" {
  description = "This is the available IAM profile"
  type = string
  default = "launch-wizard-3"
}

variable "tags" {
  description = "Custom tags for assignment"
  type = map(string)
  default = {
        Name = "Terraform-Test-Master",
        Inspector = "InspectorEC2InstanceLinux"
  }
}
*/
