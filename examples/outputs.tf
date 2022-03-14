output "aws_account_id" {
  description = "IAM AWS account id."
  value       = module.aws_iam_group.aws_account_id
}

output "this_group_users" {
  description = "List of IAM users in IAM group."
  value       = module.aws_iam_group.this_group_users
}

output "this_group_name" {
  description = "IAM group name."
  value       = module.aws_iam_group.this_group_name
}
