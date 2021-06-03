module "firewall_rules" {
  source       = "terraform-google-modules/network/google//modules/firewall-rules"
  version      = "~> 3.0.0"

  project_id   = var.project
  network_name = module.vpc_dimzrio.network_name

  rules = [{
    name                    = "allow-ssh-ingress"
    direction               = "INGRESS"
    ranges                  = ["0.0.0.0/0"]
    allow = [{
      protocol = "tcp"
      ports    = ["22"]
    }]
    deny = []
    log_config = {
      metadata = "INCLUDE_ALL_METADATA"
    }
  }]
}