terraform {
  cloud {
    organization = "jacobmammoliti"

    workspaces {
      name = "terraform-vault-manager"
    }
  }
}

# configure a root provider
provider "vault" {}

# configure an aliased provider, targetting the 'engineering' namespace
provider "vault" {
  alias     = "engineering"
  namespace = vault_namespace.engineering.path
}

# configure an aliased provider, targetting the 'cloud' namespace
provider "vault" {
  alias     = "cloud"
  namespace = vault_namespace.cloud.path
}