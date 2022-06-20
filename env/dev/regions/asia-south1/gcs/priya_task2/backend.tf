terraform {
  backend "gcs" {
    bucket = "priya-terraform-bucket"
    prefix = "TERRAFORM_TASK/env/dev/regions/asia-south-1/gcs/task2"
  }
}
