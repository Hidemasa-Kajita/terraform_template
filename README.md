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

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_config"></a> [config](#module\_config) | ./config | n/a |
| <a name="module_domain"></a> [domain](#module\_domain) | ./domain | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_key"></a> [aws\_key](#input\_aws\_key) | AWS Keys | <pre>object({<br>    access_key = string<br>    secret_key = string<br>  })</pre> | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | root and sub domain name from "名前.com" | <pre>object({<br>    root = string<br>    sub  = string<br>  })</pre> | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | enviroment | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | aws region | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
