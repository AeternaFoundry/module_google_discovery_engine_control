variable "discovery_engine_controls" {
  description = <<EOT
Map of discovery_engine_controls, attributes below
Required:
    - control_id
    - display_name
    - engine_id
    - location
    - solution_type
Optional:
    - collection_id
    - deletion_policy
    - project
    - use_cases
    - boost_action (block):
        - data_store (required)
        - filter (required)
        - fixed_boost (optional)
        - interpolation_boost_spec (optional, block):
            - attribute_type (optional)
            - control_point (optional, block):
                - attribute_value (optional)
                - boost_amount (optional)
            - field_name (optional)
            - interpolation_type (optional)
    - conditions (block):
        - active_time_range (optional, block):
            - end_time (optional)
            - start_time (optional)
        - query_regex (optional)
        - query_terms (optional, block):
            - full_match (optional)
            - value (optional)
    - filter_action (block):
        - data_store (required)
        - filter (required)
    - promote_action (block):
        - data_store (required)
        - search_link_promotion (required, block):
            - description (optional)
            - document (optional)
            - enabled (optional)
            - image_uri (optional)
            - title (required)
            - uri (optional)
    - redirect_action (block):
        - redirect_uri (required)
    - synonyms_action (block):
        - synonyms (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    control_id      = string
    display_name    = string
    engine_id       = string
    location        = string
    solution_type   = string
    collection_id   = optional(string)
    deletion_policy = optional(string)
    project         = optional(string)
    use_cases       = optional(list(string))
    boost_action = optional(object({
      data_store  = string
      filter      = string
      fixed_boost = optional(number)
      interpolation_boost_spec = optional(object({
        attribute_type = optional(string)
        control_point = optional(object({
          attribute_value = optional(string)
          boost_amount    = optional(number)
        }))
        field_name         = optional(string)
        interpolation_type = optional(string)
      }))
    }))
    conditions = optional(list(object({
      active_time_range = optional(list(object({
        end_time   = optional(string)
        start_time = optional(string)
      })))
      query_regex = optional(string)
      query_terms = optional(list(object({
        full_match = optional(bool)
        value      = optional(string)
      })))
    })))
    filter_action = optional(object({
      data_store = string
      filter     = string
    }))
    promote_action = optional(object({
      data_store = string
      search_link_promotion = object({
        description = optional(string)
        document    = optional(string)
        enabled     = optional(bool)
        image_uri   = optional(string)
        title       = string
        uri         = optional(string)
      })
    }))
    redirect_action = optional(object({
      redirect_uri = string
    }))
    synonyms_action = optional(object({
      synonyms = optional(list(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

