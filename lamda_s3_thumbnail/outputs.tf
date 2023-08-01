output "s3_source_backet" {
  value = aws_s3_bucket.source_bucket.bucket
}

output "s3_destination_bucket" {
  value = aws_s3_bucket.destination_bucket.bucket
}


output "lambda_function" {
  value = aws_lambda_function.my_lambda.function_name
}