
############
# URLs
############
resource "tfe_variable" "consul_ent_url" {
  key          = "consul_ent_url"
  value        = "https://s3-us-west-2.amazonaws.com/hc-enterprise-binaries/consul/ent/1.4.4/consul-enterprise_1.4.4%2Bent_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

resource "tfe_variable" "consul_template_url" {
  key          = "consul_template_url"
  value        = "https://releases.hashicorp.com/consul-template/0.19.5/consul-template_0.19.5_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}


resource "tfe_variable" "nomad_ent_url" {
  key          = "nomad_ent_url"
  value        = "https://releases.hashicorp.com/nomad/0.8.7/nomad_0.8.7_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

resource "tfe_variable" "terraform_url" {
  key          = "terraform_url"
  value        = "https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

resource "tfe_variable" "vault_ent_url" {
  key          = "vault_ent_url"
  value        = "https://s3-us-west-2.amazonaws.com/hc-enterprise-binaries/vault/ent/1.1.0/vault-enterprise_1.1.0%2Bent_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

resource "tfe_variable" "consul_url" {
  key          = "consul_url"
  value        = "https://releases.hashicorp.com/consul/1.4.4/consul_1.4.4_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}


resource "tfe_variable" "packer_url" {
  key          = "packer_url"
  value        = "https://releases.hashicorp.com/packer/1.3.4/packer_1.3.4_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}


resource "tfe_variable" "sentinel_url" {
  key          = "sentinel_url"
  value        = "https://releases.hashicorp.com/sentinel/0.9.0/sentinel_0.9.0_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

resource "tfe_variable" "fabio_url" {
  key          = "fabio_url"
  value        = "https://github.com/fabiolb/fabio/releases/download/v1.5.11/fabio-1.5.11-go1.11.5-linux_amd64"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}

resource "tfe_variable" "hashiui_url" {
  key          = "hashiui_url"
  value        = "https://github.com/jippi/hashi-ui/releases/download/v1.0.0/hashi-ui-linux-amd64"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}


resource "tfe_variable" "nomad_url" {
  key          = "nomad_url"
  value        = "https://releases.hashicorp.com/nomad/0.8.7/nomad_0.8.7_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}


resource "tfe_variable" "vault_url" {
  key          = "vault_url"
  value        = "https://releases.hashicorp.com/vault/1.1.0/vault_1.1.0_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id ="${var.workspace_id}"
}



