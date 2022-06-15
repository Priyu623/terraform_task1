terraform {
  backend "gcs" {
    bucket = "shubham-tfstate-backend-gcs"
    prefix = "terrafrom-improvement/env/dev/regions/asia-south-1/gcs/Task_1"
  }
}
