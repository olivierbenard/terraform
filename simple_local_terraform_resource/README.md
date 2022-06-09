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

### Re-install make
```
sudo apt-get install --reinstall make
echo 'export PATH="/usr/bin/make:$PATH"' > ~/.bash_profile
source ~/.bash_profile
which make
```

### Bash: make command not found

- Go to ezwinports, https://sourceforge.net/projects/ezwinports/files/
- Download make-4.2.1-without-guile-w32-bin.zip (get the version without guile)
- Extract zip
- Copy the contents to C:\ProgramFiles\Git\mingw64\ merging the folders, but do NOT overwrite/replace any exisiting files.

### makefile:4:: *** missing separator
- On VS Code, just click the "Space: 4" on the downright corner and change it to tab when editing your Makefile.
- Then, select "Convert Indentation to Tabs" 

Additional resources:
- https://stackoverflow.com/questions/36770716/mingw64-make-build-error-bash-make-command-not-found
- https://stackoverflow.com/questions/16931770/makefile4-missing-separator-stop

## Resources
- [What is terraform.local.hcl](https://www.terraform.io/language/files/dependency-lock)
- [Terraform state](https://www.terraform.io/language/state)