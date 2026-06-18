variable "function_name" {
  type = string
}

variable "role_arn" {
  type = string
}

variable "filename" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "env_vars" {
  type = map(string)
}