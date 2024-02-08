# resource "aws_internet_gateway" "internet_gateway" {
#   vpc_id = module.vpc.vpc_id

#   tags = {
#     Name = "MyInternetGateway"
#     # Add any other tags as needed
#   }
# }



# resource "aws_route_table" "public_route_table" {
#   vpc_id = module.vpc.vpc_id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.internet_gateway.id  # Replace with your Internet Gateway ID
#   }

#   tags = {
#     Name = "PublicRouteTable"
#     # Add any other tags as needed
#   }
# }

# resource "aws_route_table_association" "public_subnet_association" {
#   subnet_id      = module.vpc.public_subnets[0]  # Replace with the appropriate public subnet ID
#   route_table_id = aws_route_table.public_route_table.id
# }
