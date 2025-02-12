provider "aws" {
  region = "us-west-1"  
  
}

resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
    tags = {
        Name = "HelloWorld"
    }
    key_name = "connect-us"
}

resource "aws_s3_bucket" "ex" {
  bucket = "mys3bucket0802"
}

resource "aws_vpc" "project1" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.project1.id
  cidr_block = "10.0.0.1/24"
  availability_zone = "us-west-1a"
}
