terraform {
  required_providers {
    dokku = {
      source  = "aaronstillwell/dokku"
    }
  }
}

provider "dokku" {
  ssh_host = "decidim-dokku1.spreademotions.com"
  ssh_user = "dokku"
  # ssh_port = 22
  ssh_cert = "/Users/alex/.ssh/id_rsa_decidim-dokku1"
}

resource "dokku_app" "rails-app" {
  name = var.APP_NAME

  config_vars = {
    AWS_ACCESS_KEY_ID = var.AWS_ACCESS_KEY_ID
    AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY
    AWS_TRANSLATE_REGION = var.AWS_TRANSLATE_REGION
    DECIDIM_FORCE_SSL = "false"
    DECIDIM_MAILER_SENDER = var.DECIDIM_MAILER_SENDER
    DOKKU_LETSENCRYPT_EMAIL = var.DOKKU_LETSENCRYPT_EMAIL
    MAPS_API_KEY = var.MAPS_API_KEY
    RAILS_MASTER_KEY = var.RAILS_MASTER_KEY
    SENTRY_DSN = var.SENTRY_DSN
    SMTP_ADDRESS = var.SMTP_ADDRESS
    SMTP_DOMAIN = var.SMTP_DOMAIN
    SMTP_PASSWORD = var.SMTP_PASSWORD
    SMTP_USERNAME = var.SMTP_USERNAME
  }

  domains = var.domains

  buildpacks = [
    "https://github.com/heroku/heroku-buildpack-nodejs.git",
    "https://github.com/heroku/heroku-buildpack-ruby.git"
  ]
}

resource "dokku_postgres_service" "rails-postgres" {
  name          = var.APP_NAME
  image_version = var.POSTGRES_VERSION
}

resource "dokku_redis_service" "rails-redis" {
  name          = var.APP_NAME
}

# Link the services to the app...
resource "dokku_postgres_service_link" "rails-postgres-link" {
  app     = dokku_app.rails-app.name
  service = dokku_postgres_service.rails-postgres.name

  # alias = "TEST_DB_URL"
  # query_string = ""
}

resource "dokku_redis_service_link" "rails-redis-link" {
  app     = dokku_app.rails-app.name
  service = dokku_redis_service.rails-redis.name

  # alias = "TEST_REDIS_URL"
  # query_string = ""
}