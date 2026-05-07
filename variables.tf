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
  default     = null
}

variable "create_db_subnet_group" {
  type        = bool
  description = "Whether to create a DocumentDB subnet group"
  default     = true
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs for subnet group creation"
  default     = []
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs"
  default     = []
}

variable "create_security_group" {
  type        = bool
  description = "Whether to create a security group for DocumentDB"
  default     = false
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for security group creation"
  default     = null
}

variable "security_group_ingress_cidr_blocks" {
  type        = list(string)
  description = "Ingress CIDR blocks allowed to access DocumentDB port"
  default     = ["10.0.0.0/8"]
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
  default     = ""
}

variable "deletion_protection" {
  type        = bool
  description = "Deletion protection"
  default     = true
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
  default     = ["audit", "profiler"]
}

variable "log_retention_in_days" {
  type        = number
  description = "CloudWatch log group retention in days"
  default     = 30
}

variable "log_kms_key_id" {
  type        = string
  description = "KMS key ID for CloudWatch log group encryption. Empty string disables explicit log group KMS encryption"
  default     = ""
}

variable "iam_database_authentication_enabled" {
  type        = bool
  description = "Enable IAM database authentication"
  default     = false
}

variable "auto_minor_version_upgrade" {
  type        = bool
  description = "Enable automatic minor version upgrades for cluster instances"
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply"
  default     = {}
}

# ====================================
# Sigmoid Tags Configuration
# ====================================

variable "sigmoid_environment" {
  description = "Sigmoid environment identifier for cost allocation"
  type        = string
  default     = ""
}

variable "sigmoid_project" {
  description = "Sigmoid project identifier for cost allocation"
  type        = string
  default     = ""
}

variable "sigmoid_team" {
  description = "Sigmoid team identifier for cost allocation"
  type        = string
  default     = ""
}
