resource "aws_instance" "example" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "terraform"
    Project= "roboshop"
  }
}


resource "aws_security_group" "allow_tls" {
  name        = "allow-all-terraform" # this name for aws account
  description = "Allow TLS inbound traffic and all outbound traffic"

 dynamic "ingress" {
    for_each = toset(var.ingress_rule)
    content {
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = ingress.value.cidr_blocks
    }
   
   }
 

  tags = {
    Name = "allow_all_terraform"
  }
}

