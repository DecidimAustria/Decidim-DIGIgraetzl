variable "APP_NAME" {}

variable "POSTGRES_VERSION" {
  default = "13"
}

variable "AWS_ACCESS_KEY_ID" {
  default = ""
}
variable "AWS_SECRET_ACCESS_KEY" {
  default = ""
}
variable "AWS_TRANSLATE_REGION" {
  default = ""
}
variable "DECIDIM_MAILER_SENDER" {}
variable "DOKKU_LETSENCRYPT_EMAIL" {
  default = "alex@rusa.at"
}
variable "MAPS_API_KEY" {
  default = ""
}
variable "RAILS_MASTER_KEY" {}
variable "SENTRY_DSN" {}
variable "SMTP_ADDRESS" {}
variable "SMTP_DOMAIN" {}
variable "SMTP_PASSWORD" {}
variable "SMTP_USERNAME" {}

variable "domains" {
  type = list(string)
}