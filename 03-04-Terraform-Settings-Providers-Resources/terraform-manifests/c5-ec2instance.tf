# EC2 isntance
resource "aws_instance" "myec2vm" {
  ami           = data.aws_ami.amzlinux2 # us-east-1
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
tags = {
    "Name" = "EC2 Demo"
  }
}

