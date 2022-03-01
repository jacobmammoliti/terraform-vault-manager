resource "vault_raft_snapshot_agent_config" "local_backup" {
  name             = "local"
  interval_seconds = 86400 # 24h
  retain           = 5
  path_prefix      = "/opt/vault/snapshots/"
  storage_type     = "local"

  # Storage Type Configuration
  local_max_space = 10485760 # 10MB 
}