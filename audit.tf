resource "vault_audit" "file" {
  type = "file"

  options = {
    file_path = "/opt/vault/vault_audit.log"
    log_raw   = false
  }
}