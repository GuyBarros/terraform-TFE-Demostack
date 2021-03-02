
output "aws_sub_zone_id" {
  value = var.create_aws_dns_zone ? module.dns.aws_sub_zone_id : ""
}


output "aws_sub_zone_nameservers" {
  value = var.create_aws_dns_zone ? module.dns.aws_sub_zone_nameservers : []
}


output "azure_sub_zone_name" {
  value = var.create_azure_dns_zone ? module.dns.azure_sub_zone_name : ""
}


output "azure_sub_zone_nameservers" {
  value = var.create_azure_dns_zone ? module.dns.azure_sub_zone_nameservers : []
}


output "azure_dns_resourcegroup" {
  value = var.create_azure_dns_zone ? module.dns.azure_dns_resourcegroup : ""
}


output "gcp_dns_zone_name" {
  value = var.create_gcp_dns_zone ? module.dns.gcp_dns_zone_name : ""
}


output "gcp_dns_zone_nameservers" {
  value = var.create_gcp_dns_zone ? module.dns.gcp_dns_zone_nameservers : []
}