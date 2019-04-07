#############
# Azure
#############

resource "tfe_variable" "resource_group" {
  key          = "resource_group"
  value        = "demostack"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "hostname" {
  key          = "hostname"
  value        = "demostack"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "location" {
  key          = "location"
  value        = "ukwest"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}


resource "tfe_variable" "admin_username" {
  key          = "admin_username"
  value        = "guyser"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}


resource "tfe_variable" "admin_password" {
  key          = "admin_password"
  value        = "Sup3rS3cureP4ssw0rd"
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

