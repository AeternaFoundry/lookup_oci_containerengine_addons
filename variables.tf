variable "containerengine_addons_lookup" {
  description = <<EOT
Map of containerengine_addons_lookup, attributes below
Required:
    - cluster_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    cluster_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

