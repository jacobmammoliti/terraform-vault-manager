# Auth backends for 'root' namespace
resource "vault_auth_backend" "root_auth_backends" {
  for_each = { for auth_backend in var.root_auth_backends : auth_backend.type => auth_backend }

  type = each.value.type

  tune {
    default_lease_ttl = each.value.default_lease_ttl
    max_lease_ttl     = each.value.max_lease_ttl
  }
}

# Auth backends for 'engineering' namespace
resource "vault_auth_backend" "engineering_auth_backends" {
  provider = vault.engineering

  for_each = { for auth_backend in var.engineering_auth_backends : auth_backend.type => auth_backend }

  type = each.value.type

  tune {
    default_lease_ttl = each.value.default_lease_ttl
    max_lease_ttl     = each.value.max_lease_ttl
  }
}

# Roles for Kubernetes auth method in 'engineering' namespace
resource "vault_kubernetes_auth_backend_role" "engineering_kubernetes_auth_deluge_role" {
  provider = vault.engineering

  backend                          = vault_auth_backend.engineering_auth_backends["kubernetes"].path
  role_name                        = "deluge"
  bound_service_account_names      = ["deluge"]
  bound_service_account_namespaces = ["media"]
  token_ttl                        = 3600
  token_policies                   = ["engineering-pia-reader"]
}