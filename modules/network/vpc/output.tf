
output "id" {
  value = aws_vpc.vpc.id
}

output "arn" {
  value = aws_vpc.vpc.arn
}

output "route_table_id" {
  value = aws_vpc.vpc.main_route_table_id
}

output "network_acl_id" {
  value = aws_vpc.vpc.default_network_acl_id
}
