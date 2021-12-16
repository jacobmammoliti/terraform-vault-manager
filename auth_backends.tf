# Secrets engines for 'root' namespace
resource "vault_auth_backend" "root_auth_backend" {
  for_each = { for auth_backend in var.root_auth_backends : auth_backend.type => auth_backend }

  type = each.value.type

  tune {
    default_lease_ttl = each.value.default_lease_ttl
    max_lease_ttl     = each.value.max_lease_ttl
  }
}