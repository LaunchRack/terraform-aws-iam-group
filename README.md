<p align="center">
  <a href="https://launchrack.com/" target="_blank" rel="homepage">
  <img src="https://launchrack.com/assets/img/logo_launchrack.png" alt="LaunchRack logo" style="width: 600px;" class="d-md-inline-block">
  </a>
</p>
<br>
<br>
<p><h4 align="center">Need help with Cloud-Native DevOps? <a href="https://launchrack.com/contact/" target="_blank" rel="contactus"> GET IN TOUCH</a></h4></p>

---

# Terraform AWS IAM group

[![GitHub license](https://img.shields.io/github/license/launchrack/terraform-aws-iam-group?color=blue)](https://github.com/LaunchRack/terraform-aws-iam-group/blob/main/LICENSE)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/launchrack/terraform-aws-iam-group?color=blue&display_name=release)

Creates IAM group, IAM group policy, IAM self attach policy and provides IAM group membership. All of these are optional resources.

**Attribution:** This module is a slightly improvised version of the [community repository](https://github.com/terraform-aws-modules/terraform-aws-iam/tree/master/modules/iam-group-with-policies)

## Features
- Creates IAM group
- Creates IAM custom group policy
- Creates IAM self attach policy
- Provides IAM group membership

## Usage
```hcl
module "aws_iam_group" {
  source = "git::https://github.com/LaunchRack/terraform-aws-iam-group.git"

  name   = "CognitoReadOnly"

  group_users = [
    alice,
    bob,
  ]

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonCognitoReadOnly",
  ]
}
```

## Setup Instructions
`terraform init`

`terraform plan` # use `-var-file=terraform.tfvars` if you plan to use a different file for the value overrides. See [examples](https://github.com/LaunchRack/terraform-aws-iam-group/blob/main/examples/terraform.tfvars) folder

`terraform apply -auto-approve` # use `-var-file=terraform.tfvars` if you plan to use a different file for the value overrides. See [examples](https://github.com/LaunchRack/terraform-aws-iam-group/blob/main/examples/terraform.tfvars) folder

> **Note:** The `terraform.tfvars` file will need to be created in the root directory with value overrides

## Inputs
| Name | Description | Type | Default | Required |
| ----------- | ----------- | ----------- | ----------- | ----------- |
| attach_iam_self_management_policy | Whether to attach IAM policy which allows IAM users to manage their credentials and MFA. | `bool` | `"true"` | no |
| aws_account_id | AWS account id to use inside IAM policies. If empty, current AWS account ID will be used. | `string` | `""` | no |
| create_group | Whether to create IAM group. | `bool` | `"true"` | no |
| custom_group_policies | List of maps of inline IAM policies to attach to IAM group. Should have `name` and `policy` keys in each element. | `list(map(string))` | `[]` | no |
| custom_group_policy_arns | List of IAM policies ARNs to attach to IAM group. | `list(string)` | `[]` | no |
| group_users | List of IAM users to have in an IAM group which can assume the role. | `list(string)` | `[]` | no |
| iam_self_management_policy_name_prefix | Name prefix for IAM policy to create with IAM self-management permissions. | `string` | `"IAMSelfManagement-"` | no |
| name | Name of IAM group | `string` | `""` | yes |

## Outputs
| Name | Description |
| ----------- | ----------- |
| aws_account_id | IAM AWS account id. |
| this_group_name | IAM group name. |
| this_group_users | List of IAM users in IAM group. |

## Authors
This module is maintained by our awsome platform engineering team. Here are our [contributors](https://github.com/LaunchRack/terraform-aws-iam-group/graphs/contributors)

## License
See [LICENSE](https://github.com/LaunchRack/terraform-aws-iam-group/blob/master/LICENSE) for full details

## Trademarks
All other trademarks referenced herein are the property of their respective owners
