provider "aws" {
  region = "us-east-1"
  alias  = "NV"
}

provider "aws" {
  region = "ap-south-1"
  alias  = "mumbai"
}

resource "aws_instance" "myinstance" {
  tags = {
    Name = "ec2-creation"
  }
  provider          = aws.NV
  ami               = "ami-0f3caa1cf4417e51b"
  instance_type     = "t3.micro"
  availability_zone = "us-east-1a"
  root_block_device {
    volume_size = "10"
  }
}

resource "aws_instance" "myinstance1" {
  tags = {
    Name = "ec2-creation"
  }
  provider          = aws.mumbai
  ami               = "ami-051a31ab2f4d498f5"
  instance_type     = "t3.micro"
  availability_zone = "ap-south-1a"
  root_block_device {
     volume_size = "10"
  }

