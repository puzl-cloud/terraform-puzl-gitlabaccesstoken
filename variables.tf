variable "name" {
  description = "Name of the secret to create"
  type        = string
}

variable "namespace" {
  description = "Kubernetes namespace where the secret should be created"
  type        = string
}

variable "gitlab_access_token" {
  description = "GitLab access token for the secret"
  type        = string
}

variable "token_type" {
  description = "Type of the GitLab token (e.g., 'puzl.cloud/gitlab-personal-access-token', 'puzl.cloud/gitlab-project-access-token', 'puzl.cloud/gitlab-group-access-token')"
  type        = string
  default     = null

  validation {
    condition     = contains(["puzl.cloud/gitlab-personal-access-token", "puzl.cloud/gitlab-project-access-token", "puzl.cloud/gitlab-group-access-token"], var.token_type)
    error_message = "The token_type must be 'puzl.cloud/gitlab-personal-access-token', 'puzl.cloud/gitlab-project-access-token', or 'puzl.cloud/gitlab-group-access-token'."
  }
}
