provider "aws" {
  region = var.region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
/* 
resource "aws_vpc" "test" {
  cidr_block = "100.0.0.0/16"
  tags = merge(
    { Name = "myname" }, var.test_tag
  )
}

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
    tag1 = "hoge"
    tag3 = "geso"
  }
}
 */

resource "aws_key_pair" "kyohei" {
  key_name   = "kyohei.harada@ZK203379H"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDVTQN2e3esdzQ20UDday69mmMmimspDYc/ryv8R9B9EfpOjdr3p5js4aIn5aeOBWe5iO9KGhidK32jyqT9NNrGmL75RNLy2TcfVwSHz7RV/Ahwx5OuWj8Rzg6FEwwOEBB93JpvzsJK+OUJ1JQi/fZ8Ct+yyxQzGKj4FdwWKf63eui3j/ECnO4kygFnaDGLRkRDPvUsijvlVAFhX8z3ZZ33TnLhzuGwgEscVWjC0R9kcpXCG0ImkjQ2cZOmXFd1FZ70/zPmRlgEunzAGHyo2XerZRhExdpldC6n07C0UkD5nw+41hpedRcmjkDt97IIKTeMjx3JjI6/S8e5MxBITn/d kyohei.harada@ZK203379H"
  tags       = var.test_tag
  lifecycle {
    create_before_destroy = true
  }
}
