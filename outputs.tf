output "user_entitlements_id" {
  description = "Map of id values across all user_entitlements, keyed the same as var.user_entitlements except keys with no id are omitted"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_entitlements_account_license_type" {
  description = "Map of account_license_type values across all user_entitlements, keyed the same as var.user_entitlements except keys with no account_license_type are omitted"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.account_license_type if v.account_license_type != null && length(v.account_license_type) > 0 }
}
output "user_entitlements_descriptor" {
  description = "Map of descriptor values across all user_entitlements, keyed the same as var.user_entitlements except keys with no descriptor are omitted"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.descriptor if v.descriptor != null && length(v.descriptor) > 0 }
}
output "user_entitlements_licensing_source" {
  description = "Map of licensing_source values across all user_entitlements, keyed the same as var.user_entitlements except keys with no licensing_source are omitted"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.licensing_source if v.licensing_source != null && length(v.licensing_source) > 0 }
}
output "user_entitlements_origin" {
  description = "Map of origin values across all user_entitlements, keyed the same as var.user_entitlements except keys with no origin are omitted"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.origin if v.origin != null && length(v.origin) > 0 }
}
output "user_entitlements_origin_id" {
  description = "Map of origin_id values across all user_entitlements, keyed the same as var.user_entitlements except keys with no origin_id are omitted"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.origin_id if v.origin_id != null && length(v.origin_id) > 0 }
}
output "user_entitlements_principal_name" {
  description = "Map of principal_name values across all user_entitlements, keyed the same as var.user_entitlements except keys with no principal_name are omitted"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.principal_name if v.principal_name != null && length(v.principal_name) > 0 }
}

