# policies for 'root' namespace
resource "vault_policy" "root_admins" {
  name   = "root-admins"
  policy = file("policies/root-admins.hcl")
}

# policies for 'engineering' namespace
resource "vault_policy" "engineering_admins" {
  provider = vault.engineering

  name   = "engineering-admins"
  policy = file("policies/engineering-admins.hcl")
}

resource "vault_policy" "engineering_boundary" {
  provider = vault.engineering

  name   = "engineering-boundary"
  policy = file("policies/engineering-boundary-user.hcl")
}

resource "vault_policy" "engineering_app1_reader" {
  provider = vault.engineering

  name   = "engineering-app1-reader"
  policy = file("policies/engineering-app1-reader.hcl")
}

resource "vault_policy" "engineering_pia_reader" {
  provider = vault.engineering

  name   = "engineering-pia-reader"
  policy = file("policies/engineering-pia-reader.hcl")
}

# policies for 'cloud' namespace
resource "vault_policy" "cloud_admins" {
  provider = vault.cloud

  name   = "cloud-admins"
  policy = file("policies/cloud-admins.hcl")
}