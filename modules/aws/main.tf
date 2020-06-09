
#############
# AWS
#############
resource "tfe_workspace" "demostack" {
  name         = var.TFE_AWS_DEMOSTACK_WORKSPACE
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

resource "tfe_variable" "primary_namespace" {
  key          = "primary_namespace"
  value        = var.primary_namespace
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.demostack.id
}

resource "tfe_variable" "secondary_namespace" {
  key          = "secondary_namespace"
  value        = var.secondary_namespace
  category     = "terraform"
  sensitive    = false
  workspace_id =tfe_workspace.demostack.id
}

resource "tfe_variable" "tertiary_namespace" {
  key          = "tertiary_namespace"
  value        = var.tertiary_namespace
  category     = "terraform"
  sensitive    = false
  workspace_id =tfe_workspace.demostack.id
}



resource "tfe_variable" "primary_region" {
  key          = "primary_region"
  value        = var.primary_region
  category     = "terraform"
  sensitive    = false
  workspace_id =tfe_workspace.demostack.id
}


resource "tfe_variable" "secondary_region" {
  key          = "secondary_region"
  value        = var.secondary_region
  category     = "terraform"
  sensitive    = false
  workspace_id =tfe_workspace.demostack.id
}

resource "tfe_variable" "tertiary_region" {
  key          = "tertiary_region"
  value        = var.tertiary_region
  category     = "terraform"
  sensitive    = false
  workspace_id =tfe_workspace.demostack.id
}

resource "tfe_variable" "instance_type_server" {
  key          = "instance_type_server"
  value        = "t2.medium"
  category     = "terraform"
  sensitive    = false
  workspace_id =tfe_workspace.demostack.id
}

resource "tfe_variable" "instance_type_worker" {
  key          = "instance_type_worker"
  value        = "t2.medium"
  category     = "terraform"
  sensitive    = false
  workspace_id =tfe_workspace.demostack.id
}

  
resource "tfe_variable" "public_key" {
  key          = "public_key"
  value        = var.public_key
  category     = "terraform"
  sensitive    = false
  workspace_id =tfe_workspace.demostack.id
}

resource "tfe_variable" "zone_id" {
  key          = "zone_id"
  value        = var.zone_id
  category     = "terraform"
  sensitive    = false
  workspace_id =tfe_workspace.demostack.id
}

resource "tfe_variable" "host_access_ip" {
  key          = "host_access_ip"
  value        = "[${var.host_access_ip}]"
  hcl          = true
  category     = "terraform"
  sensitive    = false
  workspace_id =tfe_workspace.demostack.id
}


    # AWS
resource "tfe_variable" "AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.AWS_ACCESS_KEY_ID
  category     = "env"
  sensitive    = false
  workspace_id =tfe_workspace.demostack.id
}

resource "tfe_variable" "AWS_SECRET_ACCESS_KEY" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.AWS_SECRET_ACCESS_KEY
  category     = "env"
  sensitive    = true
  workspace_id =tfe_workspace.demostack.id
}