resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = "subnet-07f3d5d2b0e193678"
  key_name               = aws_key_pair.ec2-key.key_name
  vpc_security_group_ids = ["${aws_security_group.terra_allow.id}"]
  tags = {
    name = "terravm_v1"
  }

  user_data = file("${path.module}/install.sh")

  provisioner "file" {
    source      = "readme.md"
    destination = "/tmp/readme.md"
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("${path.module}/ec2-key")
      host        = self.public_ip
    }
  }

  provisioner "local-exec" {
  command = "echo ${self.public_ip} > /mypublicip.txt"
  }

  provisioner "local-exec" {
    working_dir    = "/"
    command = "echo ${self.public_ip} > /mynewpublicip.txt"
  }
  provisioner "local-exec" {
    when       = destroy
    command    = "rm -f /mypublicip.txt"
  }
}

output "instance_info" {
  value = "${aws_instance.web.public_dns}, ${aws_instance.web.public_ip}"
}