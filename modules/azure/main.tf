#############
# Azure
#############

resource "tfe_variable" "resource_group" {
  key          = "resource_group"
  value        = "demostack"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${var.workspace_id}"
}

resource "tfe_variable" "hostname" {
  key          = "hostname"
  value        = "demostack"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${var.workspace_id}"
}

resource "tfe_variable" "location" {
  key          = "location"
  value        = "ukwest"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${var.workspace_id}"
}


resource "tfe_variable" "admin_username" {
  key          = "admin_username"
  value        = "guyser"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${var.workspace_id}"
}


resource "tfe_variable" "admin_password" {
  key          = "admin_password"
  value        = "Sup3rS3cureP4ssw0rd"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${var.workspace_id}"
}



resource "tfe_variable" "subscription_id" {
  key          = "subscription_id"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id = "${var.workspace_id}"
}


resource "tfe_variable" "tenant_id" {
  key          = "tenant_id"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id = "${var.workspace_id}"
}

resource "tfe_variable" "client_id" {
  key          = "client_id"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id = "${var.workspace_id}"
}

resource "tfe_variable" "client_secret" {
  key          = "client_secret"
  value        = ""
  category     = "terraform"
  sensitive    = true
  workspace_id = "${var.workspace_id}"
}


