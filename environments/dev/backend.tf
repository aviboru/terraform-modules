terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "avi-lab"

    workspaces {
      name = "gh-docker-eks-hcp-dev"
    }
  }
}
