variable "domain_name" {
  type        = string
  description = "The domain name of route 53"  # provide your domain name
}

variable "rds_master_password" {
  type        = string
  description = "The master password for the RDS instance"
}
