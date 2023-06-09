data_dir  = "/opt/nomad/data"

# Enable the server
server {
  enabled          = true
  bootstrap_expect = SERVER_COUNT
}

acl {
  enabled = true
}

consul {
  address = "127.0.0.1:8500"
  token = "CONSUL_TOKEN"
}

vault {
  enabled          = false
  address          = "http://active.vault.service.consul:8200"
  task_token_ttl   = "1h"
  create_from_role = "nomad-cluster"
  token            = ""
}
