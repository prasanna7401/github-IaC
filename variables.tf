variable "gh_token" {
  type = string
  description = "GitHub token with permissions to manage repositories and teams."
  sensitive = true
}

variable "github_app_id" {
  type = string
  description = "GitHub App ID for authentication."
}

variable "github_app_key_path" {
  type = string
  description = "Path to the private key file for the GitHub App."
}

variable "github_app_installation_id" {
  type = string
  description = "GitHub App installation ID for the organization."
}

variable "github_organization" {
  type = string
  description = "The GitHub organization to manage."
  
}