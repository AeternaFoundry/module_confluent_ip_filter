resource "confluent_ip_filter" "ip_filters" {
  for_each = var.ip_filters

  filter_name      = each.value.filter_name
  ip_groups        = each.value.ip_groups
  resource_group   = each.value.resource_group
  operation_groups = each.value.operation_groups
  resource_scope   = each.value.resource_scope
}

