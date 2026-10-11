output "ip_filters_id" {
  description = "Map of id values across all ip_filters, keyed the same as var.ip_filters except keys with no id are omitted"
  value       = { for k, v in confluent_ip_filter.ip_filters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ip_filters_filter_name" {
  description = "Map of filter_name values across all ip_filters, keyed the same as var.ip_filters except keys with no filter_name are omitted"
  value       = { for k, v in confluent_ip_filter.ip_filters : k => v.filter_name if v.filter_name != null && length(v.filter_name) > 0 }
}
output "ip_filters_ip_groups" {
  description = "Map of ip_groups values across all ip_filters, keyed the same as var.ip_filters except keys with no ip_groups are omitted"
  value       = { for k, v in confluent_ip_filter.ip_filters : k => v.ip_groups if v.ip_groups != null && length(v.ip_groups) > 0 }
}
output "ip_filters_operation_groups" {
  description = "Map of operation_groups values across all ip_filters, keyed the same as var.ip_filters except keys with no operation_groups are omitted"
  value       = { for k, v in confluent_ip_filter.ip_filters : k => v.operation_groups if v.operation_groups != null && length(v.operation_groups) > 0 }
}
output "ip_filters_resource_group" {
  description = "Map of resource_group values across all ip_filters, keyed the same as var.ip_filters except keys with no resource_group are omitted"
  value       = { for k, v in confluent_ip_filter.ip_filters : k => v.resource_group if v.resource_group != null && length(v.resource_group) > 0 }
}
output "ip_filters_resource_scope" {
  description = "Map of resource_scope values across all ip_filters, keyed the same as var.ip_filters except keys with no resource_scope are omitted"
  value       = { for k, v in confluent_ip_filter.ip_filters : k => v.resource_scope if v.resource_scope != null && length(v.resource_scope) > 0 }
}

