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
    # heredoc syntax for multi-line strings
    content = <<-EOT
    Hello World!
    This local resource will be created after terraform apply.
    Here, I make an edit.
    And here, a second one.
    EOT
}