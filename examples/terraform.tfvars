region = "us-east-1"
name   = "CognitoReadOnly"
group_users = [
  "alice",
  "bob",
]
custom_group_policy_arns = [
  "arn:aws:iam::aws:policy/AmazonCognitoReadOnly",
]
tags        = {
  BusinessUnit = "tools"
  Application  = "cicd"
}
