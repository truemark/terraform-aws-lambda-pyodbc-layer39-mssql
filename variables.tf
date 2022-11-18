variable "create" {
  description = "Whether to create the resources in this module"
  type = bool
  default = true
}

variable "layer_name" {
  type = string
  description = "Name to apply to the lambda layer"
  default = "pyodbc-layer39"
}
