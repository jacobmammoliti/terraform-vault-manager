root_auth_backends = [
  {
    type              = "ldap"
    default_lease_ttl = "6h"
    max_lease_ttl     = "24h"
  }
]

engineering_auth_backends = [
  {
    type              = "kubernetes"
    default_lease_ttl = "30m"
    max_lease_ttl     = "1h"
  }
]

engineering_secrets_engines = [
  {
    environment = "prod"
    application = "boundary"
    type        = "transit"
    description = "Transit engine for HashiCorp Boundary deployment in production"
  },
  {
    environment = "dev"
    application = "app1"
    type        = "kv-v2"
    description = "Static secrets engine for App 1 in development"
  },
  {
    environment = "prod"
    application = "pia"
    type        = "kv-v2"
    description = "Static secrets engine for PIA credentials in production"
  }
]

cloud_secrets_engines = [
  {
    environment = "prod"
    application = "gcp"
    type        = "gcp"
    description = "GCP secrets engine for applications in production"
  }
]