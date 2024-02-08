# module "eks" {
#   source = "terraform-aws-modules/eks/aws"

#   cluster_name                   = var.cluster_name
#   cluster_version                = "1.28"
#   cluster_endpoint_public_access = true

#   vpc_id     = module.vpc.vpc_id
#   # Specify public subnets for one node group
#   subnet_ids = [module.vpc.public_subnets[0], module.vpc.public_subnets[1],  module.vpc.public_subnets[2], 
#                 module.vpc.private_subnets[0], module.vpc.private_subnets[1],  module.vpc.private_subnets[2]]


#   eks_managed_node_groups = {
#     evo_cluster_dev = {
#       min_size               = 1
#       max_size               = 2
#       desired_size           = 1
#       vpc_security_group_ids = [aws_security_group.ssh_access_cluster.id]
#      instance_types         = [var.instance_type_t2_large]
#       # instance_types         = [var.instance_type_t3_micro]
#       tags = {
#         Name = "evo_stack_bank_cluster_dev"
#       }
#     }

#   }
# }


# # module "eks_prod" {
# #   source = "terraform-aws-modules/eks/aws"
# #   cluster_name                   = var.cluster_name_production
# #   cluster_version                = "1.28"
# #   cluster_endpoint_public_access = true

# #   vpc_id     = module.vpc.vpc_id
# #   # Specify public subnets for one node group
# #   subnet_ids = [module.vpc.public_subnets[0], module.vpc.public_subnets[1],  module.vpc.public_subnets[2], 
# #                 module.vpc.private_subnets[0], module.vpc.private_subnets[1],  module.vpc.private_subnets[2]]


# #   eks_managed_node_groups = {
# #     evo_cluster_prod = {
# #       min_size               = 0
# #       max_size               = 1
# #       desired_size           = 0
# #       vpc_security_group_ids = [aws_security_group.ssh_access_cluster.id]
# #       # instance_types         = [var.instance_type_t2_large]
# #       instance_types         = [var.instance_type_t3_micro]
# #       tags = {
# #         Name = "evo_stack_bank_cluster_prod"
# #       }
# #     }

# #   }
# # }


