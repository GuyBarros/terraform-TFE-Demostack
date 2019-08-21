
#############
# AWS
#############

resource "tfe_variable" "primary_namespace" {
  key          = "primary_namespace"
  value        = var.primary_namespace
  category     = "terraform"
  sensitive    = false
  workspace_id = var.workspace_id
}

resource "tfe_variable" "secondary_namespace" {
  key          = "secondary_namespace"
  value        = var.secondary_namespace
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}

resource "tfe_variable" "tertiary_namespace" {
  key          = "tertiary_namespace"
  value        = var.tertiary_namespace
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}



resource "tfe_variable" "primary_region" {
  key          = "primary_region"
  value        = var.primary_region
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}


resource "tfe_variable" "secondary_region" {
  key          = "secondary_region"
  value        = var.secondary_region
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}

resource "tfe_variable" "tertiary_region" {
  key          = "tertiary_region"
  value        = var.tertiary_region
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}

resource "tfe_variable" "instance_type_server" {
  key          = "instance_type_server"
  value        = "t2.medium"
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}

resource "tfe_variable" "instance_type_workers" {
  key          = "instance_type_workers"
  value        = "t2.medium"
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}

  
resource "tfe_variable" "public_key" {
  key          = "public_key"
  value        = var.public_key
  category     = "terraform"
  sensitive    = false
  workspace_id =var.workspace_id
}

resource "tfe_variable" "zone_id" {
  key          = "zone_id"
  value        = var.zone_id
  category     = "terraform"
  sensitive    = false
  workspace_id =var.zone_id
}


    # AWS
resource "tfe_variable" "AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = ""
  category     = "env"
  sensitive    = false
  workspace_id =var.workspace_id
}

resource "tfe_variable" "AWS_SECRET_ACCESS_KEY" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = ""
  category     = "env"
  sensitive    = true
  workspace_id =var.workspace_id
}