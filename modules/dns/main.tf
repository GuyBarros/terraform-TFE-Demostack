
resource "tfe_workspace" "DNS" {
  name         = var.TFE_DNS_WORKSPACE
  organization = var.TFE_ORGANIZATION
  }


resource "tfe_variable" "owner" {
  key          = "owner"
  value        = var.owner
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "namespace" {
  key          = "namespace"
  value        = var.namespace
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "created-by" {
  key          = "created-by"
  value        = var.created-by
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "hosted-zone" {
  key          = "hosted-zone"
  value        = var.hosted-zone
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "create_aws_dns_zone" {
  key          = "create_aws_dns_zone"
  value        = var.create_aws_dns_zone
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "aws_region" {
  key          = "aws_region"
  value        = var.aws_region
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "create_azure_dns_zone" {
  key          = "create_azure_dns_zone"
  value        = var.create_azure_dns_zone
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "azure_location" {
  key          = "azure_location"
  value        = var.azure_location
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "create_gcp_dns_zone" {
  key          = "create_gcp_dns_zone"
  value        = var.create_gcp_dns_zone
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "gcp_project" {
  key          = "gcp_project"
  value        = var.gcp_project
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "gcp_region" {
  key          = "gcp_region"
  value        = var.gcp_region
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}


  resource "tfe_variable" "CONFIRM_DESTROY" {
  key          = "CONFIRM_DESTROY"
  value        =  1
  category     = "env"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        =  var.AWS_ACCESS_KEY_ID
  category     = "env"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "AWS_SECRET_ACCESS_KEY" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        =  var.AWS_SECRET_ACCESS_KEY
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.DNS.id
}
	
resource "tfe_variable" "ARM_SUBSCRIPTION_ID" {
  key          = "ARM_SUBSCRIPTION_ID"
  value        =  var.ARM_SUBSCRIPTION_ID
  category     = "env"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "ARM_TENANT_ID" {
  key          = "ARM_TENANT_ID"
  value        =  var.ARM_TENANT_ID
  category     = "env"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "ARM_CLIENT_ID" {
  key          = "ARM_CLIENT_ID"
  value        =  var.ARM_CLIENT_ID
  category     = "env"
  sensitive    = false
  workspace_id = tfe_workspace.DNS.id
}

resource "tfe_variable" "ARM_CLIENT_SECRET" {
  key          = "ARM_CLIENT_SECRET"
  value        =  var.ARM_CLIENT_SECRET
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.DNS.id
}	

resource "tfe_variable" "GOOGLE_CREDENTIALS" {
  key          = "GOOGLE_CREDENTIALS"
  value        =  var.GOOGLE_CREDENTIALS
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.DNS.id
}	
