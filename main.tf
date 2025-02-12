provider "aws" {
  region = "us-west-1"  
  
}

resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
    tags = {
        Name = "HelloWorld"
    }
    key_name = "connect-us-1"
}

resource "aws_s3_bucket" "ex" {
  bucket = "mys3bucket0802"
}