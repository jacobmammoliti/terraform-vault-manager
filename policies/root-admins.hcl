# Read system health check
path "sys/health" {
  capabilities = ["read", "sudo"]
}

# Read license
path "sys/license" {
  capabilities = ["read"]
}

# Read and Manage storage
path "sys/storage/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Read license status
path "sys/license/status" {
  capabilities = ["read"]
}

# Rotate encryption key
path "sys/rotate" {
  capabilities = ["update", "sudo"]
}

# List enabled audit devices
path "sys/audit" {
  capabilities = ["read", "sudo"]
}

# Enable and manage audit devices
path "sys/audit/*" {
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

# Manage auth methods
path "auth/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create, update, and delete auth methods
path "sys/auth/*" {
  capabilities = ["create", "update", "delete", "sudo"]
}

# List auth methods
path "sys/auth" {
  capabilities = ["read"]
}

# List existing secrets engines
path "sys/mounts" {
  capabilities = ["read"]
}

# Manage secrets engines
path "sys/mounts/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create and manage entities and groups
path "identity/*" {
   capabilities = ["create", "read", "update", "delete", "list"]
}

# Enable and manage replication
path "sys/replication/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List namespaces
path "sys/namespaces" {
   capabilities = ["list"]
}

# Manage namespaces
path "sys/namespaces/*" {
   capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Full access to engineering namespace
path "engineering/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Full access to cloud namespace
path "cloud/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}