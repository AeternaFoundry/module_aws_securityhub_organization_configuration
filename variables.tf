variable "securityhub_organization_configurations" {
  description = <<EOT
Map of securityhub_organization_configurations, attributes below
Required:
    - auto_enable
Optional:
    - auto_enable_standards
    - region
    - organization_configuration (block):
        - configuration_type (required)
EOT

  type = map(object({
    auto_enable           = bool
    auto_enable_standards = optional(string)
    region                = optional(string)
    organization_configuration = optional(object({
      configuration_type = string
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

