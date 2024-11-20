# TODO Add a way to create a secret for repository credentials

# TODO Add a way to add a private repo to Argo CD

# TODO Add a way to pass some common values to all the applications



resource "helm_release" "cluster_add_ons" {
  name      = "management-cluster-add-ons"
  chart     = "${path.module}/chart"
  namespace = "argo-cd"

  values = var.helm_values != null ? [var.helm_values] : []
}
