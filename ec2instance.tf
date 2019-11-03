resource "aws_security_group" "" {
  name = "Public_SG"

  description = "Public security group."
  vpc_id = "vpc-8da943e6"
}

resource "aws_security_group_rule" "ssh_ingress_access" {
  security_group_id = "sg-0b4cfc69904eee69c"
  cidr_blocks = [ "0.0.0.0/0" ] 
}
  security_group_id = "sg-0b4cfc69904eee69c"
  cidr_blocks = [ "0.0.0.0/0" ]
}
resource "aws_instance" "" {
  subnet_id = "subnet-0e4bfb42"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ ]
  associate_public_ip_address = false
  tags {
    Name = "instance_public"
  }
  
  # Keep these arguments as is:
  ami = "ami-0c12622297a5aa4e6"
  availability_zone = "us-east-1c"
}
