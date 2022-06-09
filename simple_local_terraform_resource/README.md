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

## Troubleshooting Makefile

### `make` command not found
```
sudo apt-get install --reinstall make
echo 'export PATH="/usr/bin/make:$PATH"' > ~/.bash_profile
source ~/.bash_profile
which make
```

Additional resources:
- https://stackoverflow.com/questions/36770716/mingw64-make-build-error-bash-make-command-not-found
- https://stackoverflow.com/questions/16931770/makefile4-missing-separator-stop

## Resources
- [What is terraform.local.hcl](https://www.terraform.io/language/files/dependency-lock)
- [Terraform state](https://www.terraform.io/language/state)