# Increase log verbosity
log_level = "DEBUG"

# Setup data dir
data_dir  = "/opt/nomad"

region = "global"

datacenter = "dc1"

bind_addr = "0.0.0.0"

advertise {
  rpc = "{{ GetInterfaceIP \"enp0s8\" }}"
  http = "{{ GetInterfaceIP \"enp0s8\" }}"
  serf = "{{ GetInterfaceIP \"enp0s8\" }}"
}

# Enable the client
client {
  enabled = true
  servers = ["192.168.10.10:4647"]
}
