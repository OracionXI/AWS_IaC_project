output "s3_id" {
  description = "The ID of the s3 instance"
  value       = aws_s3_bucket.bucketRef.id
}