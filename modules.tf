module "vpc" {
    source  = "terraform-google-modules/network/google//modules/vpc"
    version = "~> 2.0.0"

    project_id   = "kitabisa-infra"
    network_name = "dimzrio"

    shared_vpc_host = false
}

module "subnet" {
    source  = "terraform-google-modules/network/google//modules/subnets"
    version = "~> 2.0.0"

    project_id   = "kitabisa-infra"
    network_name = "dimzrio"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "asia-southeast1"
        },
    ]
}