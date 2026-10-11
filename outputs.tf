output "securityhub_organization_configurations_id" {
  description = "Map of id values across all securityhub_organization_configurations, keyed the same as var.securityhub_organization_configurations"
  value       = { for k, v in aws_securityhub_organization_configuration.securityhub_organization_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "securityhub_organization_configurations_auto_enable" {
  description = "Map of auto_enable values across all securityhub_organization_configurations, keyed the same as var.securityhub_organization_configurations"
  value       = { for k, v in aws_securityhub_organization_configuration.securityhub_organization_configurations : k => v.auto_enable if v.auto_enable != null }
}
output "securityhub_organization_configurations_auto_enable_standards" {
  description = "Map of auto_enable_standards values across all securityhub_organization_configurations, keyed the same as var.securityhub_organization_configurations"
  value       = { for k, v in aws_securityhub_organization_configuration.securityhub_organization_configurations : k => v.auto_enable_standards if v.auto_enable_standards != null && length(v.auto_enable_standards) > 0 }
}
output "securityhub_organization_configurations_organization_configuration" {
  description = "Map of organization_configuration values across all securityhub_organization_configurations, keyed the same as var.securityhub_organization_configurations"
  value       = { for k, v in aws_securityhub_organization_configuration.securityhub_organization_configurations : k => one(v.organization_configuration) if v.organization_configuration != null && length(v.organization_configuration) > 0 }
}
output "securityhub_organization_configurations_region" {
  description = "Map of region values across all securityhub_organization_configurations, keyed the same as var.securityhub_organization_configurations"
  value       = { for k, v in aws_securityhub_organization_configuration.securityhub_organization_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}

