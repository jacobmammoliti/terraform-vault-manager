# secrets engines for 'engineering' namespace
resource "vault_mount" "engineering_secrets_engines" {
  provider = vault.engineering

  for_each = { for secret_engine in var.engineering_secrets_engines : secret_engine.application => secret_engine }

  path        = format("%s-%s", each.value.application, each.value.environment)
  type        = each.value.type
  description = each.value.description
}

# secrets engines for 'cloud' namespace
resource "vault_mount" "cloud_secrets_engines" {
  provider = vault.cloud

  for_each = { for secret_engine in var.cloud_secrets_engines : secret_engine.application => secret_engine }

  path        = format("%s-%s", each.value.application, each.value.environment)
  type        = each.value.type
  description = each.value.description
}