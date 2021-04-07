module "label" {
  source  = "cloudposse/label/null"
  version = "0.24.1"

  namespace = "sweetops"
  stage     = "production"
  name      = "aweasome"
}

module "your_aweasome_vpc" {
  source = "git::https://github.com/SweetOps/terraform-google-network.git?ref=master"

  context = module.label.context
}

