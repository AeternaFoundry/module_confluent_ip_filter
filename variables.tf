variable "ip_filters" {
  description = <<EOT
Map of ip_filters, attributes below
Required:
    - filter_name
    - ip_groups
    - resource_group
Optional:
    - operation_groups
    - resource_scope
EOT

  type = map(object({
    filter_name      = string
    ip_groups        = set(string)
    resource_group   = string
    operation_groups = optional(set(string))
    resource_scope   = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

