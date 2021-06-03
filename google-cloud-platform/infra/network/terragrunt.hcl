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

include {
  path = find_in_parent_folders()
}