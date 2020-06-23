#############
# Base Variables
#############

resource "tfe_variable" "owner" {
  key          = "owner"
  value        = var.owner
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}

resource "tfe_variable" "TTL" {
  key          = "TTL"
  value        = var.TTL
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}


resource "tfe_variable" "consullicense" {
  key          = "consullicense"
  value        = var.consullicense
  category     = "terraform"
  sensitive    = true
  workspace_id =var.workspace_id
}

resource "tfe_variable" "vaultlicense" {
  key          = "vaultlicense"
  value        =  var.vaultlicense
  category     = "terraform"
  sensitive    = true
  workspace_id =var.workspace_id
}

resource "tfe_variable" "nomadlicense" {
  key          = "nomadlicense"
  value        =  var.nomadlicense
  category     = "terraform"
  sensitive    = true
  workspace_id =var.workspace_id
}

resource "tfe_variable" "enterprise" {
  key          = "enterprise"
  value        = var.enterprise
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}


resource "tfe_variable" "servers" {
  key          = "servers"
  value        = var.servers
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}

resource "tfe_variable" "workers" {
  key          = "workers"
  value        = var.workers
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}


resource "tfe_variable" "run_nomad_jobs" {
  key          = "run_nomad_jobs"
  value        = var.run_nomad_jobs
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}

resource "tfe_variable" "primary_datacenter" {
  key          = "primary_datacenter"
  value        = var.primary_datacenter
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}



###########
# Providers
##############
  resource "tfe_variable" "CONFIRM_DESTROY" {
  key          = "CONFIRM_DESTROY"
  value        =  1
  category     = "env"
  sensitive    = false
  workspace_id =var.workspace_id
}

