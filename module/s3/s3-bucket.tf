resource "aws_s3_bucket" "s3-bucket" {
  bucket = var.bucket_name

  dynamic "tags" {
    for_each = toset(var.tags)
    content {
      name = dynamic.key
      value = dynamic.value
    }
  }
}

resource "aws_s3_bucket_public_access_block" "s3-bucket" {
  bucket = aws_s3_bucket.s3-bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}







