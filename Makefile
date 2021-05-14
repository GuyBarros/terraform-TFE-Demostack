all: deploy_all
.PHONY: all doormat_creds doormat_aws deploy destroy console
CREATE_TLS = false
CREATE_DNS = true
CREATE_AWS = true
CREATE_GCP = false
CREATE_AZURE = false
TFC_ORG = GuyBarros
WORKSPACE_TLS = tls-root-certificate
WORKSPACE_DNS = Guy-DNS-Zone
WORKSPACE_AWS_DEMOSTACK = Guy-AWS-Demostack
WORKSPACE_AZURE_DEMOSTACK = Guy-AZURE-Demostack
WORKSPACE_GCP_DEMOSTACK = Guy-GCP-Demostack
GOOGLE_CREDENTIALS_JSON_FILE_PATH = ""
check_creds = $(shell doormat --smoke-test 1>&2 2>/dev/null; echo $$?)
doormat_creds:
ifneq ($(check_creds), 0)
	doormat --refresh
endif
demostack: doormat_creds
	doormat aws --account se_demos_dev \
		--tf-push --tf-organization $(TFC_ORG) \
		--tf-workspace $(WORKSPACE_DEMOSTACK)
dns: doormat_creds
	doormat aws --account se_demos_dev \
		--tf-push --tf-organization $(TFC_ORG) \
		--tf-workspace $(WORKSPACE_DNS)
deploy_tfc: doormat_aws
	terraform init -upgrade && \
	terraform apply \
	-var="TFE_ORGANIZATION=GuyBarros" \
	-var="TFE_AWS_DEMOSTACK_WORKSPACE=Guy-AWS-Demostack" \
	-var="TFE_AZURE_DEMOSTACK_WORKSPACE=Guy-AZURE-Demostack" \
	-var="TFE_GCP_DEMOSTACK_WORKSPACE=Guy-GCP-Demostack" \
	-var="TFE_TLS_ROOT_WORKSPACE=tls-root-certificate" \
	-var="TFE_DNS_WORKSPACE=Guy-DNS-Zone" \
	-var="CREATE_AWS=CREATE_AWS" \
	-var="CREATE_GCP=CREATE_GCP" \
	-var="CREATE_AZURE=CREATE_AZURE" \
	-var="CREATE_TLS=CREATE_TLS" \
	-var="CREATE_DNS" \
	-var="GOOGLE_CREDENTIALS=(jq -c . ${GOOGLE_APPLICATION_CREDENTIALS} | sed 's/\\n/\\\\n/g' | sed 's/"/\\"/g')"
destroy_tfc: doormat_aws
	terraform init -upgrade && terraform destroy -auto-approve
console: doormat_creds
	doormat aws --account se_demos_dev --console
deploy_dns: doormat_creds
	doormat aws --account se_demos_dev \
	--tf-push --tf-organization $(TFC_ORG) \
	--tf-workspace $(WORKSPACE_DNS)
	./scripts/config_and_run_tf.sh "DNS" $(TFC_ORG) $(WORKSPACE_DNS)
deploy_tls: doormat_creds
	./scripts/config_and_run_tf.sh "TLS" $(TFC_ORG) $(WORKSPACE_TLS)
destroy_dns: doormat_creds
	doormat aws --account se_demos_dev \
	--tf-push --tf-organization $(TFC_ORG) \
	--tf-workspace $(WORKSPACE_DNS)
	cd ./implementation/DNS/ && terraform destroy
destroy_tls: doormat_creds
	cd ./implementation/TLS/ && terraform destroy
deploy_aws_demostack: doormat_creds
	doormat aws --account se_demos_dev \
	--tf-push --tf-organization $(TFC_ORG) \
	--tf-workspace $(WORKSPACE_AWS_DEMOSTACK)
	./scripts/config_and_run_tf.sh "AWS_DEMOSTACK" $(TFC_ORG) $(WORKSPACE_AWS_DEMOSTACK)
destroy_aws_demostack: doormat_creds
	doormat aws --account se_demos_dev \
	--tf-push --tf-organization $(TFC_ORG) \
	--tf-workspace $(WORKSPACE_AWS_DEMOSTACK)
	cd ./implementation/AWS_DEMOSTACK/ && terraform destroy
deploy_azure_demostack: ./scripts/config_and_run_tf.sh "AZURE_DEMOSTACK" $(TFC_ORG) $(WORKSPACE_AZURE_DEMOSTACK)
destroy_azure_demostack: 	cd ./implementation/AZURE_DEMOSTACK/ && terraform destroy
deploy_gcp_demostack: ./scripts/config_and_run_tf.sh "GCP_DEMOSTACK" $(TFC_ORG) $(WORKSPACE_GCP_DEMOSTACK)
destroy_gcp_demostack:  	cd ./implementation/GCP_DEMOSTACK/ && terraform destroy
destroy_all: [ CREATE_GCP ] && destroy_gcp_demostack
	[ CREATE_AZURE ] && destroy_azure_demostack
	[ CREATE_AWS ] && destroy_aws_demostack
	[ CREATE_TLS ] && destroy_tls
	[ CREATE_DNS ] && destroy_dns
	destroy_tfc
	echo "done"
deploy_all: deploy_tfc
	[ CREATE_TLS ] && deploy_tls
	[ CREATE_DNS ] && destroy_dns
	[ CREATE_AWS ] && deploy_aws_demostack
	[ CREATE_AZURE ] && deploy_azure_demostack
	[ CREATE_GCP ] && deploy_gcp_demostack
	echo "done"

