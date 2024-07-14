output "vpc_id" {
  value = module.vpc.vpc_id
}

output public_subnets {
  value = module.vpc.public_subnets
}

output private_subnets {
  value = module.vpc.private_subnets
}

output "natgw_ids" {
    value = module_vpc natgw_ids
}

output "igw_id" {
    value = module_vpc igw_id
}