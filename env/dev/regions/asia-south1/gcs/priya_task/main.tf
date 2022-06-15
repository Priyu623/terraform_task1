module "gcs-bucket" {
  source             = "../../../../../../modules/gcs_bucket"
  count   = length(var.buckets)
  name               = var.buckets[count.index]["name"]
  project_id         = var.project_id
  location           = var.buckets[count.index]["location"]
  storage_class      = var.buckets[count.index]["storage_class"]
  versioning         = var.buckets[count.index]["versioning"]
  labels             = var.buckets[count.index]["labels"]
  force_destroy      = false
  iam_members        = var.buckets[count.index]["iam_members"]
  lifecycle_rules    = var.buckets[count.index]["lifecycle_rules"]
  bucket_policy_only = var.buckets[count.index]["bucket_policy_only"]
}
