terraform {
  backend "s3" {
    bucket = "myawsbacket12"    # Here you can provide your bucket
    key    = "path/to/my/db"
    region = "us-east-1"
  }
}
