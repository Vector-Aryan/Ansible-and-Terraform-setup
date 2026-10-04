data "aws_vpc" "default" {
  default = true
}

resource "aws_instance" "ansible-server" {
  for_each = {
    server1 = "ansible-server-1"
    server2 = "ansible-server-2"
  }

  ami       = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = [
    aws_security_group.main_sg.id
  ]

  subnet_id = var.subnet_id

  tags = {
    Name = each.value
  }
}