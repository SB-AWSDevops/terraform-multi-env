terraform {
required_providers {
  aws = {
    source = "hashicorp/aws"
    version = "5.48.0"
  }
}

#remote state


backend "s3" {

  bucket = "surisetty-dev"
  key    = "workspace-example"
  region = "us-east-1"
  dynamodb_table = "surisetty-dev"
}
}


#provide authentication here
provider "aws" {
region = "us-east-1"
}
