# Example Usage of GitLab Access Token Module

This example demonstrates how to use the GitLab Access Token Terraform module.

## Usage

### Apply

1. Create credetial on https://gitlab-pipelines.puzl.cloud/dashboard
1. Create a gitlab access token on GitLab instance.
2. Update the `main.tf` file with your specific details, such as namespace.
3. Set `KUBE_HOST`, `KUBE_TOKEN` and `TF_VAR_gitlab_access_token` enviroment varibale.
4. Initialize the Terraform environment:

```bash
terraform init
terraform plan
```

5. Apply the Terraform configuration:

```bash
terraform apply
```

## Cleanup

To remove the deployed resources, run:

```bash
terraform destroy
```
