hello:
	echo "hello"

deploy-dev:
	terraform init
	terraform workspace select dev
	terraform fmt
	terraform apply --auto-approve -var-file=params.tfvars

deploy-prod:
	terraform init
	terraform workspace select prod
	terraform fmt
	terraform apply --auto-approve -var-file=params.tfvars

destroy-dev:
	terraform init
	terraform workspace select dev
	terraform destroy -var-file=params.tfvars
	rm -rf test/

destroy-prod:
	terraform init
	terraform workspace select prod
	terraform destroy -var-file=params.tfvars
	rm -rf test/