provider "aws" {
  profile                 = "default"
  region                  = "us-east-1"
}

module "qoof" {
  source                  = "./../"
  qoof_external_id        = "aca97f25-c0d5-4db2-a71d-8d8cc2436933"
}