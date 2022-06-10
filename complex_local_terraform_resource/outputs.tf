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

output "count_instances" {
  value       = length(local_file.foo) + length(local_file.dumbfiles)
  description = "Return the total number of local file instances."
}
# return the list of all provisioned local files
output "provisioned_instances" {
  value       = concat([for filename in local_file.foo : filename], [for filename in local_file.dumbfiles : filename])
  description = "Return the list of all provisioned local files."
  sensitive   = true # TF will hide values markes as sensitive from terraform plan and apply messages
}