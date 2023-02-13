variable "bucket_name" {
  description = "Name of the S3 bucket. Must be Unique across AWS"
  type = string 
}
variable "common_tags" {
  description = "Tages to set on the bucket"
  type = map(string)
  default = {}
}