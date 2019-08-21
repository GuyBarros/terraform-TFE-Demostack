##################
#TFE
###################

variable "workspace_id"{
    description = "workspace id  to pass into the modules "
}

##################
# AWS
##########################

variable "primary_namespace" {
    description = <<EOH
this is the differantiates different demostack deployment on the same subscription, everycluster should have a different value
EOH

default = "primarystack"
}

variable "secondary_namespace" {
  description = <<EOH
this is the differantiates different demostack deployment on the same subscription, everycluster should have a different value
EOH

default = "secondarystack"
}

variable "tertiary_namespace" {
  description = <<EOH
this is the differantiates different demostack deployment on the same subscription, everycluster should have a different value
EOH

default = "tertiarystack"
}

variable "primary_region" {
  description = "The region to create resources."
  default = "eu-west-2"
}

variable "secondary_region" {
  description = "The region to create resources."
  default = "eu-west-2"
}

variable "tertiary_region" {
  description = "The region to create resources."
  default = "ap-northeast-1"
}


variable "instance_type_server" {
description = "The type(size) of data servers (consul, nomad, etc)."
default = "r4.large"
}

variable "instance_type_worker" {
description = "The type(size) of data servers (consul, nomad, etc)."
default = "t2.medium"
}

variable "public_key" {
description = "The contents of the SSH public key to use for connecting to the cluster."
value = ""
}


variable "zone_id" {
  description = "The CIDR blocks to create the workstations in."
  default     = ""
}

