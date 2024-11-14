module "argo_cd_bootstrap" {
  source = "./modules/argo_cd_bootstrap"

  repository      = var.argo_cd_bootstrap_repository
  target_revision = var.argo_cd_bootstrap_target_revision
}

