output "ec2_public_ip" {
    value = aws_instance.dev-ec2.public_ip
}
