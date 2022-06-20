/* Bucket Outputs */

output "gcs-bucket" {
  description = "Bucket resource"
  value       = module.gcs-bucket.*.bucket
}


output "gcs-bucket_name" {
  description = "Bucket name"
  value       = module.gcs-bucket.*.bucket.name
}


output "gcs-bucket_url" {
  description = "Bucket URL"
  value       = module.gcs-bucket.*.bucket.url
}
