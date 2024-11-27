# The providers here that come from the child modules are repeated but do not contain any version constraints.

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 6.2.1"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.13.2"
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.12.1"
    }
    utils = {
      source  = "cloudposse/utils"
      version = ">= 1.22.0"
    }
  }
}
