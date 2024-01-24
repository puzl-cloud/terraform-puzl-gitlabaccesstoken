# puzl.cloud Terraform module for GitLab access token management

## Overview

This Terraform module is designed to create a Kubernetes Secret object with a GitLab access token within [Cloud Pipelines Service](https://puzl.cloud/products/ci-runners-for-gitlab) by Puzl. 

The detailed description of the fields used in this module can be found in the related [GitLab access token documentation](https://docs.puzl.cloud/api/ci-runners-for-gitlab/native-kubernetes-resources/secret#gitlab-access-tokens).

## Features

- Management of Access Token Secret.
- Validation of the token type to ensure it matches one of the predefined types.

## Requirements

- Terraform v1.3.0 or higher.
- Kubernetes provider v2.23.0 or higher.

## Usage

To use this module in your Terraform environment, add the following configuration:

```hcl
locals {
  gitlab_url           = "https://gitlab.com"
  integration_name     = "gitlab-group-integration"
  root_namespace       = "root-cysexkwsk57xtlabdkyn3zpybzslt2l7frtwj5arfodtz"
  token_name           = "gitlab-group-token"
  gitlab_access_token  = var.gitlab_access_token
  token_type           = "puzl.cloud/gitlab-group-access-token"
}

module "integration" {
  source     = "puzl-cloud/gitlabpipelinesintegration/puzl"
  
  name       = local.integration_name
  namespace  = local.integration_namespace
  gitlab_url = local.gitlab_url
}

module "gitlab_access_token" {
  source               = "puzl-cloud/gitlabaccesstoken/puzl"

  name                 = local.name
  namespace            = module.integration.claim_namespace_ref
  gitlab_access_token  = local.gitlab_access_token
  token_type           = local.token_type
}
```
