resource "aws_security_group" "main_sg" {
  name   = "ansible-sg"
  vpc_id = data.aws_vpc.default.id

  ingress {
    to_port     = 22
    from_port   = 22
    cidr_blocks  = ["0.0.0.0/0"]
    protocol    = "tcp"
    description = "Allow ssh "

  }

  ingress {
    to_port     = 80
    from_port   = 80
    cidr_blocks  = ["0.0.0.0/0"]
    protocol    = "tcp"
    description = "Allow HTTP"

  }

  egress {
    to_port    = 0
    from_port  = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol   = "-1"
  }
}