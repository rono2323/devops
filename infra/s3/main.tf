resource "aws_s3_bucket" "remote_state_bucket" {
  bucket = "devops6464654544646"

  tags = {
    Name        = "Terraform Remote State"
    Environment = "dev"
  }
}

output "remote_state_s3_bucket_name" {
  value = aws_s3_bucket.remote_state_bucket.bucket
}
