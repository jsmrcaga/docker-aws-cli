module repo {
  source = "git@github.com:jsmrcaga/terraform-modules//github-repo?ref=v0.0.11"

  github = {
    token = var.github_token
  }

  name = "docker-aws-cli"
  description = "A simle lightweight image for aws cli (contains utility tools like zip)"
  topics = ["docker", "aws", "cli", "github-actions"]

  visibility = "public"

  actions = {
    secrets = {
      DOCKER_HUB_TOKEN = var.docker_hub_token
    }
  }
}
