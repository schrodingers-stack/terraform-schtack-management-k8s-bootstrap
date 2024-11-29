# TODO Maybe variabilize the release name and namespace? This will require that all other resources that depend on this resource also have the same variables.
resource "helm_release" "argo_cd_bootstrap" {
  name = "argo-cd"

  repository = yamldecode(data.github_repository_file.chart_definition.content).dependencies[0].repository
  chart      = yamldecode(data.github_repository_file.chart_definition.content).dependencies[0].name
  version    = yamldecode(data.github_repository_file.chart_definition.content).dependencies[0].version

  namespace        = var.argo_cd_namespace
  create_namespace = true
  # FIXME Find a better way to get only the values inside the `argo-cd` key.
  values = [yamlencode(yamldecode(data.utils_deep_merge_yaml.values.output).argo-cd)]

  lifecycle {
    # Ignore all changes after the bootstrap, since the Argo CD application will manage itself later on.
    ignore_changes = all
  }
}

# If Terraform tries to create the `cluster_add_ons` resource right away after the `argo_cd_bootstrap` resource, 
# there is a chance it may fail complaining that the Argo CD CRDs are not yet available. We added this sleep resource
# as a workaround to give the CRDs some time to be created.
resource "time_sleep" "argo_cd_crd_wait" {
  create_duration = "10s"
  depends_on      = [resource.helm_release.argo_cd_bootstrap]
}

resource "helm_release" "app_of_apps" {
  name      = "management-k8s-app-of-apps"
  chart     = "${path.module}/management-k8s-app-of-apps"
  namespace = var.argo_cd_namespace

  values = var.parent_app_helm_values != null ? [var.parent_app_helm_values] : []

  depends_on = [resource.time_sleep.argo_cd_crd_wait]
}
