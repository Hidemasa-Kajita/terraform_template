# config

環境ごとの設定値を管理するモジュール。
`terraform.tfvars`で管理している値は、直接参照せずに、`config`module を経由する.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_locals"></a> [locals](#module\_locals) | ./locals | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | enviroment | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
