# create the 'engineering' namespace in the default root namespace
resource "vault_namespace" "engineering" {
  path = "engineering"
}

# create the 'cloud' namespace in the default root namespace
resource "vault_namespace" "cloud" {
  path = "cloud"
}