provider "hcp" {}

provider "aws" {
  region = var.region
}

resource "aws_instance" "app_server" {
  ami           = "ami-01abd5d1c4bc01cbf"
  instance_type = "t2.micro"
  tags = {
    Name = "Image Not Tracked by HCP"
  }
}
