#############
# GCP
#############
resource "tfe_workspace" "demostack" {
  name         = var.TFE_GCP_DEMOSTACK_WORKSPACE
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
# Terraform Variables

resource "tfe_variable" "gcp_project" {
  key          = "gcp_project"
  value        = var.gcp_project
  category     = "terraform"
  sensitive    = false
  workspace_id =  tfe_workspace.demostack.id
}

resource "tfe_variable" "gcp_region" {
  key          = "gcp_region"
  value        = var.gcp_region
  category     = "terraform"
  sensitive    = false
  workspace_id =  tfe_workspace.demostack.id
}

# Environment Variables
resource "tfe_variable" "GOOGLE_CREDENTIALS" {
  key          = "GOOGLE_CREDENTIALS"
  value        = var.GOOGLE_CREDENTIALS
  category     = "env"
  sensitive    = false
  workspace_id =  tfe_workspace.demostack.id
}

output "gcp_projet_var_id" {
  value = "tfe_variable.gcp.project.id"
}
