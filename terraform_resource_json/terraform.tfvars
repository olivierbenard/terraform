# to set lots of variables, more convenient is to specify them in a variable definition file
# rather than listing them in a variables.tf file. they are then automatically loaded if the
# filename is matching terraform.tfvars, terraform.tfvar.json, .auto.tfvars or .auto.tfvars.json
# you should specify the file on command line via: terraform apply -var-file="testing.fvars" otherwise
# more: https://www.terraform.io/language/values/variables#variable-definitions-tfvars-files
project   = "terraform-test"
directory = "test"
region    = "eu"