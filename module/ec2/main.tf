data "aws_ami" "amazon-linux-3" {
  most_recent = true

  owners = ["amazon"]
  
  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "myinstance" {
  ami           = data.aws_ami.amazon-linux-3.id
  instance_type = var.instancetype
  instance_count = var.instancecount
}