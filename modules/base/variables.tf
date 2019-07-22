##################
#TFE
###################

variable "workspace_id"{
    description = "workspace id  to pass into the modules "
}

####################################################################

######
# Demostack
#####################

variable "servers" {
  description = "The number of data servers (consul, nomad, etc)."
  default     = "3"
}

variable "nomadworkers" {
  description = "The number of nomad worker vms to create."
  default     = "3"
}



variable "enterprise" {
  description = "do you want to use the enterprise version of the binaries"
  default     = false
}

variable "vaultlicense" {
  description = "Enterprise License for Vault"
  default     = ""
}

variable "consullicense" {
  description = "Enterprise License for Consul"
  default     = ""
}
######################################################################################


#######################
# TLS
#######################################

variable "ca_key_algorithm" {
  default = ""
}

variable "ca_private_key_pem" {
  default = ""
}

variable "ca_cert_pem" {
  default = ""
}

variable "consul_gossip_key"{
  default = ""
}

variable "consul_master_token"{
  default = ""
}

variable "consul_join_tag_value"{
  default = ""
}


variable "nomad_gossip_key"{
  default = ""
}

######################################################################

#######################
# Nomad Jobs
#######################################

variable "run_nomad_jobs"{
  default = "1"
}

##############
# Generic 
##############
variable "owner" {
description = "IAM user responsible for lifecycle of cloud resources used for training"
default = ""
}