#############
# Base Variables
#############

resource "tfe_variable" "owner" {
  key          = "owner"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "Ttl" {
  key          = "Ttl"
  value        = "13"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "demo_username" {
  key          = "demo_username"
  value        = "demo"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "demo_password" {
  key          = "demo_password"
  value        = "demo"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "consullicense" {
  key          = "consullicense"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "vaultlicense" {
  key          = "vaultlicense"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "enterprise" {
  key          = "enterprise"
  value        = "1"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "run_nomad_jobs" {
  key          = "run_nomad_jobs"
  value        = "1"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "servers" {
  key          = "servers"
  value        = "3"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "workers" {
  key          = "servers"
  value        = "3"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}





resource "tfe_variable" "public_key" {
  key          = "public_key"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}



###########
# Providers
##############
  resource "tfe_variable" "CONFIRM_DESTROY" {
  key          = "CONFIRM_DESTROY"
  value        =  1
  category     = "env"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

