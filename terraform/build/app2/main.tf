module "component" {
    # source = "git::https://github.com/Crown-Commercial-Service/CMpDevEnvironment.git//terraform/modules/component"
    source = "../../modules/component"

    type = "app"
    prefix = "ccs"
    name = "app2"
    build_type = "docker"
    github_owner = "Crown-Commercial-Service"
    github_repo = "CMpExampleApp2"
    github_branch = "master"
    github_token_alias = "ccs-build_github_token"
    cluster_name = "CCSDEV_app_cluster"
    task_count = 1
    environment = [
      {
        name = "CCS_FEATURE_EG1",
        value = "off"
      } 
    ]
    port = "80"
}
