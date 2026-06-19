resource "aws_lambda_function" "this" {

  function_name = var.function_name
  role          = var.role_arn

  filename    = var.filename
  code_sha256 = filebase64sha256(var.filename)

  handler = "bootstrap"
  runtime = "provided.al2023"
  architectures = ["arm64"]
  timeout = 300

  environment {
    variables = var.env_vars
  }

  tags = var.tags
}