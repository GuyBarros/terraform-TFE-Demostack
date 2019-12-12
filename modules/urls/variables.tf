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


variable "fabio_url" {
  description = "The url download fabio."
  default     = "https://github.com/fabiolb/fabio/releases/download/v1.5.7/fabio-1.5.7-go1.9.2-linux_amd64"
}

variable "nomad_url" {
  description = "The url to download nomad."
  default     = "https://releases.hashicorp.com/nomad/0.8.4/nomad_0.8.4_linux_amd64.zip"
}

variable "nomad_ent_url" {
  description = "The url to download nomad."
  default     = "https://releases.hashicorp.com/nomad/0.8.4/nomad_0.8.4_linux_amd64.zip"
}

variable "vault_url" {
  description = "The url to download vault."
  default     = "https://releases.hashicorp.com/vault/0.11.1/vault_0.11.1_linux_amd64.zip"
}

variable "vault_ent_url" {
  description = "The url to download vault."
  default     = "https://s3-us-west-2.amazonaws.com/hc-enterprise-binaries/vault/ent/0.11.1/vault-enterprise_0.11.1%2Bent_linux_amd64.zip"
}


variable "cni_plugin_url" {
  description = "The url to download teh CNI plugin for nomad."
  default     = "https://github.com/containernetworking/plugins/releases/download/v0.8.2/cni-plugins-linux-amd64-v0.8.2.tgz"
}