variable "iname" {
  type    = string
  default = "ec2-with-variable"
}

variable "amiid" {
  type    = string
  default = "ami-056335ec4a8783947"
}

variable "itype" {
  type    = string
  default = "t3.micro"
}

variable "izone" {
  type    = string
  default = "eu-north-1a"
}

variable "ikey" {
  type    = string
  default = "DEVOPSWITHMULTICLOUD"
}

variable "icount" {
  type    = "number"
  default = "1"
}

variable "isize" {
  type    = "number"
  default = "10"
}


