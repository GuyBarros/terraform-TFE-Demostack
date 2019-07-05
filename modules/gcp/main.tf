#############
# GCP
#############

# Terraform Variables

resource "tfe_variable" "gcp_project" {
  key          = "gcp_project"
  value        = var.gcp_project
  category     = "terraform"
  sensitive    = false
  workspace_id = "${var.workspace_id}"
}

resource "tfe_variable" "gcp_region" {
  key          = "gcp_region"
  value        = var.gcp_region
  category     = "terraform"
  sensitive    = false
  workspace_id = "${var.workspace_id}"
}

# Environment Variables
resource "tfe_variable" "google_credentials" {
  key          = "GOOGLE_CREDENTIALS"
  value        = var.google_credentials
  category     = "env"
  sensitive    = false
  workspace_id = "${var.workspace_id}"
}

output "gcp_projet_var_id" {
  value = "tfe_variable.gcp.project.id"
}
