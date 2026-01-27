resource "aws_docdb_cluster" "this" {
  cluster_identifier = var.cluster_identifier
  engine             = var.engine
  engine_version     = var.engine_version

  master_username = var.master_username
  master_password = var.master_password

  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = var.vpc_security_group_ids

  port = var.port

  backup_retention_period      = var.backup_retention_period
  preferred_backup_window      = var.preferred_backup_window
  preferred_maintenance_window = var.preferred_maintenance_window

  storage_encrypted = var.storage_encrypted
  kms_key_id        = var.kms_key_id

  deletion_protection = var.deletion_protection
  apply_immediately   = var.apply_immediately
  skip_final_snapshot = var.skip_final_snapshot

  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports

  tags = local.resolved_tags
}

resource "aws_docdb_cluster_instance" "this" {
  count = var.instance_count

  identifier         = "${var.cluster_identifier}-${count.index}"
  cluster_identifier = aws_docdb_cluster.this.id
  instance_class     = var.instance_class
}

