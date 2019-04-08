
#############
# AWS
#############

resource "tfe_variable" "primary_namespace" {
  key          = "primary_namespace"
  value        = "EU-demostack"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${var.workspace_id}"
}

resource "tfe_variable" "secondary_namespace" {
  key          = "secondary_namespace"
  value        = "SP-demostack"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}


resource "tfe_variable" "primary_region" {
  key          = "primary_region"
  value        = "eu-west-2"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}


resource "tfe_variable" "secondary_region" {
  key          = "secondary_region"
  value        = "sa-east-1"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

resource "tfe_variable" "instance_type_server" {
  key          = "instance_type_server"
  value        = "t2.medium"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}


  
resource "tfe_variable" "public_key" {
  key          = "public_key"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

    # AWS
resource "tfe_variable" "AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = ""
  category     = "env"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

resource "tfe_variable" "AWS_SECRET_ACCESS_KEY" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = ""
  category     = "env"
  sensitive    = true
  workspace_id ="${var.workspace_id}"
}