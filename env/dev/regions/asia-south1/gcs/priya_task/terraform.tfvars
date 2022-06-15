project_id = "searce-playground-v1"
region     = "asia-south1"

buckets = [
/* Bucket Configuration */
{
  name               = "shubham-tfi-bucket-1"
  location           = "asia-south1"
  storage_class      = "STANDARD"
  versioning         = true
  force_destroy      = false
  labels             = { env = "dev" }
  iam_members        = [
  {  role = "roles/storage.objectViewer",
     member = "user:shubham.bhardwaj@searce.com"
  }
  ]
  lifecycle_rules    = [
  {
    condition = {
      age = 90
    }
    action = {
      type = "Delete"
    }
  }  
  ]
  bucket_policy_only = true
}
]
