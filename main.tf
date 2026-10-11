resource "google_discovery_engine_control" "discovery_engine_controls" {
  for_each = var.discovery_engine_controls

  control_id      = each.value.control_id
  display_name    = each.value.display_name
  engine_id       = each.value.engine_id
  location        = each.value.location
  solution_type   = each.value.solution_type
  collection_id   = each.value.collection_id
  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  use_cases       = each.value.use_cases

  dynamic "boost_action" {
    for_each = each.value.boost_action != null ? [each.value.boost_action] : []
    content {
      data_store  = boost_action.value.data_store
      filter      = boost_action.value.filter
      fixed_boost = boost_action.value.fixed_boost
      dynamic "interpolation_boost_spec" {
        for_each = boost_action.value.interpolation_boost_spec != null ? [boost_action.value.interpolation_boost_spec] : []
        content {
          attribute_type = interpolation_boost_spec.value.attribute_type
          dynamic "control_point" {
            for_each = interpolation_boost_spec.value.control_point != null ? [interpolation_boost_spec.value.control_point] : []
            content {
              attribute_value = control_point.value.attribute_value
              boost_amount    = control_point.value.boost_amount
            }
          }
          field_name         = interpolation_boost_spec.value.field_name
          interpolation_type = interpolation_boost_spec.value.interpolation_type
        }
      }
    }
  }

  dynamic "conditions" {
    for_each = each.value.conditions != null ? each.value.conditions : []
    content {
      dynamic "active_time_range" {
        for_each = conditions.value.active_time_range != null ? conditions.value.active_time_range : []
        content {
          end_time   = active_time_range.value.end_time
          start_time = active_time_range.value.start_time
        }
      }
      query_regex = conditions.value.query_regex
      dynamic "query_terms" {
        for_each = conditions.value.query_terms != null ? conditions.value.query_terms : []
        content {
          full_match = query_terms.value.full_match
          value      = query_terms.value.value
        }
      }
    }
  }

  dynamic "filter_action" {
    for_each = each.value.filter_action != null ? [each.value.filter_action] : []
    content {
      data_store = filter_action.value.data_store
      filter     = filter_action.value.filter
    }
  }

  dynamic "promote_action" {
    for_each = each.value.promote_action != null ? [each.value.promote_action] : []
    content {
      data_store = promote_action.value.data_store
      search_link_promotion {
        description = promote_action.value.search_link_promotion.description
        document    = promote_action.value.search_link_promotion.document
        enabled     = promote_action.value.search_link_promotion.enabled
        image_uri   = promote_action.value.search_link_promotion.image_uri
        title       = promote_action.value.search_link_promotion.title
        uri         = promote_action.value.search_link_promotion.uri
      }
    }
  }

  dynamic "redirect_action" {
    for_each = each.value.redirect_action != null ? [each.value.redirect_action] : []
    content {
      redirect_uri = redirect_action.value.redirect_uri
    }
  }

  dynamic "synonyms_action" {
    for_each = each.value.synonyms_action != null ? [each.value.synonyms_action] : []
    content {
      synonyms = synonyms_action.value.synonyms
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

