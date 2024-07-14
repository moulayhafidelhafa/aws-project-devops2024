output "vpc_id" {                           #"The ID of VPC"
  value = module.vpc.vpc_id
}

output public_subnets {                      #"The IDs of the public subnetes"
  value = module.vpc.public_subnets
}

output private_subnets {                    #The IDs of thr private subnets
  value = module.vpc.private_subnets
}

output "natgw_ids" {                        #THE ID of the natgw
    value = module_vpc natgw_ids
}

output "igw_id" {
    value = module_vpc igw_id
}