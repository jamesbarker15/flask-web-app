provider "aws" {
    region = "eu-west-1"
}

resource "aws_instance" "dev-ec2" {
    ami                 = "ami-01dd271720c1ba44f"
    instance_type       = "t2.micro"
    security_groups     = [aws_security_group.dev-security.name]
    key_name            = "dev-key-pair"
    tags = local.common_tags
}
