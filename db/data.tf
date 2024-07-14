data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket =  "myawsbacket12"
    key    = "path/to/my/db"
    region = "us-east-1"
  }
}
