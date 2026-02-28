resource "aws_security_group" "mysg" {
  Name        = "terraform-sg"
  description = "This is new sg for terraform"

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocal    = tcp
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = "80"
    to_port     = "80"
    protocal    = tcp
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = "8080"
    to_port     = "8080"
    protocal    = tcp
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocal    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
