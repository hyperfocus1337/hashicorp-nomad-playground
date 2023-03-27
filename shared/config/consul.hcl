data_dir = "/opt/consul/data"
advertise_addr = "IP_ADDRESS"

bootstrap_expect = SERVER_COUNT

addresses = {
  http = "0.0.0.0"
  https = "0.0.0.0"
}

acl {
    enabled = true
    default_policy = "deny"
    down_policy = "extend-cache"
}

log_level = "INFO"

server = true

ui_config {
    enabled = true
}

retry_join = ["RETRY_JOIN"]

service {
    name = "consul"
}

connect {
  enabled = true
}

ports {
  grpc = 8502
}
