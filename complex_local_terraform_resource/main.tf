terraform {
  required_version = "1.2.2"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# local values are like a function's temporary local variable
# it assigns a name to an expression you can use multiple time within
# a module instead of repeating the expression
locals {
  folder = "outputs"
  required_tags = {
    project     = var.project_name,
    environment = var.environment
  }
  tags        = merge(var.resource_tags, local.required_tags) # map between the scaffolded variable and the local instanciation
  name_prefix = "${var.project_name}-${var.environment}"
}


# by default a resource block configures one real infrastructure object
# to create multiple similar instance, use `count`
resource "local_file" "foo" {
  count    = 2 # meta-argument to create two similar .txt instances
  filename = "${local.folder}/${local.name_prefix}-foo${count.index}.txt"
  content  = "foo!"
}

# instanciate as many files as contain in the filenames list
resource "local_file" "dumbfiles" {
  for_each = toset(var.filenames)
  filename = "${local.folder}/${each.value}.txt"
  content  = each.value
}