provider "aws" {
  region = "us-west-1"
}


module "infrastructure" {
  source = "./module"


  create_private_subnet = true
}