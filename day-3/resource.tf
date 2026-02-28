resource "aws_instance" "myinstance" {

  tags = {
    Name = "ec2-creation"
  }

  ami                    = "ami-056335ec4a8783947"
  instance_type          = "t3.micro"
  key_name               = "DEVOPSWITHMULTICLOUD"
  availability_zone      = "eu-north-1a"
  vpc_security_group_ids = ["aws_security_group.mysg.terraform-sg"]
  count                  = "2"


  root_block_device {

    volume_size = "10"
  }
}
