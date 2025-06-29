terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  # token = var.gh_token
  owner = var.github_organization
  app_auth {
    id     = var.github_app_id
    installation_id = var.github_app_installation_id
    pem_file = file(var.github_app_key_path)
  }
}