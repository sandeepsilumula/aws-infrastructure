provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0895d66f4e935f1b5"

  tags = {
    Name        = "my-instance"
    Environment = "dev"
  }
}
