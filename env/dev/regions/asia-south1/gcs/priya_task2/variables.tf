variable "project_id" {
  type        = string
  description = "GCP Project ID where the bucket will be created"
}

variable "region" {
  type        = string
  description = "GCP region where the bucket will be created"
}
/*
variable "bucket_policy_only" {
  description = "Enables Bucket Policy Only access to a bucket."
  type        = bool
}
*/

/* GCS Variables */
variable "buckets" {
  description = "terraform bucket configuration"
}


