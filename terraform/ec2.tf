data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "cloudship_server" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  subnet_id = "subnet-049d75913936f34b2"

  vpc_security_group_ids = [aws_security_group.cloudship_sg.id]

  tags = {
    Name = "CloudShip-Server"
  }
}
