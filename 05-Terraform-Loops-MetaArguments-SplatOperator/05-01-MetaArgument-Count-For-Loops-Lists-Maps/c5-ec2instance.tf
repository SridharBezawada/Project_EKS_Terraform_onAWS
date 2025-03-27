# EC2 isntance
resource "aws_instance" "myec2vm" {
  ami           = data.aws_ami.amzlinux2 # us-east-1
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
tags = {
    "Name" = "EC2 Demo"
/* 
# How to reference List values ?
instance_type = var.instance_type_list[1]

# How to reference Map values ?
instance_type = var.instance_type_map["prod"]

# Meta-Argument Count
count = 2
*/


# count.index
  tags = {
    "Name" = "Count-Demo-${count.index}"
  }
     }
}





