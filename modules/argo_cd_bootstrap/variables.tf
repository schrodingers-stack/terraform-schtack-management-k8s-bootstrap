# NOTE: the variables in this file are organized in alphabetical order.

variable "repository" {
  type        = string
  nullable    = false
  description = "The GitHub repository where the `Chart.yaml` and `values.yaml` files are to be retrieved. Corresponds to the `argo_cd_bootstrap_repository` variable in the root module."
}

variable "target_revision" {
  type        = string
  nullable    = false
  description = "The branch or tag of the repository where the `Chart.yaml`and `values.yaml` files are to be retrieved. Corresponds to the `argo_cd_bootstrap_target_revision` variable in the root module."
}
