module "s3" {
  source = "./modules/s3"

  bucket_name = var.bucket_name
  tags        = local.tags
}

module "iam" {
  source = "./modules/iam"
  
  lambda_arn = module.lambda.lambda_arn
  prefix = local.prefix
  tags = local.tags
}

module "lambda" {
  source = "./modules/lambda"

  function_name = var.lambda_function_name
  role_arn      = module.iam.lambda_role_arn
  filename      = var.lambda_zip_path

  env_vars = {
    BUCKET_NAME = module.s3.bucket_name
  }

  tags = local.tags
}