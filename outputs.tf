output "discovery_engine_controls_id" {
  description = "Map of id values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no id are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "discovery_engine_controls_boost_action" {
  description = "Map of boost_action values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no boost_action are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => one(v.boost_action) if v.boost_action != null && length(v.boost_action) > 0 }
}
output "discovery_engine_controls_collection_id" {
  description = "Map of collection_id values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no collection_id are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => v.collection_id if v.collection_id != null && length(v.collection_id) > 0 }
}
output "discovery_engine_controls_conditions" {
  description = "Map of conditions values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no conditions are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => v.conditions if v.conditions != null && length(v.conditions) > 0 }
}
output "discovery_engine_controls_control_id" {
  description = "Map of control_id values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no control_id are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => v.control_id if v.control_id != null && length(v.control_id) > 0 }
}
output "discovery_engine_controls_deletion_policy" {
  description = "Map of deletion_policy values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no deletion_policy are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "discovery_engine_controls_display_name" {
  description = "Map of display_name values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no display_name are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "discovery_engine_controls_engine_id" {
  description = "Map of engine_id values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no engine_id are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => v.engine_id if v.engine_id != null && length(v.engine_id) > 0 }
}
output "discovery_engine_controls_filter_action" {
  description = "Map of filter_action values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no filter_action are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => one(v.filter_action) if v.filter_action != null && length(v.filter_action) > 0 }
}
output "discovery_engine_controls_location" {
  description = "Map of location values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no location are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => v.location if v.location != null && length(v.location) > 0 }
}
output "discovery_engine_controls_name" {
  description = "Map of name values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no name are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => v.name if v.name != null && length(v.name) > 0 }
}
output "discovery_engine_controls_project" {
  description = "Map of project values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no project are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => v.project if v.project != null && length(v.project) > 0 }
}
output "discovery_engine_controls_promote_action" {
  description = "Map of promote_action values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no promote_action are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => one(v.promote_action) if v.promote_action != null && length(v.promote_action) > 0 }
}
output "discovery_engine_controls_redirect_action" {
  description = "Map of redirect_action values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no redirect_action are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => one(v.redirect_action) if v.redirect_action != null && length(v.redirect_action) > 0 }
}
output "discovery_engine_controls_solution_type" {
  description = "Map of solution_type values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no solution_type are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => v.solution_type if v.solution_type != null && length(v.solution_type) > 0 }
}
output "discovery_engine_controls_synonyms_action" {
  description = "Map of synonyms_action values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no synonyms_action are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => one(v.synonyms_action) if v.synonyms_action != null && length(v.synonyms_action) > 0 }
}
output "discovery_engine_controls_use_cases" {
  description = "Map of use_cases values across all discovery_engine_controls, keyed the same as var.discovery_engine_controls except keys with no use_cases are omitted"
  value       = { for k, v in google_discovery_engine_control.discovery_engine_controls : k => v.use_cases if v.use_cases != null && length(v.use_cases) > 0 }
}

