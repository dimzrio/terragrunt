module "firewall_rules_dimzrio" {
  source       = "terraform-google-modules/network/google//modules/firewall-rules"
  version      = "~> 3.3.0"

  project_id   = var.project
  network_name = module.vpc_dimzrio.network_name

  rules = [{
    name                    = "allow-ssh-ingress"
    description             = null
    direction               = "INGRESS"
    priority                = null
    ranges                  = ["0.0.0.0/0"]
    source_tags             = null
    source_service_accounts = null
    target_tags             = null
    target_service_accounts = null
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