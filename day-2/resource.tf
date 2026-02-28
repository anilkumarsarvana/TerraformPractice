resource "aws_instance" "myinstance" {

  tags = {
    Name = "var.iname"
  }

  ami               = "var.iamiid"
  instance_type     = "var.itype"
  key_name          = "var.ikey"
  availability_zone = "var.izone"
  count             = var.icount

  root_block_device {

    volume_size = var.isize
  }
}
