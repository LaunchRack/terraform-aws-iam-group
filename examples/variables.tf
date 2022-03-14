variable "region" {
  description = "The region to provision resources in."
  type        = string
}

variable "name" {
  description = "Name of IAM group."
  type        = string
}

variable "group_users" {
  description = "List of IAM users to have in an IAM group which can assume the role."
  type        = list(string)
}

variable "custom_group_policy_arns" {
  description = "List of IAM policies ARNs to attach to IAM group."
  type        = list(string)
}

variable "tags" {
  description = "A map of tags for the resources."
  type        = map(string)
}
