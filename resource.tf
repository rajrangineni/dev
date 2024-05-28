resource "aws_instance" "raj" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "mykey"
    tags = {
      Name = "sweety"

    }
  
}

