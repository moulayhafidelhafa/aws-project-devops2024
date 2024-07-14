# Create remote state

terraform {
  backend "s3" {
    bucket = "myawsbacket12"    # Here you can provide your bucket
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
