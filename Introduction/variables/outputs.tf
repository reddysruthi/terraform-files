output "public_ip" {
  value       = aws_instance.ec2_demo.*.public_ip
  description = "print public ip address on instance"
}

output "private_ip" {
  value       = aws_instance.ec2_demo.*.private_ip
  description = "print private ip address on instance"
}

output "default_vpc_id" {
  value = data.aws_vpc.default_vpc.id
}