#####################
#TFE
#####################
variable "TFE_HOSTNAME" {
  description = "The TFE hostname to create the variables"
  default     = "app.terraform.io"
}

variable "TFE_WORKSPACE" {
  description = "The TFE workspace  to create the variables"
  default     = "Guy-GCP-Demostack"
}

variable "TFE_ORGANIZATION" {
  description = "The TFE Organization to create workspaces "
  default     = "emea-se-playground-2019"
}

variable "workspace_id" {
  description = "workspace id  to pass into the modules "
  default     = ""
}

#####################
# Base
#####################

variable "TTL" {
  description = "TTL value for tags"
  default     = "72"
}
variable "owner" {
  description = "owner value for tags"
  default     = "guybarros"
}


variable "servers" {
  description = "The number of data servers (consul, nomad, etc)."
  default     = "3"
}

variable "workers" {
  description = "The number of data workers (consul, nomad, etc)."
  default     = "3"
}

variable "nomadworkers" {
  description = "The number of nomad worker vms to create."
  default     = "3"
}

variable "enterprise" {
  description = "do you want to use the enterprise version of the binaries"
  default     = false
}

variable "vaultlicense" {
  description = "Enterprise License for Vault"
  default     = ""
}

variable "consullicense" {
  description = "Enterprise License for Consul"
  default     = ""
}
variable "run_nomad_jobs" {
  default = "0"
}


variable "primary_datacenter"{
  description = "the primary datacenter for mesh gateways"
  default = ""
}

#####################
# AWS
#####################
variable "primary_namespace" {
  description = <<EOH
this is the differantiates different demostack deployment on the same subscription, everycluster should have a different value
EOH

  default = "primarystack"
}

variable "secondary_namespace" {
  description = <<EOH
this is the differantiates different demostack deployment on the same subscription, everycluster should have a different value
EOH

  default = "secondarystack"
}

variable "tertiary_namespace" {
  description = <<EOH
this is the differantiates different demostack deployment on the same subscription, everycluster should have a different value
EOH

  default = "tertiarystack"
}

variable "primary_region" {
  description = "The region to create resources."
  default     = "eu-west-2"
}

variable "secondary_region" {
  description = "The region to create resources."
  default     = "eu-west-2"
}

variable "tertiary_region" {
  description = "The region to create resources."
  default     = "ap-northeast-1"
}


variable "instance_type_server" {
  description = "The type(size) of data servers (consul, nomad, etc)."
  default     = "r4.large"
}

variable "instance_type_worker" {
  description = "The type(size) of data servers (consul, nomad, etc)."
  default     = "t2.medium"
}

variable "public_key" {
  description = "The contents of the SSH public key to use for connecting to the cluster."
  default     = ""
}


variable "zone_id" {
  description = "The CIDR blocks to create the workstations in."
  default     = ""
}

variable "host_access_ip" {
  description = "CIDR blocks allowed to connect via SSH on port 22"
  default = ""
}
#####################
#Azure
#####################

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
  default     = ""
}
variable "tenant_id" {
  description = "your tenant ID for Vault KMS Auto Unseal"
  default     = ""
}
variable "client_id" {
  description = "your client ID for Vault KMS Auto Unseal"
  default     = ""
}
variable "client_secret" {
  description = "your client ID for Vault KMS Auto Unseal"
  default     = ""
}
#####################
# GCP
#####################

variable "gcp_project" {
  description = "The GCP projct name to be used"
  default     = ""
}

variable "gcp_region" {
  description = "Region to deploy into"
  default     = ""
}

variable "google_credentials" {
  description = "Google Credentials in JSON format"
  default     = ""
}



#####################
# URLs
#####################

variable "consul_url" {
  description = "The url to download Consul."
  default     = "https://releases.hashicorp.com/consul/1.6.0-rc1/consul_1.6.0-rc1_linux_amd64.zip"
}

variable "consul_ent_url" {
  description = "The url to download Consul."
  default     = "https://releases.hashicorp.com/consul/1.6.0+ent-rc1/consul_1.6.0+ent-rc1_linux_amd64.zip"
}

variable "fabio_url" {
  description = "The url download fabio."
  default     = "https://github.com/fabiolb/fabio/releases/download/v1.5.11/fabio-1.5.11-go1.11.5-linux_amd64"
}

variable "hashiui_url" {
  description = "The url to download hashi-ui."
  default     = "https://github.com/jippi/hashi-ui/releases/download/v1.1.0/hashi-ui-linux-amd64"
}

variable "nomad_url" {
  description = "The url to download nomad."
  default     = "https://releases.hashicorp.com/nomad/0.10.0-connect1/nomad_0.10.0-connect1_linux_amd64.zip"
}

variable "nomad_ent_url" {
  description = "The url to download nomad."
  default     = "https://releases.hashicorp.com/nomad/0.10.0-connect1/nomad_0.10.0-connect1_linux_amd64.zip"
}

variable "vault_url" {
  description = "The url to download vault."
  default     = "https://releases.hashicorp.com/vault/1.2.2/vault_1.2.2_linux_amd64.zip"
}

variable "vault_ent_url" {
  description = "The url to download vault enterprise"
  default     = "https://s3-us-west-2.amazonaws.com/hc-enterprise-binaries/vault/ent/1.2.2/vault-enterprise_1.2.2%2Bent_linux_amd64.zip"
}


variable "cni_plugin_url" {
  description = "The url to download teh CNI plugin for nomad."
  default     = "https://github.com/containernetworking/plugins/releases/download/v0.8.2/cni-plugins-linux-amd64-v0.8.2.tgz"
}

#####################
# TLS
#####################

variable "ca_key_algorithm" {
  default = ""
}

variable "ca_private_key_pem" {
  default = ""
}

variable "ca_cert_pem" {
  default = ""
}

variable "consul_gossip_key" {
  default = ""
}

variable "consul_master_token" {
  default = ""
}

variable "consul_join_tag_value" {
  default = ""
}

variable "nomad_gossip_key" {
  default = ""
}
