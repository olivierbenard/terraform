# Terraform courses

## Pre-requisites
- Install `tfenv` to manage terraform versions.
- Then you need TF v.1.2.2: `tfenv install 1.2.2 && tfenv use 1.2.2`
- Install `make` to execute Makefiles: `sudo apt-get install --reinstall make`. Refer to troubleshooting section.
## Simple Local Terraform Resource
The folder `simple_local_terraform_resource` contains a minimal Terraform project using the `hashicorp/local` provider to provision a simple `.txt` file.

## Local Terraform Resource with Input and Output variables
The folder `input_n_output_variables` contains a minimal Terraform project using input and output variables to provision and read from a local Terraform `.txt` provisioned file.
Based on: https://learn.hashicorp.com/collections/terraform/gcp-get-started.

## Troubleshooting Makefile

### My Makefile is not working!
I am using a W10 environment with Bash for Ubuntu for W10. Try re-installing makefile:
```
sudo apt-get install --reinstall make
echo 'export PATH="/usr/bin/make:$PATH"' > ~/.bash_profile
source ~/.bash_profile
which make
```

If the make command is still not found:
- Go to ezwinports, https://sourceforge.net/projects/ezwinports/files/
- Download make-4.2.1-without-guile-w32-bin.zip (get the version without guile)
- Extract zip
- Copy the contents to C:\ProgramFiles\Git\mingw64\ merging the folders, but do NOT overwrite/replace any exisiting files.

If you get a `makefile:4:: *** missing separator` error:
- On VS Code, just click the "Space: 4" on the downright corner and change it to tab when editing your Makefile.
- Then, select "Convert Indentation to Tabs" 

Additional resources:
- https://stackoverflow.com/questions/36770716/mingw64-make-build-error-bash-make-command-not-found
- https://stackoverflow.com/questions/16931770/makefile4-missing-separator-stop

## Resources
- [What is terraform.local.hcl](https://www.terraform.io/language/files/dependency-lock)
- [Terraform state](https://www.terraform.io/language/state)