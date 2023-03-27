resource "tls_private_key" "default" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "default" {
  key_name   = "nomad_key"
  public_key = tls_private_key.default.public_key_openssh
}

resource "local_file" "private" {
  filename        = "keys/nomad_key"
  content         = tls_private_key.default.private_key_pem
  file_permission = "0400"
}

resource "local_file" "public" {
  filename = "keys/nomad_key.pub"
  content  = tls_private_key.default.public_key_openssh
}
