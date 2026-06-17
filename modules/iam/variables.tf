variable "prefix" {
  type = string
}

variable "tags" {
  type = map(string) 
}

variable "lambda_arn" {
  type = string
}