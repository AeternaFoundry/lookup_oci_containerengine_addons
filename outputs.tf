output "containerengine_addons_lookup_id" {
  description = "Map of id values across all containerengine_addons_lookup, keyed the same as var.containerengine_addons_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_containerengine_addons.containerengine_addons_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "containerengine_addons_lookup_addons" {
  description = "Map of addons values across all containerengine_addons_lookup, keyed the same as var.containerengine_addons_lookup except keys with no addons are omitted"
  value       = { for k, v in data.oci_containerengine_addons.containerengine_addons_lookup : k => v.addons if v.addons != null && length(v.addons) > 0 }
}
output "containerengine_addons_lookup_cluster_id" {
  description = "Map of cluster_id values across all containerengine_addons_lookup, keyed the same as var.containerengine_addons_lookup except keys with no cluster_id are omitted"
  value       = { for k, v in data.oci_containerengine_addons.containerengine_addons_lookup : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "containerengine_addons_lookup_filter" {
  description = "Map of filter values across all containerengine_addons_lookup, keyed the same as var.containerengine_addons_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_containerengine_addons.containerengine_addons_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

