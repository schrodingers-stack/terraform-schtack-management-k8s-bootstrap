# NOTE: the variables in this file are organized in alphabetical order.

variable "argo_cd_bootstrap_repository" {
  type        = string
  nullable    = false
  default     = "schrodingers-stack/helm-argo-cd"
  description = "The GitHub repository where the `Chart.yaml` and `values.yaml` files for Argo CD are to be retrieved."
}

variable "argo_cd_bootstrap_target_revision" {
  type        = string
  nullable    = false
  description = "The branch or tag of the repository where the `Chart.yaml`and `values.yaml` files for Argo CD are to be retrieved."
}

variable "cluster_add_ons_helm_values" {
  type        = string
  nullable    = true
  description = <<-EOT
    The values to be passed to the `management-k8s-add-ons` Helm chart. These should be in raw YAML format.

    Check out the `values.yaml` file in the `chart` directory of the `cluster_add_ons` submodule for the available options.
  EOT
}
