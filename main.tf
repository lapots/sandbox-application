# disable for now
/*module "github_module" {
    source = "./github"
    
    github_token = "${var.github_token}"
}*/

resource "null_resource" "read_output" {
    provisioner "local-exec" {
        command = "echo \"do nothing\""
        # command = "git init && git remote add origin ${module.github_module.http_clone_url}"
    }
}

module "travis_module" {
    source = "./travis"
    
    travisci_token = "${var.travisci_token}"
    github_owner = "lapots"
    repo = "sandbox-application"
}

module "heroku_module" {
    source = "./heroku"
    
    heroku_api_key = "${var.heroku_api_key}"
    email = "sebastrident@gmail.com"
    app_name = "sandbox-ui"
}
