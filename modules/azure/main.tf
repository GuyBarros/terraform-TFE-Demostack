
#############
# AZURE
#############
resource "tfe_workspace" "demostack" {
  name         = var.TFE_AZURE_DEMOSTACK_WORKSPACE
  organization = var.TFE_ORGANIZATION
  }


module "base" {
  source         = "../base"
  owner          = var.owner
  TTL            = var.TTL
  servers        = var.servers
  workers        = var.workers
  enterprise     = var.enterprise
  vaultlicense   = var.vaultlicense
  consullicense  = var.consullicense
  nomadlicense   = var.nomadlicense
  run_nomad_jobs = var.run_nomad_jobs
  primary_datacenter = var.primary_datacenter
  workspace_id   = tfe_workspace.demostack.id
}

module "urls" {
  source         = "../urls"
  consul_url     = var.consul_url
  consul_ent_url = var.consul_ent_url
  fabio_url      = var.fabio_url
  nomad_url      = var.nomad_url
  nomad_ent_url  = var.nomad_ent_url
  vault_url      = var.vault_url
  vault_ent_url  = var.vault_ent_url
  cni_plugin_url = var.cni_plugin_url
  workspace_id   = tfe_workspace.demostack.id
}

resource "tfe_variable" "resource_group" {
  key          = "resource_group"
  value        = var.resource_group
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.demostack.id
}

resource "tfe_variable" "demo_prefix" {
  key          = "demo_prefix"
  value        = var.demo_prefix
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.demostack.id
}

resource "tfe_variable" "hostname" {
  key          = "hostname"
  value        = var.hostname
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.demostack.id
}

resource "tfe_variable" "location" {
  key          = "location"
  value        = var.location
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.demostack.id
}

resource "tfe_variable" "admin_username" {
  key          = "admin_username"
  value        = var.admin_username
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.demostack.id
}

resource "tfe_variable" "admin_password" {
  key          = "admin_password"
  value        = var.admin_password
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.demostack.id
}

resource "tfe_variable" "subscription_id" {
  key          = "subscription_id"
  value        = var.subscription_id
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.demostack.id
}

resource "tfe_variable" "tenant_id" {
  key          = "tenant_id"
  value        = var.tenant_id
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.demostack.id
}

resource "tfe_variable" "client_id" {
  key          = "client_id"
  value        = var.client_id
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.demostack.id
}

resource "tfe_variable" "client_secret" {
  key          = "client_secret"
  value        = var.client_secret
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.demostack.id
}