# Task 3: Provision Docker Container Using Terraform

## Objective
Provision a local Docker container (Nginx) using Terraform to learn Infrastructure as Code (IaC).

## Tools Used
- Terraform v1.8.0
- Docker Desktop

## Steps Taken
1. Installed Terraform and Docker.
2. Wrote Terraform configuration using Docker provider.
3. Used `terraform init` to initialize.
4. Used `terraform plan` to preview.
5. Used `terraform apply` to provision Nginx container.
6. Accessed it at [http://localhost:8000](http://localhost:8000)
7. Used `terraform destroy` to clean up.

## Terraform Commands
```bash
terraform init
terraform plan
terraform apply
terraform destroy
