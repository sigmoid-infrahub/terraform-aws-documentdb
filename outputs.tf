output "cluster_id" {
  description = "DocumentDB cluster ID"
  value       = aws_docdb_cluster.this.id
}

output "endpoint" {
  description = "DocumentDB cluster endpoint"
  value       = aws_docdb_cluster.this.endpoint
}

output "module" {
  description = "Full module outputs"
  value = {
    cluster_id           = aws_docdb_cluster.this.id
    endpoint             = aws_docdb_cluster.this.endpoint
    db_subnet_group_name = local.db_subnet_group_name
    security_group_id    = var.create_security_group ? aws_security_group.this[0].id : null
  }
}

output "db_subnet_group_name" {
  description = "DocumentDB subnet group name"
  value       = local.db_subnet_group_name
}

output "security_group_id" {
  description = "Created security group ID"
  value       = var.create_security_group ? aws_security_group.this[0].id : null
}
