project_id = "searce-playground-v1"
region     = "asia-south1"

buckets = [
/* Bucket Configuration */
{
  name               = "priya-terraform-bucket"
  location           = "asia-south1"
  storage_class      = "STANDARD"
  versioning         = true
  force_destroy      = false
  labels             = { env = "dev" }
  iam_members        = [
  {  role = "roles/storage.objectViewer",
     member = "user:priya.soni@searce.com"
  }
  ]
  lifecycle_rules    = [
  {
    condition = {
      age = 30
    }
    action = {
      type = "SetStorageClass"
      storage_class = "NEARLINE"
    }
  }  
  ]
  uniform_bucket_level_access = true
  bucket_policy_only = true
},

{
  name               = "priya-new-terraform-bucket"
  location           = "asia-south1"
  storage_class      = "STANDARD"
  versioning         = false
  force_destroy      = false
  labels             = { env = "dev" }
  iam_members        = [
  {  role = "roles/storage.objectViewer",
     member = "user:priya.soni@searce.com"
  }
  ]
  lifecycle_rules    = []
  #uniform_bucket_level_access = false
  bucket_policy_only = false
}

]