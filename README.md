# terraform-aws-irsa

A Terraform module that creates an AWS IAM Role for a Kubernetes service account

# Terraform Docs

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | A description for the role | `string` | `null` | no |
| <a name="input_force_detach_policies"></a> [force\_detach\_policies](#input\_force\_detach\_policies) | Whether to forcibly detach all policies from the role before deletion | `bool` | `null` | no |
| <a name="input_iam_path"></a> [iam\_path](#input\_iam\_path) | A path to assign to the IAM resources created by this module | `string` | `null` | no |
| <a name="input_iam_prefix"></a> [iam\_prefix](#input\_iam\_prefix) | A prefix to assign to the IAM resources created by this module | `string` | `null` | no |
| <a name="input_idp_arn"></a> [idp\_arn](#input\_idp\_arn) | The ARN of the IAM identity provider to create this role for | `string` | n/a | yes |
| <a name="input_idp_url"></a> [idp\_url](#input\_idp\_url) | The URL of the identity provider to create this role for | `string` | n/a | yes |
| <a name="input_inline_policies"></a> [inline\_policies](#input\_inline\_policies) | Inline policies to attach to the role | <pre>list(object({<br>    name   = string<br>    policy = string<br>  }))</pre> | `[]` | no |
| <a name="input_managed_policy_arns"></a> [managed\_policy\_arns](#input\_managed\_policy\_arns) | ARNs of AWS managed policies to attach to this role | `list(string)` | `[]` | no |
| <a name="input_max_session_duration"></a> [max\_session\_duration](#input\_max\_session\_duration) | Maximum duration of sessions for this role, in seconds | `number` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Kubernetes service account | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The name of the Kubernetes namespace containing the Kubernetes service account | `string` | n/a | yes |
| <a name="input_permissions_boundary"></a> [permissions\_boundary](#input\_permissions\_boundary) | The ARN of a policy to use as a permissions boundary for this role | `string` | `null` | no |
| <a name="input_policy_attachments"></a> [policy\_attachments](#input\_policy\_attachments) | Attachments between this role and policies created elsewhere | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the role | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_description"></a> [description](#output\_description) | The value provided in var.description |
| <a name="output_force_detach_policies"></a> [force\_detach\_policies](#output\_force\_detach\_policies) | The value provided in var.force\_detach\_policies |
| <a name="output_iam_path"></a> [iam\_path](#output\_iam\_path) | The value provided in var.iam\_path |
| <a name="output_iam_prefix"></a> [iam\_prefix](#output\_iam\_prefix) | The value provided in var.iam\_prefix |
| <a name="output_idp_arn"></a> [idp\_arn](#output\_idp\_arn) | The value provided in var.idp\_arn |
| <a name="output_idp_url"></a> [idp\_url](#output\_idp\_url) | The value provided in var.idp\_url |
| <a name="output_inline_policies"></a> [inline\_policies](#output\_inline\_policies) | The value provided in var.inline\_policies |
| <a name="output_managed_policy_arns"></a> [managed\_policy\_arns](#output\_managed\_policy\_arns) | The value provided in var.managed\_policy\_arns |
| <a name="output_max_session_duration"></a> [max\_session\_duration](#output\_max\_session\_duration) | The value provided in var.max\_session\_duration |
| <a name="output_name"></a> [name](#output\_name) | The value provided in var.name |
| <a name="output_namespace"></a> [namespace](#output\_namespace) | The value provided in var.namespace |
| <a name="output_permissions_boundary"></a> [permissions\_boundary](#output\_permissions\_boundary) | The value provided in var.permissions\_boundary |
| <a name="output_policy_attachments"></a> [policy\_attachments](#output\_policy\_attachments) | The value provided in var.policy\_attachments |
| <a name="output_tags"></a> [tags](#output\_tags) | The value provided in var.tags |
