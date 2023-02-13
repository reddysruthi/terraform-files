resource "aws_instance" "ec2_demo" {
  # for_each = {
  #  "AZ1a" = "us-east-1a"
  # "AZ1b" = "us-east-1b"
  # "AZ1c" = "us-east-1c"
  #}
  ami               = "ami-08c40ec9ead489470"
  instance_type     = "t2.small"
  key_name          = "sruthi"
  availability_zone = "us-east-1a"

 

  # tags = {
  # "Name" = "webapp-${each.key}"
  # }
}