
resource "tfe_workspace" "TLS_ROOT" {
  name         = var.TFE_TLS_ROOT_WORKSPACE
  organization = var.TFE_ORGANIZATION
  }


resource "tfe_variable" "algorithm" {
  key          = "algorithm"
  value        = var.algorithm
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.TLS_ROOT.id
}

resource "tfe_variable" "common_name" {
  key          = "common_name"
  value        = var.common_name
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.TLS_ROOT.id
}

resource "tfe_variable" "ecdsa_curve" {
  key          = "ecdsa_curve"
  value        = var.ecdsa_curve 
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.TLS_ROOT.id
}

resource "tfe_variable" "is_ca_certificate" {
  key          = "is_ca_certificate"
  value        = var.is_ca_certificate 
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.TLS_ROOT.id
}

resource "tfe_variable" "organization" {
  key          = "organization"
  value        = var.organization 
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.TLS_ROOT.id
}

resource "tfe_variable" "validity_period_hours" {
  key          = "validity_period_hours"
  value        = var.validity_period_hours 
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.TLS_ROOT.id
}

  resource "tfe_variable" "CONFIRM_DESTROY" {
  key          = "CONFIRM_DESTROY"
  value        =  1
  category     = "env"
  sensitive    = false
  workspace_id = tfe_workspace.TLS_ROOT.id
}
