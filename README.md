# AWS IaC Project 📦🚀
A project primarily focused on real-world cloud architecture and DevOps system design patterns.

<br>

## 1️⃣ Workflow:

### Core planning and workflow:

- Infrastructure as Code (IaC) project using Terraform, Docker, and Ansible. 
- Automates AWS resource provisioning, containerization, and configuration management. 
- Scalable, reproducible, and production-ready cloud infrastructure setup.

<br>

### This repository uses:

- Terraform for infrastructure as code
- Docker for containerization
- Ansible for provisioning

<br>

## 2️⃣ Versions:

### v1.^.^ :

- v1.0.0: Base infrastructure build up using terraform (EC2, VPC, S3)
- v1.1.0: Private subnet added with separate router

<br>

## 3️⃣ Project Diagram (V1.1.0):

<img src="/public/v1.1.0.PNG" alt="Project Layout"/>

<br>

## 4️⃣ Code Run:

### For running the code,

- Rename the example.tf to provider.tf
- Write your AWS cloud providers access and secret key in the provider.tf (Get it from: Profile => Security Credentials => Access keys)
- Rename the example.tfvars to terraform.tfvars
- Make the changes in the terraform.tfvars accordingly
- Go to the setup directory and run the command below,

```sh
bash run.sh
```

<br>

### This project is still on development...
