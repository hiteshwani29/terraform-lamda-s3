variable "source_bucket_name" {
  default = "source-thumbnail-bucket"
}

variable "destination_bucket_name" {
  default = "destination-thumbnail-bucket"
}

variable "lambda_function_name" {
  default = "s3-lambda-thumbnail"
}

variable "runtime" {
  type = string
}

variable "handler" {
  type = string
}

variable "memory_size" {
  type = number
  default = 128
}

variable "timeout" {
  type = number
  default = 30
}

variable "zip_or_lambda_file_path" {
  type = string
}