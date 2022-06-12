terraform {
  required_version = "1.2.2"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

locals {
  content_path = "${var.content_base}.${terraform.workspace}"
}

resource "local_file" "files" {
  for_each = toset(var.files)
  filename = "${var.directory}/${each.key}.txt"
  content  = file(local.content_path)
}