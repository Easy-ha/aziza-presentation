terraform {
  required_version = ">= 0.12.31"

  backend "s3" {
    bucket = "vpc-states-kunle"
    key    = "image-registry/terraform.tfstate"
    region = "eu-west-1"
  }
}
