terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "big_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  availability_zone      = var.availability_zone

  tags = {
    Name = "Big server"
    Purpose = "big_server"
  }

  root_block_device {
      volume_size = var.root_volume_size
  }

  ebs_block_device {
      volume_size = var.secondary_volume_size
      device_name = "/dev/sdb"
  }
}

output "big_server_public_ip" {
  value = aws_instance.big_server.public_ip
}

output "big_server_private_ip" {
  value = aws_instance.big_server.private_ip
}