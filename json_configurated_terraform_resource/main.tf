terraform {
  required_version = "1.2.2"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "file" {
  filename = "file.txt"
  content  = <<-EOT
  Local txt file created on the ${terraform.workspace} environement.
  EOT
}