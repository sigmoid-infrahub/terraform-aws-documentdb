# Module: DocumentDB

This module manages an Amazon DocumentDB (with MongoDB compatibility) cluster and its instances.

## Features
- DocumentDB Cluster and Instance creation
- Storage encryption at rest
- Automated backup and maintenance window configuration
- Deletion protection
- CloudWatch logs exports

## Usage
```hcl
module "documentdb" {
  source = "../../terraform-modules/terraform-aws-documentdb"

  cluster_identifier    = "my-docdb-cluster"
  master_username       = "admin"
  master_password       = "password123"
  db_subnet_group_name  = "my-subnet-group"
  instance_class        = "db.t3.medium"
  instance_count        = 2
}
```

## Inputs
| Name | Type | Default | Description |
|------|------|---------|-------------|
| `cluster_identifier` | `string` | n/a | DocumentDB cluster identifier |
| `engine` | `string` | `"docdb"` | DocumentDB engine |
| `engine_version` | `string` | `null` | Engine version |
| `master_username` | `string` | n/a | Master username |
| `master_password` | `string` | n/a | Master password |
| `db_subnet_group_name` | `string` | n/a | Subnet group name |
| `vpc_security_group_ids` | `list(string)` | `[]` | Security group IDs |
| `instance_class` | `string` | n/a | Instance class |
| `instance_count` | `number` | `1` | Instance count |
| `port` | `number` | `27017` | Port |
| `backup_retention_period` | `number` | `7` | Backup retention period |
| `preferred_backup_window` | `string` | `null` | Preferred backup window |
| `preferred_maintenance_window` | `string` | `null` | Preferred maintenance window |
| `storage_encrypted` | `bool` | `true` | Enable storage encryption |
| `kms_key_id` | `string` | `null` | KMS key ID |
| `deletion_protection` | `bool` | `false` | Deletion protection |
| `apply_immediately` | `bool` | `false` | Apply immediately |
| `skip_final_snapshot` | `bool` | `false` | Skip final snapshot |
| `enabled_cloudwatch_logs_exports` | `list(string)` | `[]` | CloudWatch logs exports |
| `tags` | `map(string)` | `{}` | Tags to apply |

## Outputs
| Name | Description |
|------|-------------|
| `cluster_id` | DocumentDB cluster ID |
| `endpoint` | DocumentDB cluster endpoint |
| `module` | Full module outputs |

## Environment Variables
None

## Notes
- `master_username` and `master_password` are sensitive and should be handled securely.
- Ensure the subnet group and security groups allow access on the specified port.
