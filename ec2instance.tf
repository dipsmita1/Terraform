resource "aws_vpc" "my_vpc" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name = "Terraform"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = "${aws_vpc.my_vpc.id}"
  cidr_block        = "192.168.10.0/24"
  availability_zone = "us-east-2c"

  tags = {
    Name = "Terraform"
  }
}

resource "aws_network_interface" "foo" {
  subnet_id   = "${aws_subnet.public_subnet.id}"
  private_ips = ["192.168.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "foo" {
  ami           = "ami-0c12622297a5aa4e6" # us-west-2
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = "${aws_network_interface.foo.id}"
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}
