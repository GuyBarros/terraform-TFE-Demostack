
############
# URLs
############
resource "tfe_variable" "consul_ent_url" {
  key          = "consul_ent_url"
  value        =  var.consul_ent_url
  category     = "terraform"
  sensitive    = false
  workspace_id = var.workspace_id
}

resource "tfe_variable" "nomad_ent_url" {
  key          = "nomad_ent_url"
  value        = var.nomad_ent_url
  category     = "terraform"
  sensitive    = false
  workspace_id = var.workspace_id
}


resource "tfe_variable" "vault_ent_url" {
  key          = "vault_ent_url"
  value        = var.vault_ent_url
  category     = "terraform"
  sensitive    = false
  workspace_id = var.workspace_id
}

resource "tfe_variable" "consul_url" {
  key          = "consul_url"
  value        = var.consul_url
  category     = "terraform"
  sensitive    = false
  workspace_id = var.workspace_id
}


resource "tfe_variable" "fabio_url" {
  key          = "fabio_url"
  value        = var.fabio_url
  category     = "terraform"
  sensitive    = false
  workspace_id = var.workspace_id
}


resource "tfe_variable" "nomad_url" {
  key          = "nomad_url"
  value        = var.nomad_url
  category     = "terraform"
  sensitive    = false
  workspace_id = var.workspace_id
}


resource "tfe_variable" "vault_url" {
  key          = "vault_url"
  value        = var.vault_url
  category     = "terraform"
  sensitive    = false
  workspace_id = var.workspace_id
}


resource "tfe_variable" "cni_plugin_url" {
  key          = "cni_plugin_url"
  value        = var.cni_plugin_url
  category     = "terraform"
  sensitive    = false
  workspace_id = var.workspace_id
}


