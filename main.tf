provider "aws" {
region =var.region
}

resource "aws_instance" "app_server" {
  ami           = "ami-0df435f331839b2d6"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}