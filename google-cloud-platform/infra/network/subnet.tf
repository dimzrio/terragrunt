module "subnet_dimzrio" {
    source  = "terraform-google-modules/network/google//modules/subnets"
    version = "~> 3.0.0"

    project_id   = var.project
    network_name = module.vpc_dimzrio.network_name

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.7.0/24"
            subnet_region         = "asia-southeast1"
        }
    ]
}