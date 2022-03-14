terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = "~> 1.0"
}

provider "aws" {
  region = var.region
}

module "aws_iam_group" {
  source = "../"

  name                     = var.name
  group_users              = var.group_users
  custom_group_policy_arns = var.custom_group_policy_arns
}
