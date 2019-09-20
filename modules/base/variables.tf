##################
#TFE
###################

variable "workspace_id"{
    description = "workspace id  to pass into the modules "
}

####################################################################
# BASE
#####################

variable "owner" {
description = "IAM user responsible for lifecycle of cloud resources used for training"
default = ""
}

variable "TTL" {
description = "Hours after which resource expires, used by reaper. Do not use any unit. -1 is infinite."
default = "240"
}


variable "servers" {
  description = "The number of data servers (consul, nomad, etc)."
  default     = "3"
}

variable "workers" {
  description = "The number of nomad worker vms to create."
  default     = "3"
}



variable "enterprise" {
  description = "do you want to use the enterprise version of the binaries"
  default     = 1
}

variable "vaultlicense" {
  description = "Enterprise License for Vault"
  default     = ""
}

variable "consullicense" {
  description = "Enterprise License for Consul"
  default     = ""
}


variable "run_nomad_jobs"{
 default = "0" 
}

