provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "test" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    # subnet_id = "subnet-0a509e41d91a981ec"
    key_name = "mykey"
    
  tags = {
    Name = "test"
  }
}