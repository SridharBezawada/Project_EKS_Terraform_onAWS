output "instance_publicip" {
    description = "Public IP"
    value = aws_instance.myec2vm.public_ip
}

output "instance_publicdns" {
    description = "Public DNS"
    value = aws_instance.myec2vm.public_dns
}
