variable "inst_ami" {
  type        = string
  description = "provider ami to launch instance"
  default     = "ami-08c40ec9ead489470"
}
variable "inst_type" {
  type        = string
  description = "provider instance type"
  default     = "t2.xlarge"
}
variable "key_pair" {
  type        = string
  description = "key  which has to attach to ec2 inst"
  default     = "sruthi"
}

#variable "az_name" {
#  type        = string
# description = "provider az which instance has to be launched"
# default     = "us-east-1a"
#}



