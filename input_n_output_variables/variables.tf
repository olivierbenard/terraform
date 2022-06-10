# it will check if the value is defined in a .tfvars and map it
# or terraform will prompt you for the value otherwise
variable "filename" {}

variable "region" {
  default = "eu"
}