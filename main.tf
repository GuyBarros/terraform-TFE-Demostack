provider "tfe" {
  hostname = var.TFE_HOSTNAME
 }


##########################################################################
# Comment out the provider you don't want to deploy

module "aws" {
  source               = "./modules/aws"
  count   = var.CREATE_AWS ? 1 : 0
  TFE_AWS_DEMOSTACK_WORKSPACE = var.TFE_AWS_DEMOSTACK_WORKSPACE
  TFE_ORGANIZATION     = var.TFE_ORGANIZATION
  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  primary_namespace    = var.primary_namespace
  secondary_namespace  = var.secondary_namespace
  tertiary_namespace   = var.tertiary_namespace
  primary_region       = var.primary_region
  secondary_region     = var.secondary_region
  tertiary_region      = var.tertiary_region
  instance_type_server = var.instance_type_server
  instance_type_worker = var.instance_type_worker
  public_key           = var.public_key
  zone_id              = var.zone_id
  owner                = var.owner
  TTL                  = var.TTL
  servers              = var.servers
  workers              = var.workers
  enterprise           = var.enterprise
  vaultlicense         = var.vaultlicense
  consullicense        = var.consullicense
  nomadlicense         = var.nomadlicense
  run_nomad_jobs       = var.run_nomad_jobs
  primary_datacenter   = var.primary_datacenter
  consul_url           = var.consul_url
  consul_ent_url       = var.consul_ent_url
  fabio_url            = var.fabio_url
  nomad_url            = var.nomad_url
  nomad_ent_url        = var.nomad_ent_url
  vault_url            = var.vault_url
  vault_ent_url        = var.vault_ent_url
  cni_plugin_url       = var.cni_plugin_url
}


module "azure" {
  source       = "./modules/azure"
  count   = var.CREATE_AZURE ? 1 : 0
  TFE_AZURE_DEMOSTACK_WORKSPACE = var.TFE_AZURE_DEMOSTACK_WORKSPACE
  TFE_ORGANIZATION     = var.TFE_ORGANIZATION
  resource_group  = var.resource_group
  demo_prefix     = var.demo_prefix
  hostname        = var.hostname
  location        = var.location
  admin_username  = var.admin_username
  admin_password  = var.admin_password
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  owner          = var.owner
  TTL            = var.TTL
  servers        = var.servers
  workers        = var.workers
  enterprise     = var.enterprise
  vaultlicense   = var.vaultlicense
  consullicense  = var.consullicense
  nomadlicense         = var.nomadlicense
  run_nomad_jobs = var.run_nomad_jobs
  primary_datacenter = var.primary_datacenter
  consul_url     = var.consul_url
  consul_ent_url = var.consul_ent_url
  fabio_url      = var.fabio_url
  nomad_url      = var.nomad_url
  nomad_ent_url  = var.nomad_ent_url
  vault_url      = var.vault_url
  vault_ent_url  = var.vault_ent_url
  cni_plugin_url = var.cni_plugin_url
}


module "gcp" {
  source             = "./modules/gcp"
  count   = var.CREATE_GCP ? 1 : 0
  TFE_GCP_DEMOSTACK_WORKSPACE = var.TFE_GCP_DEMOSTACK_WORKSPACE
  TFE_ORGANIZATION     = var.TFE_ORGANIZATION
  gcp_region         = var.demostsack_gcp_region
  gcp_project        = var.demostsack_gcp_project
  GOOGLE_CREDENTIALS = var.GOOGLE_CREDENTIALS
  owner          = var.owner
  TTL            = var.TTL
  servers        = var.servers
  workers        = var.workers
  enterprise     = var.enterprise
  vaultlicense   = var.vaultlicense
  consullicense  = var.consullicense
  nomadlicense         = var.nomadlicense
  run_nomad_jobs = var.run_nomad_jobs
  primary_datacenter = var.primary_datacenter
  consul_url     = var.consul_url
  consul_ent_url = var.consul_ent_url
  fabio_url      = var.fabio_url
  nomad_url      = var.nomad_url
  nomad_ent_url  = var.nomad_ent_url
  vault_url      = var.vault_url
  vault_ent_url  = var.vault_ent_url
  cni_plugin_url = var.cni_plugin_url
}


module "tls_root" {
  count   = var.CREATE_TLS_ROOT ? 1 : 0
  source                 = "./modules/tls_root"
  TFE_TLS_ROOT_WORKSPACE = var.TFE_TLS_ROOT_WORKSPACE
  TFE_ORGANIZATION       = var.TFE_ORGANIZATION
  validity_period_hours  = var.validity_period_hours
  organization           = var.organization
  is_ca_certificate      = var.is_ca_certificate
  ecdsa_curve            = var.ecdsa_curve
  common_name            = var.common_name
  algorithm              = var.algorithm
  global_remote_state      = true
}


module "dns" {
  source                = "./modules/dns"
   count   = var.CREATE_DNS ? 1 : 0
  TFE_DNS_WORKSPACE     = var.TFE_DNS_WORKSPACE
  TFE_ORGANIZATION      = var.TFE_ORGANIZATION
  hosted-zone           = var.hosted-zone
  AWS_ACCESS_KEY_ID     = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
  ARM_SUBSCRIPTION_ID   = var.ARM_SUBSCRIPTION_ID
  ARM_TENANT_ID         = var.ARM_TENANT_ID
  ARM_CLIENT_ID         = var.ARM_CLIENT_ID
  ARM_CLIENT_SECRET     = var.ARM_CLIENT_SECRET
  GOOGLE_CREDENTIALS    = var.GOOGLE_CREDENTIALS
  owner                 = var.owner
  namespace             = var.namespace
  created-by            = var.created-by
  create_aws_dns_zone   = var.create_aws_dns_zone
  create_azure_dns_zone = var.create_azure_dns_zone
  create_gcp_dns_zone   = var.create_gcp_dns_zone
  gcp_project           = var.dns_gcp_project
  global_remote_state      = true
 }