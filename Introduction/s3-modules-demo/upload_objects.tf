resource "aws_s3_object_copy" "test" {
  bucket = aws_s3_bucket.s3_demo_bucket.id
  key    = "index.html"
  source = "./modules/aws_s3_bucket/src/index.html"

  etag = filemd5("./modules/aws_s3_bucket/src/index.html")
}