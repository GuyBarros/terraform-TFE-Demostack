# terraform-TFE-Demostack
a project to set up Demostack workspaces in new Organizations

## Setup

this is a Makefile lead project to set up all the different required environments in a TFE Org and subsequently run the workspaces.

### Variables
you will need to provide Variables in two main places, in the makefile itself and implement a TFVARS file based on the example.

#### MAKEFILE
    TFC_ORG = GuyBarros
    WORKSPACE_AWS_DEMOSTACK = Guy-AWS-Demostack
    WORKSPACE_DNS = Guy-DNS-Zone
    WORKSPACE_TLS = tls-root-certificate
    GOOGLE_CREDENTIALS_JSON_FILE_PATH = ""

#### Terraform Variables file (tfvars)
    