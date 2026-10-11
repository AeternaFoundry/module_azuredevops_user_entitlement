variable "user_entitlements" {
  description = <<EOT
Map of user_entitlements, attributes below
Optional:
    - account_license_type
    - licensing_source
    - origin
    - origin_id
    - principal_name
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    account_license_type = optional(string)
    licensing_source     = optional(string)
    origin               = optional(string)
    origin_id            = optional(string)
    principal_name       = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.user_entitlements : (
        v.principal_name == null || (length(trimspace(v.principal_name)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.user_entitlements : (
        v.origin_id == null || (length(trimspace(v.origin_id)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.user_entitlements : (
        v.origin == null || (length(trimspace(v.origin)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

