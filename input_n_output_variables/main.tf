terraform {
  required_version = "1.2.2"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# resource <type pre-fixed by the provider> <resource name>
# together compose the unique resource ID: local_file.hello_world
resource "local_file" "hello_world" {
  filename = var.filename
  content  = <<-EOT
    Hello World!
    EOT
}