module "vpc_dimzrio" {
    source  = "terraform-google-modules/network/google//modules/vpc"
    version = "~> 3.0.0"

    project_id   = var.project
    network_name = "dimzrio"

    shared_vpc_host = false
    auto_create_subnetworks = false
}