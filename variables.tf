variable "aws_region" {
  type = string
  default = "eu-west-2"
  description = "The region for fplwir resources."
}

variable "project_name" {
  type = string
  description = "The project name."
}

variable "bucket_name" {
  type = string
  description = "The bucket name for fplwir data."
}

variable "lambda_function_name" {
  type = string
  description = "The name of the fplwir lambda function."
}

variable "lambda_zip_path" {
  type = string
  description = "Path (including file) from cwd to lambda archive."
}
