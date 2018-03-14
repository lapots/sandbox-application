# create cloud infrastructure
provider "heroku" {
    email = "${var.email}"
    api_key = "${var.heroku_api_key}"
}

resource "heroku_app" "gradle_app" {
    name = "${var.app_name}"
    region = "us"
    
    buildpacks = [
        "heroku/gradle"
    ]
}
