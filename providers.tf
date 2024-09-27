terraform {
  required_providers {
    equinix = {
      source = "equinix/equinix"
    }
  }
}       


provider equinix {
  client_id     = var.equinix_client_id
  client_secret = var.equinix_client_secret
  auth_token = var.auth_token
}