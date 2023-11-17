resource "kubernetes_manifest" "gitlabaccesstoken" {
  manifest = {
    apiVersion = "v1"
    kind       = "Secret"
    metadata = {
      name      = var.name
      namespace = var.namespace
    }
    type = var.token_type
    data = {
      token = base64encode(var.gitlab_access_token)
    }
  }
}
