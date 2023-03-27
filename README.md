# Nomad

This is my little playground to improve my understanding of HashiCorp Nomad to host a HashiCorp Vault cluster.

## Packer

Enter the directory `cd packer`.

Build `packer build -var-file=variables.hcl image.pkr.hcl`

The AMI will be available after buiilding the image.

## Terraform

Enter the directory `cd terraform`.

First update the AMI ID in `variables.hcl` to the one you just built.

Then run `terraform init` and `terraform apply` to deploy the cluster.

The output of the cloud init script will be visible in the `/var/log/user-data.log` file.

The bootstrap tokens will be available in the `/tmp` directory on the instances.

You can login using `ssh ubuntu@<instance-ip> -i keys/nomad_key`.

## Consul

In case you want to access the Consul server, run `export CONSUL_HTTP_TOKEN=`

And run `consul members`.

You can access the Consul UI at `http://<instance-ip>:8500/ui/dc1/services`.
