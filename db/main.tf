resource "aws_db_subnet_group" "default" {
  name       = "advanced-main"
  subnet_ids = data.terraform_remote_state.vpc.outputs.public_subnets
}

resource "aws_db_instance" "default" {
  allocated_storage           = 10
  db_name                     = "mydb"
  engine                      = "mysql"
  engine_version              = "8.0"
  instance_class              = "db.t3.micro"
  manage_master_user_password = true
  username                    = "foo"
  parameter_group_name        = "default.mysql8.0"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.default.name
  vpc_security_group_ids = [
     aws_security_group.db-sg.id
  ]
  publicly_accessible = true 

}

#ALB Security Group 
resource "aws_security_group" "db-sg" {
  description = "DB Security Group"
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  # Allow HTTP/HTTPS from All
  egress {
   from_port        = 3306
   to_port          = 3306
   protocol         = "tcp"
   cidr_blocks      = ["0.0.0.0/0"]
  }

  # Allow all Outbound
  egress {
   from_port        = 0
   to_port          = 0
   protocol         = "-1"
   cidr_blocks      = ["0.0.0.0/0"]
  }
}

