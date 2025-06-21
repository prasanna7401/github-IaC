resource "github_branch" "A2_development" {
  repository = github_repository.A2.name
  branch     = "development"
  source_branch = github_branch_default.A2_main.branch
}