# inputs are like function arguments

# filename to be generated
variable "filenames" {
  type = list(string)
  default = [
    "file1",
    "file2",
    "file3"
  ]
}

variable "project_name" {
  description = "Name of the project."
  type        = string
  default     = "my-project"
}

variable "environment" {
  description = "Name of the environment."
  type        = string
  default     = "dev" # include the name of the workspace
}

variable "resource_tags" {
  description = "Tags to set for all resources"
  type        = map(string)
  default     = {} # change the defatult value to an empty map
}