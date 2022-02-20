terraform {
  required_version = ">= 0.12.31"

  backend "s3" {
    bucket = "vpc-states-kunle"
    key    = "gitops-in-action-iac-multiple-apps-fluxcd/platform/terraform.tfstate"
    region = "eu-west-1"
  }
 }
