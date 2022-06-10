# define an output for the filename of the instance that TF provisions
# here: return the resource's filename attribute
output "filename" {
  value = local_file.hello_world.filename
}