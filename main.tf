data "msgraph_resource" "resource_lookup" {
  for_each = var.resource_lookup

  url                    = each.value.url
  api_version            = each.value.api_version
  headers                = each.value.headers
  query_parameters       = each.value.query_parameters
  response_export_values = each.value.response_export_values
  retry                  = each.value.retry

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

