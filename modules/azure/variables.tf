##################
#Azure
###################

variable "workspace_id"{
    description = "workspace id  to pass into the modules "
}

variable "resource_group" {
  description = "The name of your Azure Resource Group."
  default     = "Azure-Consul-Demo"
}

variable "demo_prefix" {
  description = "This prefix will be included in the name of some resources."
  default     = "demostack"
}

variable "hostname" {
  description = "VM hostname. Used for local hostname, DNS, and storage-related names."
  default     = "demostack"
}

variable "location" {
  description = "The region where the virtual network is created."
  default     = "centralus"
}

variable "admin_username" {
  description = "Administrator user name"
  default     = "admin"
}

variable "admin_password" {
  description = "Administrator password"
  default     = "replace-with-your-password"
}


variable "subscription_id" {
description = "your subscription ID for Vault KMS Auto Unseal"
}

variable "tenant_id" {
description = "your tenant ID for Vault KMS Auto Unseal"
}

variable "client_id" {
description = "your client ID for Vault KMS Auto Unseal"
}

variable "client_secret" {
description = "your client ID for Vault KMS Auto Unseal"
}