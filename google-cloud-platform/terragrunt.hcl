locals {
  read = read_terragrunt_config(find_in_parent_folders("project.hcl"))
  project = local.read.locals.project
}

inputs = {
  project = "${local.project}"
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "skip"
  contents  = <<EOF
terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
        }
    }
}

provider "google" {
  project = "${local.project}"
}
EOF
}

remote_state {
  backend = "gcs"
  config = {
    bucket  = "env0"
    project = "kitabisa-infra"
    prefix  = "${path_relative_to_include()}/"
  }
  
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}