module "vm_compute_instance" {
  source  = "terraform-google-modules/vm/google//modules/compute_instance"
  version = "6.4.0"
  project_id = "kitabisa-infra"
  region     = "asia-southeast1"
  zone       = "asia-southeast1-a"
  subnetwork = "ktbs-util-asia-se1-infra-subnet-1"
}