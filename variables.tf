variable "resource_lookup" {
  description = <<EOT
Map of resource_lookup, attributes below
Required:
    - url
Optional:
    - api_version
    - headers
    - query_parameters
    - response_export_values
    - retry
EOT

  type = map(object({
    url                    = string
    api_version            = optional(string)
    headers                = optional(map(string))
    query_parameters       = optional(map(any))
    response_export_values = optional(map(string))
    retry = optional(object({
      error_message_regex = list(string)
    }))
  }))
}

