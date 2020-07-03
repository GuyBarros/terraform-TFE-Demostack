#####################
#TFE
#####################
variable "TFE_HOSTNAME" {
  description = "The TFE hostname to create the variables"
  default     = "app.terraform.io"
}


variable "TFE_ORGANIZATION" {
  description = "The TFE Organization to create workspaces "
  default     = "emea-se-playground-2019"
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

variable "nomadlicense" {
  description = "Enterprise License for Nomad"
  default     = ""
}

variable "run_nomad_jobs" {
  default = "0"
}


variable "primary_datacenter" {
  description = "the primary datacenter for mesh gateways"
  default     = ""
}

#####################
# AWS
#####################
variable "TFE_AWS_DEMOSTACK_WORKSPACE" {
  description = "The TFE workspace  to create the variables"
  default     = "Guy-AWS-Demostack"
}


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
  default     = ""
}
#####################
#Azure
#####################
variable "TFE_AZURE_DEMOSTACK_WORKSPACE" {
  description = "The TFE workspace  to create the variables"
  default     = "Guy-AZURE-Demostack"
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

variable "TFE_GCP_DEMOSTACK_WORKSPACE" {
  description = "The TFE workspace  to create the variables"
  default     = "Guy-GCP-Demostack"
}


variable "gcp_project" {
  description = "The GCP projct name to be used"
  default     = ""
}

variable "gcp_region" {
  description = "Region to deploy into"
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

##################################
## TLS Root 
#################################
variable "TFE_TLS_ROOT_WORKSPACE" {
  description = "The TFE workspace  to create the variables"
  default     = "tls-root-certificate"
}

variable "validity_period_hours" {
  description = "How long should this CA root be valid for"
  default     = "8760"
}


variable "organization" {
  description = "The Organization this CA root is for"
  default     = "HashiCorp Emea Demostack"
}


variable "is_ca_certificate" {
  description = "are the outputs of this module for a CA?"
  default     = "true"
}


variable "ecdsa_curve" {
  description = "ecdsa curve to be used for the generation of the private key"
  default     = "P521"
}

variable "common_name" {
  description = "the common name for the Root CA"
  default     = "service.consul"
}


variable "algorithm" {
  description = "Encryption Algorithm to be used"
  default     = "ECDSA"
}


##################################
## DNS 
#################################
variable "TFE_DNS_WORKSPACE" {
  description = "The TFE workspace  to create the variables"
  default     = "Guy-DNS-Zone"
}

variable "hosted-zone" {
  description = "The name of the dns zone on Route 53 that will be used as the master zone"
}


variable "created-by" {
  description = "Tag used to identify resources created programmatically by Terraform"
  default     = "terraform"
}

variable "namespace" {
  description = "Name of the zone e.g. demo"
}

# AWS

variable "create_aws_dns_zone" {
  description = "Set to true if you want to deploy the AWS delegated zone."
  type        = bool
  default     = "false"
}

variable "aws_region" {
  description = "The region to create resources."
  default     = "eu-west-2"
}

# Azure

variable "create_azure_dns_zone" {
  description = "Set to true if you want to deploy the Azure delegated zone."
  type        = bool
  default     = "false"
}

variable "azure_location" {
  description = "The azure location to deploy the DNS service"
  default     = "West Europe"
}

# GCP

variable "create_gcp_dns_zone" {
  description = "Set to true if you want to deploy the Azure delegated zone."
  type        = bool
  default     = "false"
}


variable "AWS_ACCESS_KEY_ID" {
  default = ""
}

variable "AWS_SECRET_ACCESS_KEY" {
  default = ""
}

variable "ARM_SUBSCRIPTION_ID" {
  default = ""
}

variable "ARM_TENANT_ID" {
  default = ""
}

variable "ARM_CLIENT_ID" {
  default = ""
}

variable "ARM_CLIENT_SECRET" {
  default = ""
}

variable "GOOGLE_CREDENTIALS" {
  default = ""
}
