# Identity groups and their alias for 'root' namespace
resource "vault_identity_group" "administrators" {
  name     = "administrators"
  type     = "external"
  policies = ["root-admins"]
}

resource "vault_identity_group_alias" "administrators" {
  name           = "administrators"
  mount_accessor = vault_auth_backend.root_auth_backends["ldap"].accessor
  canonical_id   = vault_identity_group.administrators.id
}

resource "vault_identity_group" "engineering-administrators" {
  name     = "engineering-administrators"
  type     = "external"
  policies = ["engineering-admins"]
}

resource "vault_identity_group_alias" "engineering-administrators" {
  name           = "engineering-administrators"
  mount_accessor = vault_auth_backend.root_auth_backends["ldap"].accessor
  canonical_id   = vault_identity_group.engineering-administrators.id
}