resource "helm_release" "cluster_add_ons" {
  name      = "management-cluster-add-ons"
  chart     = "${path.module}/chart"
  namespace = "argo-cd"

  values = var.helm_values != null ? [var.helm_values] : []
}
