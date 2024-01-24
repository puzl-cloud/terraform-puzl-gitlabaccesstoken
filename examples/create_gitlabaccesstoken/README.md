# Example Usage of puzl.cloud module for GitLab access token management

## Usage

### Apply

1. Create credetials on https://console.puzl.cloud.
2. Issue new GitLab access token with [project](https://docs.gitlab.com/ee/user/project/settings/project_access_tokens.html), [group](https://docs.gitlab.com/ee/user/group/settings/group_access_tokens.html) or instance type.
3. Update the `main.tf` file with your specific details, such as namespace.
4. Set `KUBE_HOST`, `KUBE_TOKEN` and `TF_VAR_gitlab_access_token` enviroment varibale.
5. Initialize the Terraform environment:

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
