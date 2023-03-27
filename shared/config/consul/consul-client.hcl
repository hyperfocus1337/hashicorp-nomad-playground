log_level      = "INFO"
data_dir       = "/opt/consul/data"
advertise_addr = "IP_ADDRESS"
retry_join     = ["RETRY_JOIN"]

addresses = {
  http  = "0.0.0.0"
  https = "0.0.0.0"
}

ui_config {
  enabled = true
}

acl {
  enabled        = true
  default_policy = "deny"
  down_policy    = "extend-cache"
}

connect {
  enabled = true
}

ports {
  grpc = 8502
}
