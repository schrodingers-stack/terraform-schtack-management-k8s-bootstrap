data "github_repository_file" "chart_definition" {
  repository = var.argo_cd_bootstrap_repository
  branch     = var.argo_cd_bootstrap_target_revision
  file       = "Chart.yaml"
}

data "github_repository_file" "values_common" {
  repository = var.argo_cd_bootstrap_repository
  branch     = var.argo_cd_bootstrap_target_revision
  file       = "values-common.yaml"
}

data "github_repository_file" "values_bootstrap" {
  repository = var.argo_cd_bootstrap_repository
  branch     = var.argo_cd_bootstrap_target_revision
  file       = "values-bootstrap.yaml"
}

data "utils_deep_merge_yaml" "values" {
  input = [
    data.github_repository_file.values_common.content,
    data.github_repository_file.values_bootstrap.content,
  ]
  append_list = true
}
