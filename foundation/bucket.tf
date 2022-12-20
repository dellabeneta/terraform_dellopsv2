resource "aws_s3_bucket" "terraform-infra-dellopsv2" {
  bucket = "terraform-infra-dellopsv2"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "terraform-infra-dellopsv2_acl" {
  bucket = aws_s3_bucket.terraform-infra-dellopsv2.id
  acl    = "private"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.terraform-infra-dellopsv2.id
  key = "wp-config.php"
  acl    = "public-read"
  source = "wp-config.php"
  etag = filemd5("wp-config.php")
}

