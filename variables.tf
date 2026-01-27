variable "cluster_identifier" {
  type        = string
  description = "DocumentDB cluster identifier"
}

variable "engine" {
  type        = string
  description = "DocumentDB engine"
  default     = "docdb"
}

variable "engine_version" {
  type        = string
  description = "Engine version"
  default     = null
}

variable "master_username" {
  type        = string
  description = "Master username"
  sensitive   = true
}

variable "master_password" {
  type        = string
  description = "Master password"
  sensitive   = true
}

variable "db_subnet_group_name" {
  type        = string
  description = "Subnet group name"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs"
  default     = []
}

variable "instance_class" {
  type        = string
  description = "Instance class"
}

variable "instance_count" {
  type        = number
  description = "Instance count"
  default     = 1
}

variable "port" {
  type        = number
  description = "Port"
  default     = 27017
}

variable "backup_retention_period" {
  type        = number
  description = "Backup retention period"
  default     = 7
}

variable "preferred_backup_window" {
  type        = string
  description = "Preferred backup window"
  default     = null
}

variable "preferred_maintenance_window" {
  type        = string
  description = "Preferred maintenance window"
  default     = null
}

variable "storage_encrypted" {
  type        = bool
  description = "Enable storage encryption"
  default     = true
}

variable "kms_key_id" {
  type        = string
  description = "KMS key ID"
  default     = null
}

variable "deletion_protection" {
  type        = bool
  description = "Deletion protection"
  default     = false
}

variable "apply_immediately" {
  type        = bool
  description = "Apply immediately"
  default     = false
}

variable "skip_final_snapshot" {
  type        = bool
  description = "Skip final snapshot"
  default     = false
}

variable "enabled_cloudwatch_logs_exports" {
  type        = list(string)
  description = "CloudWatch logs exports"
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply"
  default     = {}
}
