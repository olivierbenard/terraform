hello:
	echo "hello"

deploy-dev:
	terraform init
	terraform workspace select dev
	terraform fmt
	terraform apply --auto-approve

deploy-prod:
	terraform init
	terraform workspace select prod
	terraform fmt
	terraform apply --auto-approve