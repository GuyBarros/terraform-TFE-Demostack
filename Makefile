all: deploy_tfc deploy_tls deploy_dns deploy_aws_demostack
.PHONY: all doormat_creds doormat_aws deploy destroy console
TFC_ORG = GuyBarros
WORKSPACE_AWS_DEMOSTACK = Guy-AWS-Demostack
WORKSPACE_DNS = Guy-DNS-Zone
WORKSPACE_TLS = tls-root-certificate
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
	-var="TFE_TLS_ROOT_WORKSPACE=tls-root-certificate" \
	-var="TFE_DNS_WORKSPACE=Guy-DNS-Zone" \
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
deploy_aws_demostack: doormat_creds
	doormat aws --account se_demos_dev \
	--tf-push --tf-organization $(TFC_ORG) \
	--tf-workspace $(WORKSPACE_DNS)
	./scripts/config_and_run_tf.sh "DEMOSTACK" $(TFC_ORG) $(WORKSPACE_AWS_DEMOSTACK)
destroy_dns: doormat_creds
	doormat aws --account se_demos_dev \
	--tf-push --tf-organization $(TFC_ORG) \
	--tf-workspace $(WORKSPACE_DNS)
	cd ./implementation/DNS/ && terraform destroy
destroy_tls: doormat_creds
	cd ./implementation/TLS/ && terraform destroy
destroy_aws_demostack: doormat_creds
	doormat aws --account se_demos_dev \
	--tf-push --tf-organization $(TFC_ORG) \
	--tf-workspace $(WORKSPACE_DNS)
	cd ./implementation/DEMOSTACK/ && terraform destroy
destroy_all: destroy_aws_demostack destroy_dns destroy_tls destroy_tfc