# Declaring a simple local file resource via Terraform

## Pre-requisites
- Install `tfenv` to manage terraform versions.
- Then you need TF v.1.2.2: `tfenv install 1.2.2 && tfenv use 1.2.2`
- Install `make` to execute Makefiles: `sudo apt-get install --reinstall make`

## Quick-start
Simply run `make deploy-local` to execute the following:
```
terraform init
terraform apply
```

## To destroy the resource
`terraform destroy`

## Reinit the repository
`make clean`

## Troubleshooting

### `make` command not found
```
sudo apt-get install --reinstall make
echo 'export PATH="/usr/bin/make:$PATH"' > ~/.bash_profile
source ~/.bash_profile
which make
```

## Resources
- [What is terraform.local.hcl](https://www.terraform.io/language/files/dependency-lock)
- [Terraform state](https://www.terraform.io/language/state)