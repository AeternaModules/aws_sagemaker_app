output "sagemaker_apps_id" {
  description = "Map of id values across all sagemaker_apps, keyed the same as var.sagemaker_apps"
  value       = { for k, v in aws_sagemaker_app.sagemaker_apps : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sagemaker_apps_app_name" {
  description = "Map of app_name values across all sagemaker_apps, keyed the same as var.sagemaker_apps"
  value       = { for k, v in aws_sagemaker_app.sagemaker_apps : k => v.app_name if v.app_name != null && length(v.app_name) > 0 }
}
output "sagemaker_apps_app_type" {
  description = "Map of app_type values across all sagemaker_apps, keyed the same as var.sagemaker_apps"
  value       = { for k, v in aws_sagemaker_app.sagemaker_apps : k => v.app_type if v.app_type != null && length(v.app_type) > 0 }
}
output "sagemaker_apps_arn" {
  description = "Map of arn values across all sagemaker_apps, keyed the same as var.sagemaker_apps"
  value       = { for k, v in aws_sagemaker_app.sagemaker_apps : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sagemaker_apps_domain_id" {
  description = "Map of domain_id values across all sagemaker_apps, keyed the same as var.sagemaker_apps"
  value       = { for k, v in aws_sagemaker_app.sagemaker_apps : k => v.domain_id if v.domain_id != null && length(v.domain_id) > 0 }
}
output "sagemaker_apps_region" {
  description = "Map of region values across all sagemaker_apps, keyed the same as var.sagemaker_apps"
  value       = { for k, v in aws_sagemaker_app.sagemaker_apps : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_apps_resource_spec" {
  description = "Map of resource_spec values across all sagemaker_apps, keyed the same as var.sagemaker_apps"
  value       = { for k, v in aws_sagemaker_app.sagemaker_apps : k => one(v.resource_spec) if v.resource_spec != null && length(v.resource_spec) > 0 }
}
output "sagemaker_apps_space_name" {
  description = "Map of space_name values across all sagemaker_apps, keyed the same as var.sagemaker_apps"
  value       = { for k, v in aws_sagemaker_app.sagemaker_apps : k => v.space_name if v.space_name != null && length(v.space_name) > 0 }
}
output "sagemaker_apps_tags" {
  description = "Map of tags values across all sagemaker_apps, keyed the same as var.sagemaker_apps"
  value       = { for k, v in aws_sagemaker_app.sagemaker_apps : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sagemaker_apps_tags_all" {
  description = "Map of tags_all values across all sagemaker_apps, keyed the same as var.sagemaker_apps"
  value       = { for k, v in aws_sagemaker_app.sagemaker_apps : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "sagemaker_apps_user_profile_name" {
  description = "Map of user_profile_name values across all sagemaker_apps, keyed the same as var.sagemaker_apps"
  value       = { for k, v in aws_sagemaker_app.sagemaker_apps : k => v.user_profile_name if v.user_profile_name != null && length(v.user_profile_name) > 0 }
}

