output "user_entitlements_id" {
  description = "Map of id values across all user_entitlements, keyed the same as var.user_entitlements"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.id }
}
output "user_entitlements_account_license_type" {
  description = "Map of account_license_type values across all user_entitlements, keyed the same as var.user_entitlements"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.account_license_type }
}
output "user_entitlements_descriptor" {
  description = "Map of descriptor values across all user_entitlements, keyed the same as var.user_entitlements"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.descriptor }
}
output "user_entitlements_licensing_source" {
  description = "Map of licensing_source values across all user_entitlements, keyed the same as var.user_entitlements"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.licensing_source }
}
output "user_entitlements_origin" {
  description = "Map of origin values across all user_entitlements, keyed the same as var.user_entitlements"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.origin }
}
output "user_entitlements_origin_id" {
  description = "Map of origin_id values across all user_entitlements, keyed the same as var.user_entitlements"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.origin_id }
}
output "user_entitlements_principal_name" {
  description = "Map of principal_name values across all user_entitlements, keyed the same as var.user_entitlements"
  value       = { for k, v in azuredevops_user_entitlement.user_entitlements : k => v.principal_name }
}

