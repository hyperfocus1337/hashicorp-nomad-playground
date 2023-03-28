server = true
log_level = "INFO"
data_dir = "/opt/consul/data"
advertise_addr = "IP_ADDRESS"
retry_join = ["RETRY_JOIN"]
bootstrap_expect = SERVER_COUNT

addresses = {
  http = "0.0.0.0"
  https = "0.0.0.0"
}

ui_config {
    enabled = true
}

acl {
    enabled = true
    default_policy = "deny"
    down_policy = "extend-cache"
}

service {
    name = "consul"
}

connect {
  enabled = true
}

ports {
  grpc = 8502
}
