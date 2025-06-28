resource "aws_s3_bucket" "bucketRef" {
  bucket = var.bucket_name
  tags = {
    Name        = var.bucket_tag
  }
}

resource "aws_s3_bucket_versioning" "bucketVersioningRef" {
  bucket = aws_s3_bucket.bucketRef.id
  versioning_configuration {
    status = var.bucket_status
  }
}