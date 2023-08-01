provider "aws" {
  region     = "us-east-1"
  profile = "TerrafomUser"
}

module "s3-lambda-thumbnail" {
    source = "../lamda_s3_thumbnail"
    # source_bucket_name = "demo-source-thumbnail-source"
    # destination_bucket_name = "demo-destination-thumbnail-source"
    lambda_function_name = "lambda-terraform-python"
    zip_or_lambda_file_path = "/home/hitesh/Platform-Engineering/aws-lambda/image-thumbnail/my_deployment_package.zip"
    handler = "lambda_function.lambda_handler"
    runtime = "python3.8"
}

output "s3_bucket_source" {
  value = module.s3-lambda-thumbnail.s3_source_backet
}

output "s3_destination_bucket" {
  value = module.s3-lambda-thumbnail.s3_destination_bucket
}