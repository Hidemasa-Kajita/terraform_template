## install
- tfenv
- tflint
- tfsec
- terrascan
- pre-commit
- infracost
- terraform-docs
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.3.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.39.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.39.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_config"></a> [config](#module\_config) | ./config | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/4.39.0/docs/resources/internet_gateway) | resource |
| [aws_vpc.this](https://registry.terraform.io/providers/hashicorp/aws/4.39.0/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_key"></a> [aws\_key](#input\_aws\_key) | AWS Keys | <pre>object({<br>    access_key = string<br>    secret_key = string<br>  })</pre> | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | enviroment | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
