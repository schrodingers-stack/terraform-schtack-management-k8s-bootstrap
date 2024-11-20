module "argo_cd_bootstrap" {
  source = "./modules/argo_cd_bootstrap"

  repository      = var.argo_cd_bootstrap_repository
  target_revision = var.argo_cd_bootstrap_target_revision
}

module "cluster_add_ons" {
  source = "./modules/cluster_add_ons"

  helm_values = var.cluster_add_ons_helm_values
}
