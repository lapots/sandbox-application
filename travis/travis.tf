# create continuous integration infrastructure
provider "travisci" {
    github_owner = "${var.github_owner}"
    travisci_token = "${var.travisci_token}"
}

resource "travisci_repository" "travis_resource" {
    slug = "${var.github_owner}/${var.repo}"
}

