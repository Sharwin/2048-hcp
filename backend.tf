# terraform {
#   backend "s3" {
#     bucket = "cloudcamp-terraform-state-devops-2025"
#     key    = "modulo_2048/terraform.tfstate"
#     region = "us-east-1"
#     use_lockfile = true
#     # dynamodb_table = "cloudcamp-ddb-lock"
#     encrypt = true
#   }
# }


terraform {
  cloud {

    organization = "cloudcamp-hcp"

    workspaces {
      name = "app-2048-hcp"
    }
  }
}
