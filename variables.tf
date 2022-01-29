variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "System Environment"
  default     = "development"
}

variable "service_code" {
  type        = string
  description = "Service Code for Identify"
  default     = "test_service"
}

variable "primary_consumer" {
  type        = string
  description = "Primary Consumer"
  default     = "test_consumer"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "Provisioned by Terraform"
}

variable "test_tag" {
  type = map(any)
  default = {
    tag1 = "value1"
  }
}

locals {
  cmbillinggrouptag_test = ""
}
