resource "aws_key_pair" "ec2-key" {
  key_name   = var.key_pair
  public_key = file("${path.module}/ec2-key.pub")
}

output "key-info" {
  value = aws_key_pair.ec2-key.key_name
}