#Input Variables

# AWS Region

variable "aws_region" {
    description = "Region in which AWS Resources to be created"
    type = string
    default = "us-east-1"
}

#AWS EC2 Instance Type
variable "instance_type" {
    description = "EC2 Instance Type"
    type = string
    default = "t3.micro"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
  type = string
  default = "terraform-key"
}

# AWS EC2 Instance Type - List
variable "instance_type_list" {
  description = "Instance type from List"
  type = list(string)
  default = [ " t3.micro", "t3.small", "t3.medium" ]
}

#AWS EC2 Instance type - Map
variable "instance_type_map" {
  description = "Instance type from Map"
  type = map(string)
  default = {
    dev = "t3.micro"
    QA = "t3.small"
    Prod = "t3.medium"
    }
    }


  
