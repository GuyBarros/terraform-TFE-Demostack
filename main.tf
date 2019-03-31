
provider "tfe" {
  hostname = "${var.TFE_HOSTNAME}"
  token    = "${var.TFE_TOKEN}"
}

data "tfe_workspace" "demostack" {
  name         = "${TFE_WORKSPACE}"
  organization = "${TFE_ORGANIZATION}"
}

#############
# Base Variables
#############

resource "tfe_variable" "owner" {
  key          = "owner"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "Ttl" {
  key          = "Ttl"
  value        = "13"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "demo_username" {
  key          = "demo_username"
  value        = "demo"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "demo_password" {
  key          = "demo_password"
  value        = "demo"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "consullicense" {
  key          = "consullicense"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "vaultlicense" {
  key          = "vaultlicense"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "enterprise" {
  key          = "enterprise"
  value        = "1"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "run_nomad_jobs" {
  key          = "run_nomad_jobs"
  value        = "1"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "servers" {
  key          = "servers"
  value        = "3"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "workers" {
  key          = "workers"
  value        = "3"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}






resource "tfe_variable" "public_key" {
  key          = "public_key"
  value        = ""
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}



#############
# Azure
#############

resource "tfe_variable" "resource_group" {
  key          = "resource_group"
  value        = "demostack"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "hostname" {
  key          = "hostname"
  value        = "demostack"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "location" {
  key          = "location"
  value        = "ukwest"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}


resource "tfe_variable" "admin_username" {
  key          = "admin_username"
  value        = "guyser"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}


resource "tfe_variable" "admin_password" {
  key          = "admin_password"
  value        = "Sup3rS3cureP4ssw0rd"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}




#############
# AWS
#############

resource "tfe_variable" "primary_namespace" {
  key          = "primary_namespace"
  value        = "EU-demostack"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "secondary_namespace" {
  key          = "secondary_namespace"
  value        = "SP-demostack"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}


resource "tfe_variable" "primary_region" {
  key          = "primary_region"
  value        = "eu-west-2"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}


resource "tfe_variable" "secondary_region" {
  key          = "secondary_region"
  value        = "sa-east-1"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "instance_type_server" {
  key          = "instance_type_server"
  value        = "t2.medium"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

############
# URLs
############
resource "tfe_variable" "consul_ent_url" {
  key          = "consul_ent_url"
  value        = "https://s3-us-west-2.amazonaws.com/hc-enterprise-binaries/consul/ent/1.4.4/consul-enterprise_1.4.4%2Bent_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "consul_template_url" {
  key          = "consul_template_url"
  value        = "https://releases.hashicorp.com/consul-template/0.19.5/consul-template_0.19.5_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}


resource "tfe_variable" "nomad_ent_url" {
  key          = "nomad_ent_url"
  value        = "https://releases.hashicorp.com/nomad/0.8.7/nomad_0.8.7_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "terraform_url" {
  key          = "terraform_url"
  value        = "https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "vault_ent_url" {
  key          = "vault_ent_url"
  value        = "https://s3-us-west-2.amazonaws.com/hc-enterprise-binaries/vault/ent/1.1.0/vault-enterprise_1.1.0%2Bent_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "consul_url" {
  key          = "consul_url"
  value        = "https://releases.hashicorp.com/consul/1.4.4/consul_1.4.4_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}


resource "tfe_variable" "packer_url" {
  key          = "packer_url"
  value        = "https://releases.hashicorp.com/packer/1.3.4/packer_1.3.4_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}


resource "tfe_variable" "sentinel_url" {
  key          = "sentinel_url"
  value        = "https://releases.hashicorp.com/sentinel/0.9.0/sentinel_0.9.0_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "fabio_url" {
  key          = "fabio_url"
  value        = "https://github.com/fabiolb/fabio/releases/download/v1.5.11/fabio-1.5.11-go1.11.5-linux_amd64"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "hashiui_url" {
  key          = "hashiui_url"
  value        = "https://github.com/jippi/hashi-ui/releases/download/v1.0.0/hashi-ui-linux-amd64"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}


resource "tfe_variable" "nomad_url" {
  key          = "nomad_url"
  value        = "https://releases.hashicorp.com/nomad/0.8.7/nomad_0.8.7_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}


resource "tfe_variable" "vault_url" {
  key          = "vault_url"
  value        = "https://releases.hashicorp.com/vault/1.1.0/vault_1.1.0_linux_amd64.zip"
  category     = "terraform"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}




###########
# Providers
##############
  resource "tfe_variable" "CONFIRM_DESTROY" {
  key          = "CONFIRM_DESTROY"
  value        =  1
  category     = "env"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}


    # AWS
resource "tfe_variable" "AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = ""
  category     = "env"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

resource "tfe_variable" "AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = ""
  category     = "env"
  sensitive    = true
  workspace_id = "${tfe_workspace.demostack.id}"
}



    # Azure
    resource "tfe_variable" "ARM_SUBSCRIPTION_ID" {
  key          = "ARM_SUBSCRIPTION_ID"
  value        = ""
  category     = "env"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

    resource "tfe_variable" "ARM_TENANT_ID" {
  key          = "ARM_TENANT_ID"
  value        = ""
  category     = "env"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

    resource "tfe_variable" "ARM_CLIENT_ID" {
  key          = "ARM_CLIENT_ID"
  value        = ""
  category     = "env"
  sensitive    = false
  workspace_id = "${tfe_workspace.demostack.id}"
}

    resource "tfe_variable" "ARM_CLIENT_SECRET" {
  key          = "ARM_CLIENT_SECRET"
  value        = ""
  category     = "env"
  sensitive    = true
  workspace_id = "${tfe_workspace.demostack.id}"
}

