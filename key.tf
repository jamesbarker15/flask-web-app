resource "aws_key_pair" "dev-key-pair" {
  key_name   = "dev-key-pair"
  public_key = file("mykey.pub")
  tags = local.common_tags
}
