provider "aws" {
  region = "eu-north-1"
}

locals {
  itype = {
    dev  = "t3.micro"
    test = "t3.small"
  }
}


resource "aws_instance" "myinstance" {

  tags = {
    Name = "${terraform.workspace}-server"
  }

  ami               = "ami-056335ec4a8783947"
  instance_type     = local.itype[terraform.workspace]
  key_name          = "DEVOPSWITHMULTICLOUD"
  availability_zone = "eu-north-1a"
  count             = "2"
  lifecycle {
    create_before_destroy = true
  }

  root_block_device {

    volume_size = "10"
  }
}

