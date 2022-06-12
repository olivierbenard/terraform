terraform {
  required_version = "1.2.2"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "files" {
  for_each = toset(var.files)
  filename = "${var.folder}/${each.key}.txt"
  content  = <<-EOT
  File generated via Terraform.
  EOT
}