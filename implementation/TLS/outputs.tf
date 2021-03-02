output "ca_key_algorithm" {
  value = module.tls_root.ca_key_algorithm
}

output "ca_private_key_pem" {
  value = module.tls_root.ca_private_key_pem
}

output "ca_cert_pem" {
  value = module.tls_root.ca_cert_pem
}

output "consul_gossip_key"{
  value = module.tls_root.consul_gossip_key
}

output "consul_master_token"{
  value = module.tls_root.consul_master_token
}

output "consul_join_tag_value"{
  value = module.tls_root.consul_join_tag_value
}

output "nomad_gossip_key"{
  value = module.tls_root.nomad_gossip_key
}
