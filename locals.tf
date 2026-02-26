locals {
  db_subnet_group_name = var.create_db_subnet_group ? aws_docdb_subnet_group.this[0].name : var.db_subnet_group_name
  security_group_ids   = var.create_security_group ? [aws_security_group.this[0].id] : var.vpc_security_group_ids

  resolved_tags = merge({
    ManagedBy = "sigmoid"
  }, var.tags)
}
