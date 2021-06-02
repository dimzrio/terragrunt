terraform {
  source = "."
  
  extra_arguments "terraform_vars" {
    commands = [
      "init",
      "import",
      "apply",
      "plan",
      "push",
      "refresh"
    ]
  }
}

include {
  path = find_in_parent_folders()
}