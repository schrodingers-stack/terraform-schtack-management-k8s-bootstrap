# NOTE: the variables in this file are organized in alphabetical order.

variable "argo_cd_bootstrap_repository" {
  description = "The GitHub repository where the `Chart.yaml` and `values.yaml` files for Argo CD are to be retrieved."
  type        = string
  nullable    = false
  default     = "schrodingers-stack/helm-argo-cd"
}

variable "argo_cd_bootstrap_target_revision" {
  description = "The branch or tag of the repository where the `Chart.yaml`and `values.yaml` files for Argo CD are to be retrieved."
  type        = string
  nullable    = false
}

variable "argo_cd_namespace" {
  description = "The namespace where the Argo CD will be installed."
  type        = string
  nullable    = false
  default     = "argo-cd"
}

variable "parent_app_helm_values" {
  description = <<-EOT
    The values to be passed to the `management-k8s-app-of-apps` Helm chart. These should be in raw YAML format.

    Check out the `values.yaml` file in the `management-k8s-app-of-apps` directory for the available options.

    [IMPORTANT]
    ====
    Note the `childAppsGeneratorChartValues` key. This is where you pass the Helm values used to configure the downstream Helm chart that manages the children applications / cluster-add-ons.

    Unless you override the `childAppsGeneratorChartRepo`, this chart will typically be https://github.com/schrodingers-stack/helm-schtack-add-ons-bootstrap[this one]. Please consult it's `values.yaml` file for the available options.
    ====

    [NOTE]
    ====
    We know this is probably an over-engineered solution and a lot of levels of configuration. However, these charts configurations are never meant to be frequently changed, and we believe this is a good trade-off for the sake of flexibility and maintainability.
    ====
  EOT
  type        = string
  default     = null
}
