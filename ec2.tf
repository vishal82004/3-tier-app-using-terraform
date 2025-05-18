resource "aws_instance" "web" {
  ami           = "ami-0c101f26f147fa7fd" # <-- replace this with valid one
  instance_type = "t2.micro"
  key_name      = "vikey"
  subnet_id     = aws_subnet.public[count.index].id
  vpc_security_group_ids = [aws_security_group.allowtls.id]
  associate_public_ip_address = true
  count = 2

  tags = {
    Name = "ec2public"
  }

  provisioner "file" {
    source      = "./vikey.pem"
    destination = "/home/ec2-user/vikey.pem"

    connection {
      type        = "ssh"
      host        = self.public_ip
      user        = "ec2-user"
      private_key = file("./vikey.pem")
    }
  }
}

resource "aws_instance" "db" {
  ami           = "ami-0c101f26f147fa7fd" # <-- replace with valid AMI
  instance_type = "t2.micro"
  key_name      = "vikey"
  subnet_id     = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.allow_tls_db.id]

  tags = {
    Name = "DB"
  }
}
