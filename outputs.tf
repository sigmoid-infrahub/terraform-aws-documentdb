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
    cluster_id = aws_docdb_cluster.this.id
    endpoint   = aws_docdb_cluster.this.endpoint
  }
}
