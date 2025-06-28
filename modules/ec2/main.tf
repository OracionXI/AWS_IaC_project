resource "aws_key_pair" "this" {
  key_name   = var.key_name
  public_key = var.public_key

  lifecycle {
    ignore_changes        = [public_key]
    create_before_destroy = true
  }
}

resource "aws_security_group" "this" {
  name   = "${var.name}-sg"
  vpc_id = var.vpc_id

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"           
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.name}-sg"
  }
}

resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.this.key_name
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [aws_security_group.this.id]

  tags = {
    Name = var.name
    Env  = var.env
  }
}
