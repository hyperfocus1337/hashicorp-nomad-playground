# Nomad

This is my little playground to improve my understanding of HashiCorp Nomad to host a HashiCorp Vault cluster.

### AWS

Make sure you're logged into AWS, using `aws configure`.

Your credentials should be available in `~/.aws/credentials` before proceeding.

## Packer

Enter the directory `cd packer`.

Build `packer build -var-file=variables.hcl image.pkr.hcl`

The AMI will be available after building the image, copy the AMI ID from the portal.

Note:
``` txt
Packer ran the setup.sh script to install consul, nomad and vault
```

## Terraform

Enter the directory `cd terraform`.

Update the AMI ID in `variables.hcl` to the one you just built.

Then run `terraform init` and `terraform apply` to deploy the cluster.

The output of the cloud init script will be visible in the `/var/log/user-data.log` file.

The bootstrap tokens will be available in the `/tmp` directory on the instances.

You can login using `ssh ubuntu@<instance-ip> -i keys/nomad_key`.

Note:
``` txt
Packer ran the user-data-client.sh or user-data-server.sh script to configure and bootstrap the clusters
```

## Consul

In case you want to access the Consul server, run `export CONSUL_HTTP_TOKEN=`

And run `consul members`.

You can access the Consul UI at `http://<instance-ip>:8500/ui/dc1/services`.
