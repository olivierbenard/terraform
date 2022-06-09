#!/bin/bash

hello:
	echo "hello"

deploy-local:
	terraform init
	terraform apply

clean:
	terraform init
	terraform destroy
	rm -rf .terraform
	rm -rf .terraform.lock.hcl
	rm -rf terraform.tfstate
	rm -rf terraform.tfstate.backup