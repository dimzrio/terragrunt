module "vpc" {
    source  = "terraform-google-modules/network/google//modules/vpc"
    version = "~> 2.0.0"

    project_id   = "kitabisa-infra"
    network_name = "dimzrio"

    shared_vpc_host = false
}
