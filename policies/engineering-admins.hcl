# List existing secrets engines
path "sys/mounts" {
  capabilities = ["read"]
}

# Manage secrets engines
path "sys/mounts/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List ACL policies
path "sys/policies/acl" {
   capabilities = ["list"]
}

# Create and manage ACL policies
path "sys/policies/acl/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# For Web UI, view secrets engine
path "app1-dev/metadata" {
  capabilities = ["list"]
}

# Grant full access on 'app1-dev' secrets engine
path "app1-dev/data/*" {
  capabilities = ["create", "update", "read", "delete", "list"]
}

# Grant full access on 'app1-dev' secrets engine
path "boundary-prod/*" {
  capabilities = ["create", "update", "read", "delete", "list"]
}