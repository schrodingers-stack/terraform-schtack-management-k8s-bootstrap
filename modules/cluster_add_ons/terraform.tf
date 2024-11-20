terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.13.2"
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.12.1"
    }
  }
}
