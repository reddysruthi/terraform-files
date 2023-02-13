module "aws_demo_s3" {
  source = "./modules/aws_s3_bucket"

  bucket_name = "sudheer-eks-devops-demo"
  common_tags = {
    "Name" = "terraform-demo"
  }
}