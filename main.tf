provider "aws" {
region =var.region
}

resource "aws_instance" "app_server" {
  ami           = "ami-04fb7beeed4da358b"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance_Ec2"
  }
}

resource "aws_ec2_instance_state" "app_server" {
  instance_id = "i-076700167cd56b69e"
  state       = "running"
}

resource "aws_instance" "app_server_2" {
  ami           = "ami-04fb7beeed4da358b"
  instance_type = "t2.micro"

  tags = {
    Name = "sp-rest-app"
  }
}