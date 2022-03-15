<p align="center">
  <a href="https://launchrack.com/" target="_blank" rel="homepage">
  <img src="https://launchrack.com/assets/img/logo_launchrack.png" alt="LaunchRack logo" style="width: 600px;" class="d-md-inline-block">
  </a>
</p>

<p>
We are huge followers of the <b>Cloud-Native DevOps</b> movement and are firm believers in the power of treating <b>Infrastructure as Code</b> using immutable architecture & <b>GitOps</b> style deployments. We adhere to a strict automation mindset (automation first, as opposed to manual first with automation later) and strive to provide the best technical acumen that will enable organizations improve <b>Cloud Security</b> Posture, <b>Release</b> More Often, <b>Scale</b> with Demand, Brace <b>Agility</b>, Operate within <b>Budget</b> and focus on value derived by the time saved on the execution of a task rather than having to spend cycles on design & tool selection.
</p>

<p>
  <h4 style="text-align: left"> 
    Our consistent and automated processes can help you improve:
  </h4>
</p>

<p style="text-align: left;">
✔ Better <b>utilization</b> of cloud resources by 40% <br>
✔ Self-service infrastructure <b>provisioning</b> by 35% <br>
✔ <b>Security</b> and governance by 30% <br>
✔ Return on value/investment by 20% <br>
✔ Team management & <b>governance</b> by 15% <br>
✔ Earlier <b>detection</b> of bugs by 32% <br>
✔ Response to issues/events by 23% <br>
</p>

<p>
  <h4 align="center">
    Chat more?
    <a href="mailto:info@launchrack.com">Email</a>
    <span style="color:white"> | </span> 
    <a href="https://launchrack.com/contact/" target="_blank">Contact us</a>
  </h4>
</p>
<p align="center">
     <a href="https://www.linkedin.com/company/launchrack"> 
     <img alt="linkedin logo" src="https://user-images.githubusercontent.com/100512415/158441415-f399bf91-f65a-4568-8882-2785715c86b0.png" style="height: 20px;width: 20px;"/>
     </a>
     <a href="https://www.twitter.com/launchrack">
     <img alt="twitter logo" src="https://user-images.githubusercontent.com/100512415/158441443-3851792d-2a40-47f6-a45a-7f576134797b.png" style="height: 20px;width: 20px;"/>
     </a>
     <a href="https://www.facebook.com/launchrack">
     <img alt="facebook logo" src="https://user-images.githubusercontent.com/100512415/158447347-2068d8c1-80fa-4f15-a9a0-7aeff94a7fd9.png" style="height: 20px;width: 20px;"/>
     </a>
</p>

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

  tags        = {
    BusinessUnit = "tools"
    Application  = "cicd"
  }
}
```

## Setup Instructions
`terraform init`

`terraform plan` # use `-var-file=terraform.tfvars` if you plan to use a different file for the value overrides. See [examples](https://github.com/LaunchRack/terraform-aws-iam-group/blob/main/examples/terraform.tfvars) folder

`terraform apply -auto-approve` # use `-var-file=terraform.tfvars` if you plan to use a different file for the value overrides. See [examples](https://github.com/LaunchRack/terraform-aws-iam-group/blob/main/examples/terraform.tfvars) folder

> **Note:** The `terraform.tfvars` file will need to be created in the root directory with value overrides

## Requirements
| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | ~> 4.0 |
| <a name="requirement_local"></a> [local](#requirement_local) | ~> 2.0 |
| <a name="requirement_null"></a> [null](#requirement_null) | ~> 3.0 |

## Providers
| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider_aws) | ~> 4.0 |

## Resources
| Name | Type |
|------|------|
| [aws_iam_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_membership.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership) | resource |
| [aws_iam_group_policy_attachment.custom](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_group_policy_attachment.custom_arns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_group_policy_attachment.iam_self_management](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_policy.custom](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.iam_self_management](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.iam_self_management](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attach_iam_self_management_policy"></a> [attach_iam_self_management_policy](#input_attach_iam_self_management_policy) | Whether to attach IAM policy which allows IAM users to manage their credentials and MFA. | `bool` | `true` | no |
| <a name="input_aws_account_id"></a> [aws_account_id](#input_aws_account_id) | AWS account id to use inside IAM policies. If empty, current AWS account ID will be used. | `string` | `""` | no |
| <a name="input_create_group"></a> [create_group](#input_create_group) | Whether to create IAM group. | `bool` | `true` | no |
| <a name="input_custom_group_policies"></a> [custom_group_policies](#input_custom_group_policies) | List of maps of inline IAM policies to attach to IAM group. Should have `name` and `policy` keys in each element. | `list(map(string))` | `[]` | no |
| <a name="input_custom_group_policy_arns"></a> [custom_group_policy_arns](#input_custom_group_policy_arns) | List of IAM policies ARNs to attach to IAM group. | `list(string)` | `[]` | no |
| <a name="input_group_users"></a> [group_users](#input_group_users) | List of IAM users to have in an IAM group which can assume the role. | `list(string)` | `[]` | no |
| <a name="input_iam_self_management_policy_name_prefix"></a> [iam_self_management_policy_name_prefix](#input_iam_self_management_policy_name_prefix) | Name prefix for IAM policy to create with IAM self-management permissions. | `string` | `"IAMSelfManagement-"` | no |
| <a name="input_name"></a> [name](#input_name) | Name of IAM group. | `string` | `""` | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags for the resources. | `map(string)` | `{}` | no |


## Outputs
| Name | Description |
|------|-------------|
| <a name="output_aws_account_id"></a> [aws_account_id](#output_aws_account_id) | IAM AWS account id. |
| <a name="output_this_group_name"></a> [this_group_name](#output_this_group_name) | IAM group name. |
| <a name="output_this_group_users"></a> [this_group_users](#output_this_group_users) | List of IAM users in IAM group. |

## Authors
This module is maintained by our awsome platform engineering team. Here are our [contributors](https://github.com/LaunchRack/terraform-aws-iam-group/graphs/contributors)

## License
See [LICENSE](https://github.com/LaunchRack/terraform-aws-iam-group/blob/master/LICENSE) for full details

## Trademarks
All other trademarks referenced herein are the property of their respective owners
