resource "github_repository" "A2" {
    allow_auto_merge            = false
    allow_merge_commit          = true
    allow_rebase_merge          = true
    allow_squash_merge          = true
    allow_update_branch         = true
    archived                    = false
    auto_init                   = false
    delete_branch_on_merge      = false
    description                 = null
    has_discussions             = false
    has_downloads               = true
    has_issues                  = true
    has_projects                = true
    has_wiki                    = true
    homepage_url                = null
    is_template                 = false
    name                        = "A2"
    topics                      = []
    visibility                  = "public"
    vulnerability_alerts        = true
    web_commit_signoff_required = false

    security_and_analysis {
        secret_scanning {
            status = "enabled"
        }
        secret_scanning_push_protection {
            status = "enabled"
        }
    }
}

resource "github_branch_default" "A2_main" {
    repository = github_repository.A2.name
    branch     = "main"
}
