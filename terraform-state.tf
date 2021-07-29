terraform {
  backend "s3" {
    bucket         = "aamus-s3-dev-dlk-config"
    key            = "terraform-state-file/etl-citicash.tfstate"
    region         = "us-east-1"
    dynamodb_table = "aamus-dev-terraform-state-lock"
  }
}