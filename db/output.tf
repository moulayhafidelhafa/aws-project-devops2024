output all {
value = data.terraform_remote_state.vpc.outputs
}

output "db_instance_address" {
  value = aws_db_instance.default.address  
}

output "db_instance_endpoint" {
  value =  aws_db_instance.default.endpiont 
}
output "rds_db_instance_username" {
  value = aws_db_instance.default.username 
}
output "rds_instance_name" {
  value = aws_db_instance.default.db_name  
} 
output "rds_instance_password {
  value = var.rds_master_password   
}
