#!/usr/bin/env bash
set -x

tee ./implementation/$1/backend.hcl > /dev/null <<EOF
	# backend.hcl
	workspaces { name = "$3" }
	hostname     = "app.terraform.io"
	organization = "$2"	

	# terraform init -backend-config=backend.hcl
	
EOF

cd ./implementation/$1/
terraform init -backend-config=backend.hcl && terraform apply -auto-approve


