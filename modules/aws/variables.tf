##################
#TFE
###################

variable "workspace_id"{
    description = "workspace id  to pass into the modules "
}

##################
# AWS
##########################


variable "region" {
  description = "The region to create resources."
  default     = "eu-west-2"
}

variable "namespace" {
  description = <<EOH
The namespace to create the virtual training lab. This should describe the
training and must be unique to all current trainings. IAM users, workstations,
and resources will be scoped under this namespace.
EOH

  default = "primaryconnectdemo"
}

variable "primary_region" {
  description = "The region to create resources."
  default     = "eu-west-2"
}

variable "secondary_region" {
  description = "The region to create resources."
  default     = "eu-west-2"
}

variable "primary_namespace" {
  description = <<EOH
The namespace to create the virtual training lab. This should describe the
training and must be unique to all current trainings. IAM users, workstations,
and resources will be scoped under this namespace.
It is best if you add this to your .tfvars file so you do not need to type
it manually with each run
EOH

  default = "primaryconnectdemo"
}

variable "secondary_namespace" {
  description = <<EOH
The namespace to create the virtual training lab. This should describe the
training and must be unique to all current trainings. IAM users, workstations,
and resources will be scoped under this namespace.
It is best if you add this to your .tfvars file so you do not need to type
it manually with each run
EOH

  default = "secondaryconnectdemo"
}

variable "owner" {
  description = "IAM user responsible for lifecycle of cloud resources used for training"
  default     = ""
  }

variable "created-by" {
  description = "Tag used to identify resources created programmatically by Terraform"
  default     = "Terraform"
}

variable "sleep-at-night" {
  description = "Tag used by reaper to identify resources that can be shutdown at night"
  default     = true
}

variable "TTL" {
  description = "Hours after which resource expires, used by reaper. Do not use any unit. -1 is infinite."
  default     = "240"
}

variable "vpc_cidr_block" {
  description = "The top-level CIDR block for the VPC."
  default     = "10.1.0.0/16"
}

variable "cidr_blocks" {
  description = "The CIDR blocks to create the workstations in."
  default     = ["10.1.1.0/24", "10.1.2.0/24"]
}

variable "demo_username" {
  description = "The username to attach to the user demo login as."
  default     = "demo"
}

variable "demo_password" {
  description = "The password to attach to the user demo login as."
  default     = "demo"
}

variable "public_key" {
  description = "The contents of the SSH public key to use for connecting to the cluster."
  default     = ""
}

variable "instance_type_server" {
  description = "The type(size) of data servers (consul, nomad, etc)."
  default     = "r4.large"
}

variable "instance_type_worker" {
  description = "The type(size) of data servers (consul, nomad, etc)."
  default     = "t2.medium"
}
