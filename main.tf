//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/rijoshk/compute/aws"
  version = "1.0.0"

  aws_region = "ap-southeast-2"
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJV2ggJDw7RZgJB2+5OmHAyNOFbNBgYT7p73N8p4VKfOtYd2ItOXbBAyT/b3rL7DhnbZ9fBeixeSW+cawH5d7ANvLk7+lPFwMZ+370zWuKu7qHowz+FnojT8R3DkhH085odduJcAzRk6UB1Rq//X2Wqi12WqqKDP1y+7RiJQx/Jcuu/8l6Mq4CfFyX6/lgMEmkj0Us3ihc1hPl2o5l+K+mJ7KxwarAybN+0K8+22ZG09Zkvihy94Ww6cOGVzxG0LodIgOeIJ9trG0OycPA//eVCD1m58JpgXrUbh6Cwucdu7diQs/hgPDxr4gsR/Ymq0rf74FlipDWjW/y/z91xQA3 ubuntu@ip-172-31-38-244"
  public_sg = "${module.networking.public_sg"
  public_subnets = "${module.networking.public_subnets"
}

module "networking" {
  source  = "app.terraform.io/rijoshk/networking/aws"
  version = "1.0.0"

  access_ip = "0.0.0.0/0"
  aws_region = "ap-southeast-2"
}