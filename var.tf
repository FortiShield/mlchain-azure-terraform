variable "subscription-id" {
  type = string
  default = "0000000000000"
}

#virtual network variables
variable "region" {
  type = string
  default = "japaneast"
}

variable "ip-prefix" {
  type = string
  default = "10.99"
}
#end virtual network variables

variable "storage-account" {
  type = string
  default = "acamlchaintest"
}

variable "storage-account-container" {
  type = string
  default = "dfy"
}

variable "redis" {
  type = string
  default = "acamlchainredis"
}

variable "psql-flexible" {
  type = string
  default = "acamlchainpsql"
}

variable "pgsql-user" {
  type = string
  default = "user"
}

variable "pgsql-password" {
  type = string
  default = "#QWEASDasdqwe"
}

variable "aca-env" {
  type = string
  default = "mlchain-aca-env"
}

variable "aca-loga" {
  type = string
  default = "mlchain-loga"
}

variable "aca-cert-path" {
  type = string
  default = "./certs/mlchaincert.pfx"
}

variable "aca-cert-password" {
  type = string
  default = "password"
}

variable "aca-mlchain-customer-domain" {
  type = string
  default = "mlchain.khulnasoft.com"
}

variable "mlchain-api-image" {
  type = string
  default = "mlchain/mlchain-api:0.6.11"
}

variable "mlchain-sandbox-image" {
  type = string
  default = "mlchain/mlchain-sandbox:0.2.1"
}