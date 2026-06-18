output "lambda_role_arn" {
  value = aws_iam_role.lambda_execute_role.arn
}

# output "scheduler_role_arn" {
#   value = aws_iam_role.scheduler.arn
# }
