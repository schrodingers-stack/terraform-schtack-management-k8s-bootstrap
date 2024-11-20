# The providers here that come from the child modules are repeated but do not contain any version constraints.

terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
    helm = {
      source = "hashicorp/helm"
    }
    time = {
      source = "hashicorp/time"
    }
    utils = {
      source = "cloudposse/utils"
    }
  }
}
