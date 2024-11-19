provider "aws" {
  region = var.region

}

module "web_server" {
  source        = "../../modules/ec2"
  ami_id        = "ami-012967cc5a8c9f891"
  instance_type = "t2.micro"
  name          = "dev-web-server"

}
