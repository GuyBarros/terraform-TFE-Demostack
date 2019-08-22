provider "tfe" {
  version  = "0.9.1"
  hostname = var.TFE_HOSTNAME
}

data "tfe_workspace" "demostack" {
  name         = var.TFE_WORKSPACE
  organization = var.TFE_ORGANIZATION
}

module "base" {
  source        = "./modules/base"
  owner         = var.owner
  TTL           = var.TTL
  servers       = var.servers
  workers       = var.workers
  enterprise    = var.enterprise
  vaultlicense  = var.vaultlicense
  consullicense = var.consullicense
  workspace_id  = data.tfe_workspace.demostack.id
}

module "links" {
  source       = "./modules/links"
  consul_url   = var.consul_url
  consul_ent_url = var.consul_ent_url
  fabio_url = var.fabio_url
  hashiui_url = var.hashiui_url
  nomad_url = var.nomad_url
  nomad_ent_url = var.nomad_ent_url
  vault_url = var.vault_url
  vault_ent_url = var.vault_ent_url
  workspace_id = data.tfe_workspace.demostack.id
}

##########################################################################
# Comment out the provider you don't want to deploy
/*
module "aws" {
  source       = "./modules/aws"
  primary_namespace    = var.primary_namespace
  secondary_namespace  = var.secondary_namespace
  tertiary_namespace   = var.tertiary_namespace
  primary_region       = var.primary_region
  secondary_region     = var.secondary_region
  tertiary_region      = var.tertiary_region
  instance_type_server = var.instance_type_server
  instance_type_worker = var.instance_type_worker
  public_key           = var.public_key
  zone_id              = var.zone_id
  workspace_id         = data.tfe_workspace.demostack.id
}

module "azure" {
  source       = "./modules/azure"
  resource_group  = var.resource_group
  demo_prefix     = var.demo_prefix
  hostname        = var.hostname
  location        = var.location
  admin_username  = var.admin_username
  admin_password  = var.admin_password
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
   workspace_id = data.tfe_workspace.demostack.id
}
*/
module "gcp" {
  source             = "./modules/gcp"
  gcp_region         = var.gcp_region
  gcp_project        = var.gcp_project
  google_credentials = var.google_credentials
  workspace_id = data.tfe_workspace.demostack.id
}
