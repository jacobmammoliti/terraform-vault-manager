# Manage auth methods
path "engineering/sys/capabilities-self" {
  capabilities = ["update"]
}

# Manage auth methods
path "engineering/auth/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create, update, and delete auth methods
path "engineering/sys/auth/*" {
  capabilities = ["create", "update", "delete", "sudo"]
}

# List auth methods
path "engineering/sys/auth" {
  capabilities = ["read"]
}

# List existing secrets engines
path "engineering/sys/mounts" {
  capabilities = ["read"]
}

# Manage secrets engines
path "engineering/sys/mounts/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List ACL policies
path "engineering/sys/policies/acl" {
   capabilities = ["list"]
}

# Create and manage ACL policies
path "engineering/sys/policies/acl/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Read data on number of tokens/entities
path "engineering/sys/internal/counters/*" {
  capabilities = ["read"]
}

# Create and manage entities and groups
path "engineering/identity/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# For Web UI, view secrets engine
path "engineering/+/metadata" {
  capabilities = ["list"]
}

# Grant full access on 'app1-dev' secrets engine
path "engineering/app1-dev/data/*" {
  capabilities = ["create", "update", "read", "delete", "list"]
}

# Grant full access on 'app1-dev' secrets engine
path "engineering/boundary-prod/*" {
  capabilities = ["create", "update", "read", "delete", "list"]
}

# Grant full access on 'app1-dev' secrets engine
path "engineering/pia-prod/*" {
  capabilities = ["create", "update", "read", "delete", "list"]
}

# Grant full access on 'app1-dev' secrets engine
path "engineering/consul-prod/*" {
  capabilities = ["create", "update", "read", "delete", "list"]
}