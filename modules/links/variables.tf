##################
#TFE
###################

variable "workspace_id"{
    description = "workspace id  to pass into the modules "
}
####################################################################
#############
# URLs
################################################

variable "consul_url" {
  description = "The url to download Consul."
  default     = "https://releases.hashicorp.com/consul/1.2.2/consul_1.2.2_linux_amd64.zip"
}

variable "consul_ent_url" {
  description = "The url to download Consul."
  default     = "https://releases.hashicorp.com/consul/1.2.2/consul_1.2.2_linux_amd64.zip"
}

variable "packer_url" {
  description = "The url to download Packer."
  default     = "https://releases.hashicorp.com/packer/1.2.5/packer_1.2.5_linux_amd64.zip"
}

variable "sentinel_url" {
  description = "The url to download Sentinel simulator."
  default     = "https://releases.hashicorp.com/sentinel/0.3.0/sentinel_0.3.0_linux_amd64.zip"
}

variable "consul_template_url" {
  description = "The url to download Consul Template."
  default     = "https://releases.hashicorp.com/consul-template/0.19.5/consul-template_0.19.5_linux_amd64.zip"
}

variable "envconsul_url" {
  description = "The url to download Envconsul."
  default     = "https://releases.hashicorp.com/envconsul/0.7.3/envconsul_0.7.3_linux_amd64.zip"
}

variable "fabio_url" {
  description = "The url download fabio."
  default     = "https://github.com/fabiolb/fabio/releases/download/v1.5.7/fabio-1.5.7-go1.9.2-linux_amd64"
}

variable "hashiui_url" {
  description = "The url to download hashi-ui."
  default     = "https://github.com/jippi/hashi-ui/releases/download/v0.26.1/hashi-ui-linux-amd64"
}

variable "nomad_url" {
  description = "The url to download nomad."
  default     = "https://releases.hashicorp.com/nomad/0.8.4/nomad_0.8.4_linux_amd64.zip"
}

variable "nomad_ent_url" {
  description = "The url to download nomad."
  default     = "https://releases.hashicorp.com/nomad/0.8.4/nomad_0.8.4_linux_amd64.zip"
}

variable "terraform_url" {
  description = "The url to download terraform."
  default     = "https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip"
}

variable "vault_url" {
  description = "The url to download vault."
  default     = "https://releases.hashicorp.com/vault/0.11.1/vault_0.11.1_linux_amd64.zip"
}

variable "vault_ent_url" {
  description = "The url to download vault."
  default     = "https://s3-us-west-2.amazonaws.com/hc-enterprise-binaries/vault/ent/0.11.1/vault-enterprise_0.11.1%2Bent_linux_amd64.zip"
}
