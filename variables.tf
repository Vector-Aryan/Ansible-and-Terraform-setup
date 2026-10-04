variable "ami_id" {
  default = "ami-01a00762f46d584a1"
  type    = string
}

variable "instance_type" {
  default = "t3.micro"
  type    = string
}

variable "key_name" {
  default = "anasible"
  type    = string
}

variable "subnet_id" {
  default = "subnet-0e4dd85995642b102"
  type    = string
}
