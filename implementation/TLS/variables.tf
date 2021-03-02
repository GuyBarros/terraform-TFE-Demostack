variable "create_tls_root" {
  description = "do you want to create the TLS root workspace and TF project"
  type        = bool
  default     = "true"
}



variable "validity_period_hours" {
description = "How long should this CA root be valid for"
default = "8760"
}


variable "organization" {
description = "The Organization this CA root is for"
default = "HashiCorp Emea Demostack"
}


variable "is_ca_certificate" {
description = "are the outputs of this module for a CA?"
default = "true"
}


variable "ecdsa_curve" {
description = "ecdsa curve to be used for the generation of the private key"
default = "P521"
}

variable "common_name" {
description = "the common name for the Root CA"
default = "service.consul"
}


variable "algorithm" {
description = "Encryption Algorithm to be used"
default = "ECDSA"
}
