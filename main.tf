provider "tfe" {
  version = "0.9.1"
  hostname = "${var.TFE_HOSTNAME}"
  token    = "${var.TFE_TOKEN}"
}

data "tfe_workspace" "demostack" {
  name         = var.TFE_WORKSPACE
  organization = var.TFE_ORGANIZATION
}

module "base" {
  source       = "./modules/base"
  workspace_id = data.tfe_workspace.demostack.id
}

module "links" {
  source       = "./modules/links"
  workspace_id = data.tfe_workspace.demostack.id
}

module "aws" {
  source       = "./modules/aws"
  workspace_id = data.tfe_workspace.demostack.id
}

module "azure" {
  source       = "./modules/azure"
  workspace_id = data.tfe_workspace.demostack.id
}

/*

###############################################################################
"TFE_HOSTNAME" = "${var.TFE_HOSTNAME}"
"TFE_TOKEN" = "${var.TFE_TOKEN}"
"TFE_WORKSPACE" = "${var.TFE_WORKSPACE}"
"TFE_ORGANIZATION" = "${var.TFE_ORGANIZATION}"
"workspace_id" = "${var.workspace_id}"
"region" = "${var.region}"
"namespace" = "${var.namespace}"
"primaryconnectdemo" = "${var.primaryconnectdemo}"
"primary_region" = "${var.primary_region}"
"secondary_region" = "${var.secondary_region}"
"primary_namespace" = "${var.primary_namespace}"
"secondary_namespace" = "${var.secondary_namespace}"
"owner" = "${var.owner}"
"created-by" = "${var.created-by}"
"sleep-at-night" = "${var.sleep-at-night}"
"TTL" = "${var.TTL}"
"vpc_cidr_block" = "${var.vpc_cidr_block}"
"cidr_blocks" = "${var.cidr_blocks}"
"demo_username" = "${var.demo_username}"
"demo_password" = "${var.demo_password}"
"public_key" = "${var.public_key}"
"instance_type_server" = "${var.instance_type_server}"
"instance_type_worker" = "${var.instance_type_worker}"
"servers" = "${var.servers}"
"nomadworkers" = "${var.nomadworkers}"
"enterprise" = "${var.enterprise}"
"vaultlicense" = "${var.vaultlicense}"
"consullicense" = "${var.consullicense}"
"consul_url" = "${var.consul_url}"
"consul_ent_url" = "${var.consul_ent_url}"
"packer_url" = "${var.packer_url}"
"sentinel_url" = "${var.sentinel_url}"
"consul_template_url" = "${var.consul_template_url}"
"envconsul_url" = "${var.envconsul_url}"
"fabio_url" = "${var.fabio_url}"
"hashiui_url" = "${var.hashiui_url}"
"nomad_url" = "${var.nomad_url}"
"nomad_ent_url" = "${var.nomad_ent_url}"
"terraform_url" = "${var.terraform_url}"
"vault_url" = "${var.vault_url}"
"vault_ent_url" = "${var.vault_ent_url}"
"ca_key_algorithm" = "${var.ca_key_algorithm}"
"ca_private_key_pem" = "${var.ca_private_key_pem}"
"ca_cert_pem" = "${var.ca_cert_pem}"
"consul_gossip_key" = "${var.consul_gossip_key}"
"consul_master_token" = "${var.consul_master_token}"
"consul_join_tag_value" = "${var.consul_join_tag_value}"
"nomad_gossip_key" = "${var.nomad_gossip_key}"
"run_nomad_jobs" = "${var.run_nomad_jobs}"
*/
