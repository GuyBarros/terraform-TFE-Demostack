#############
# Base Variables
#############

resource "tfe_variable" "owner" {
  key          = "owner"
  value        = var.owner
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

resource "tfe_variable" "TTL" {
  key          = "TTL"
  value        = "13"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}


resource "tfe_variable" "consullicense" {
  key          = "consullicense"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

resource "tfe_variable" "vaultlicense" {
  key          = "vaultlicense"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

resource "tfe_variable" "enterprise" {
  key          = "enterprise"
  value        = "1"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}


resource "tfe_variable" "servers" {
  key          = "servers"
  value        = "3"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

resource "tfe_variable" "workers" {
  key          = "workers"
  value        = "3"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}








###########
# Providers
##############
  resource "tfe_variable" "CONFIRM_DESTROY" {
  key          = "CONFIRM_DESTROY"
  value        =  1
  category     = "env"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

