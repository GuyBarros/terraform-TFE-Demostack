
provider "tfe" {
  hostname = "${var.TFE_HOSTNAME}"
  token    = "${var.TFE_TOKEN}"
}

data "tfe_workspace" "demostack" {
  name         = "${TFE_WORKSPACE}"
  organization = "${TFE_ORGANIZATION}"
}


#############
# AWS
#############
resource "tfe_variable" "test" {
  key          = "my_key_name"
  value        = "my_value_name"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

############
# URLs
############
resource "tfe_variable" "test" {
  key          = "my_key_name"
  value        = "my_value_name"
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


    # AWS
resource "tfe_variable" "AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = ""
  category     = "env"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = ""
  category     = "env"
  sensitive    = true
  workspace_id = "${tfe_workspace.demostack.id}"
}



    # Azure
    resource "tfe_variable" "ARM_SUBSCRIPTION_ID" {
  key          = "ARM_SUBSCRIPTION_ID"
  value        = ""
  category     = "env"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

    resource "tfe_variable" "ARM_TENANT_ID" {
  key          = "ARM_TENANT_ID"
  value        = ""
  category     = "env"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

    resource "tfe_variable" "ARM_CLIENT_ID" {
  key          = "ARM_CLIENT_ID"
  value        = ""
  category     = "env"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

    resource "tfe_variable" "ARM_CLIENT_SECRET" {
  key          = "ARM_CLIENT_SECRET"
  value        = ""
  category     = "env"
  sensitive    = true
  workspace_id = "${tfe_workspace.demostack.id}"
}

