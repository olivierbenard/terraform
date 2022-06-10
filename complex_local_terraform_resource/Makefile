hello:
	echo "hello"

deploy-dev:
	terraform init
	terraform workspace select dev
	terraform apply --auto-approve

deploy-staging:
	terraform init
	terraform workspace select staging
	terraform apply --auto-approve

deploy-prod:
	terraform init
	terraform workspace select prod
	terraform apply --auto-approve