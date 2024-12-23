provider "aws" {
  shared_config_files      = ["/home/jason/.aws/config"]
  shared_credentials_files = ["/home/jason/.aws/credentials"]
  profile                  = "blog"
  region                   = var.region
}

provider "aws" {
  alias = "peer"
  shared_config_files      = ["/home/jason/.aws/config"]
  shared_credentials_files = ["/home/jason/.aws/credentials"]
  profile                  = "blog"
  region                   = var.region_peer
}