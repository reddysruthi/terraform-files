resource "aws_s3_bucket" "s3_demo_bucket" {
  bucket = var.bucket_name

  tags = merge(
    var.common_tags,
    {
        "Name" = "production-${var.bucket_name}"
    },
  )
}
resource "aws_s3_bucket_acl" "public_acl" {
  bucket = aws_s3_bucket.s3_demo_bucket.id
  acl    = "public-read"
}
resource "aws_s3_bucket_policy" "public_read_access" {
  bucket = aws_s3_bucket.s3_demo_bucket.id
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
      {
          "Sid": "PublicReadGetObject",
          "Effect": "Allow",
          "Principal": "*",
          "Action": [
              "s3:GetObject"
          ],
          "Resource": [
              "arn:aws:s3:::${var.bucket_name}/*"
          ]
      }
  ]
}  
EOF
}
resource "aws_s3_bucket_website_configuration" "static_website_host" {
  bucket = aws_s3_bucket.s3_demo_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}
