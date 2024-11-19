provider "aws" {
  region = var.region

}

module "web_server" {
  source        = "../../modules/ec2"
  ami_id        = "ami-12345678"
  instance_type = "t2.micro"
  name          = "dev-web-server"

}
