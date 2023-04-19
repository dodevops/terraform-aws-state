# terraform-aws-state

## Introduction

This module manages terraform state backends in AWS.

## Usage

Instantiate the module by calling it from Terraform like this:

```hcl
module "aws-eks" {
  source = "dodevops/state/aws"
  version = "<version>"
  
  (...)
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

The following requirements are needed by this module:

- terraform (>= 0.12)

- aws (>=3.33.0)

## Providers

The following providers are used by this module:

- aws (>=3.33.0)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [aws_dynamodb_table.dynamodb-table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) (resource)
- [aws_s3_bucket.s3-bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) (resource)

## Required Inputs

The following input variables are required:

### project

Description: Three letter project key

Type: `string`

### stage

Description: Name of the stage for this state

Type: `string`

## Optional Inputs

No optional inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Development

Use [the terraform module tools](https://github.com/dodevops/terraform-module-tools) to check and generate the documentation by running

    docker run -v "$PWD":/terraform ghcr.io/dodevops/terraform-module-tools:latest
