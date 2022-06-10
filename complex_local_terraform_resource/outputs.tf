# outputs are like function return values

output "tags" {
  value = local.tags
}

output "filenames" {

  value       = var.filenames
  description = "Return the list of files to be provisioned."
  sensitive   = false # TF will hide values markes as sensitive from terraform plan and apply messages

  precondition {
    condition     = var.filenames != []
    error_message = "The list of files to be generated cannot be empty."
  }
}


output "provisioned_filenames" {

  value       = var.filenames
  description = "Return the list of files actually provisioned."
  sensitive   = true # TF will hide values markes as sensitive from terraform plan and apply messages

  # depends_on = [

  # ]

}