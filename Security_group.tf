resource "aws_security_group" "terra_allow" {
  name        = "allow"
  description = "Allow SSH inbound traffic"
  dynamic "ingress" {
    for_each = var.aws_Security_Group
    iterator = port
    content {
      description = "This is the security Group for EC2 in Terraform"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}