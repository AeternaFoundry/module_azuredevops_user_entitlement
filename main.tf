resource "azuredevops_user_entitlement" "user_entitlements" {
  for_each = var.user_entitlements

  account_license_type = each.value.account_license_type
  licensing_source     = each.value.licensing_source
  origin               = each.value.origin
  origin_id            = each.value.origin_id
  principal_name       = each.value.principal_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

