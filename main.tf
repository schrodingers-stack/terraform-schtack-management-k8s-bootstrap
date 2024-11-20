module "argo_cd_bootstrap" {
  source = "./modules/argo_cd_bootstrap"

  repository      = var.argo_cd_bootstrap_repository
  target_revision = var.argo_cd_bootstrap_target_revision
}

# If Terraform tries to create the `cluster_add_ons` resource right away after the `argo_cd_bootstrap` resource, 
# there is a chance it may fail complaining that the Argo CD CRDs are not yet available. We added this sleep resource
# as a workaround to give the CRDs some time to be created.
resource "time_sleep" "argo_cd_crd_wait" {
  create_duration = "10s"
  depends_on      = [module.argo_cd_bootstrap]
}

module "cluster_add_ons" {
  source = "./modules/cluster_add_ons"

  helm_values = var.cluster_add_ons_helm_values

  depends_on = [resource.time_sleep.argo_cd_crd_wait]
}
