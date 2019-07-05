##################
#TFE
###################

variable "workspace_id"{
    description = "workspace id  to pass into the modules "
}

###################
# GCP
###################

variable "gcp_project" {
  description = "The GCP projct name to be used"
  default     = "FILLINYOURPROJECTNAME"
}

variable "gcp_region" {
  description = "Region to deploy into"
  default     = "AddADeploymentRegion"
}

variable "google_credentials" {
  description = "Google Credentials in JSON format"
  default     = "ADD The JSON here"
}
