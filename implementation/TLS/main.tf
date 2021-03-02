terraform {
  backend "remote" {
    
  }
}

module "tls_root" {
  // count   = var.create_tls_root ? 1 : 0
  source           = "git::https://github.com/GuyBarros/terraform-tls-certificate"
  validity_period_hours  = var.validity_period_hours
  organization           = var.organization
  is_ca_certificate      = var.is_ca_certificate
  ecdsa_curve            = var.ecdsa_curve
  common_name            = var.common_name
  algorithm              = var.algorithm
}