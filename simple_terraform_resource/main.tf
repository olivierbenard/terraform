terraform {
    required_version = "1.2.2"
    required_providers {
        local = {
            source = "hashicorp/local"
            version = "~> 2.0"
        }
    }
}

resource "local_file" "literature" {
    filename = "hello_world.txt"
    content = <<-EOT
    Hello World!
    This local resource will be created after terraform apply.
    EOT
}