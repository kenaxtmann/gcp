# Terraform

## Install Terraform

- [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- Run "choco install terraform"
- Test using "terraform --help"

## Setup GCP Login

```bash
    gcloud auth login
    gcloud config set project ken-axtmann
    gcloud auth application-default login
```

## Create project, deploy and destroy

```bash
    terraform init
    terraform validate
    terraform plan -out terraform-test.tfplan
    terraform apply terraform-test.tfplan
    terraform destroy
```
