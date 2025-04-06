provider "aws" {
  alias  = "env"
  region = var.region

  assume_role {
    role_arn = var.assume_role_arn
  }
}