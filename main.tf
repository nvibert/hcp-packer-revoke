provider "hcp" {}

provider "aws" {
  region = var.region
}

resource "aws_instance" "app_server" {
  ami           = "ami-0f0aee0f3b2867ea6"
  instance_type = "t2.micro"
  tags = {
    Name = "Image Revoked"
  }
}
