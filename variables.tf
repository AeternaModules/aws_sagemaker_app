variable "sagemaker_apps" {
  description = <<EOT
Map of sagemaker_apps, attributes below
Required:
    - app_name
    - app_type
    - domain_id
Optional:
    - region
    - space_name
    - tags
    - tags_all
    - user_profile_name
    - resource_spec (block):
        - instance_type (optional)
        - lifecycle_config_arn (optional)
        - sagemaker_image_arn (optional)
        - sagemaker_image_version_alias (optional)
        - sagemaker_image_version_arn (optional)
EOT

  type = map(object({
    app_name          = string
    app_type          = string
    domain_id         = string
    region            = optional(string)
    space_name        = optional(string)
    tags              = optional(map(string))
    tags_all          = optional(map(string))
    user_profile_name = optional(string)
    resource_spec = optional(object({
      instance_type                 = optional(string)
      lifecycle_config_arn          = optional(string)
      sagemaker_image_arn           = optional(string)
      sagemaker_image_version_alias = optional(string)
      sagemaker_image_version_arn   = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_apps : (
        (length(v.app_name) >= 1 && length(v.app_name) <= 63) && (can(regex("^[0-9A-Za-z](-*[0-9A-Za-z]){0,62}", v.app_name)))
      )
    ])
    error_message = "all of: must be between 1 and 63 characters; Valid characters are a-z, A-Z, 0-9, and - (hyphen)."
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

