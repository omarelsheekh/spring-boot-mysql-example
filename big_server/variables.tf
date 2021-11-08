variable "ami" {
  default = "ami-036d46416a34a611c"
}

variable "instance_type" {
  default     = "t2.micro"
}

variable "vpc_security_group_ids" {
  default     = ["sg-33c63517"]
}

variable "availability_zone" {
  default     = "us-west-2a"
}

variable "region" {
  default = "us-west-2"
}
# make suer that the subnet's availability zone is the same
variable "subnet_id" {
  default     = "subnet-e145eb99"
}

variable "key_name" {
  default     = "aws-main"
}

variable "root_volume_size" {
  default     = 20
}

variable "secondary_volume_size" {
  default     = 100
}