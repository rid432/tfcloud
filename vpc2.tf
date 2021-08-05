provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-test1"
  }
}


resource "aws_vpc" "myvpc2" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-test2"
  }
}

output "vpc1" {
  value = aws_vpc.myvpc.id
}

output "vpc2" {
  value = aws_vpc.myvpc2.id
}
