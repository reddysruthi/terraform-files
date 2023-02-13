data "aws_availability_zones" "all" {}

resource "aws_instance" "ec2_demo" {
  count = length(data.aws_availability_zones.all.names)

  ami           = data.aws_ami.ubuntu_ami.id #"ami-08c40ec9ead489470"
  instance_type = var.inst_type
  key_name      = var.key_pair
  #availability_zone = var.az_name
  availability_zone = data.aws_availability_zones.all.names[count.index]

  tags = {
    "name" = "webapp"
  }
}

