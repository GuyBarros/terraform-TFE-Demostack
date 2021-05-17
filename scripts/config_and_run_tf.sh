#!/usr/bin/env bash
set -x

tee ./implementation/$1/backend.hcl > /dev/null <<EOF
	# backend.hcl
	workspaces { name = "$3" }
	hostname     = "app.terraform.io"
	organization = "$2"	

	# terraform init -backend-config=backend.hcl
EOF

 if [ $1 = "DEMOSTACK" ]; then
               
			   tee ./implementation/$1/datasources.tf > /dev/null <<EOF
	
	// Workspace Data
data "terraform_remote_state" "tls" {
  backend = "remote"
  config = {
    hostname     = "app.terraform.io"
    organization = "$2"
    workspaces = {
     name = "$5"
    }
  } //config
}

data "terraform_remote_state" "dns" {
  backend = "remote"

  config = {
    hostname     = "app.terraform.io"
    organization = "$2"
    workspaces = {
      name = "$4"
    }
  } //network
}
//--------------------------------------------------------------------


EOF


            fi

cd ./implementation/$1/
terraform init -backend-config=backend.hcl && terraform apply -auto-approve


