output "resource_lookup_id" {
  description = "Map of id values across all resource_lookup, keyed the same as var.resource_lookup except keys with no id are omitted"
  value       = { for k, v in data.msgraph_resource.resource_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resource_lookup_api_version" {
  description = "Map of api_version values across all resource_lookup, keyed the same as var.resource_lookup except keys with no api_version are omitted"
  value       = { for k, v in data.msgraph_resource.resource_lookup : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "resource_lookup_headers" {
  description = "Map of headers values across all resource_lookup, keyed the same as var.resource_lookup except keys with no headers are omitted"
  value       = { for k, v in data.msgraph_resource.resource_lookup : k => v.headers if v.headers != null && length(v.headers) > 0 }
}
output "resource_lookup_output" {
  description = "Map of output values across all resource_lookup, keyed the same as var.resource_lookup except keys with no output are omitted"
  value       = { for k, v in data.msgraph_resource.resource_lookup : k => v.output if v.output != null }
}
output "resource_lookup_query_parameters" {
  description = "Map of query_parameters values across all resource_lookup, keyed the same as var.resource_lookup except keys with no query_parameters are omitted"
  value       = { for k, v in data.msgraph_resource.resource_lookup : k => v.query_parameters if v.query_parameters != null && length(v.query_parameters) > 0 }
}
output "resource_lookup_response_export_values" {
  description = "Map of response_export_values values across all resource_lookup, keyed the same as var.resource_lookup except keys with no response_export_values are omitted"
  value       = { for k, v in data.msgraph_resource.resource_lookup : k => v.response_export_values if v.response_export_values != null && length(v.response_export_values) > 0 }
}
output "resource_lookup_retry" {
  description = "Map of retry values across all resource_lookup, keyed the same as var.resource_lookup except keys with no retry are omitted"
  value       = { for k, v in data.msgraph_resource.resource_lookup : k => v.retry if v.retry != null && length(v.retry) > 0 }
}
output "resource_lookup_url" {
  description = "Map of url values across all resource_lookup, keyed the same as var.resource_lookup except keys with no url are omitted"
  value       = { for k, v in data.msgraph_resource.resource_lookup : k => v.url if v.url != null && length(v.url) > 0 }
}

