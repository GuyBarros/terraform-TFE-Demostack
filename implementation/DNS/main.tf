terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "GuyBarros"
    workspaces {
      name =  "Guy-DNS-Zone"
    }
  }
}


module "dns" {
  //count   = var.create_dns ? 1 : 0
  source                = "git::https://github.com/GuyBarros/terraform-dns-multicloud"
  owner                 = var.owner
  hosted-zone           = var.hosted-zone
  namespace             = var.namespace
  created-by            = var.created-by
  create_aws_dns_zone   = var.create_aws_dns_zone
  create_azure_dns_zone = var.create_azure_dns_zone
  create_gcp_dns_zone   = var.create_gcp_dns_zone
  gcp_project           = var.gcp_project
 }