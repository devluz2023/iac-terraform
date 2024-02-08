resource "aws_s3_bucket" "app_server_bucket" {
  bucket = var.app_server_bucket_name
  tags = {
    Name        = "Infras3"
    Environment = var.environment_dev
  }
}



