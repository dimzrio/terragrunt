terraform {
  source = "."
  
  extra_arguments "terraform_vars" {
    commands = [
      "apply",
      "plan",
      "import",
      "push",
      "refresh"
    ]
  }
}

inputs = {
  project = "kitabisa-infra"
}

include {
  path = find_in_parent_folders()
}