# Terraform Basic to Advanced 🚀

![Terraform](https://img.shields.io/badge/Terraform-IaC-blueviolet?style=for-the-badge&logo=terraform)  

## 📌 Overview
This repository is a **comprehensive guide** covering **Terraform from basic to advanced** concepts. It includes hands-on examples to **provision, manage, and automate cloud infrastructure** using Terraform on **AWS**.

## 📖 What You can expect in this repo
- **Terraform Providers, Resources & Modules**
- **State Management & Locking**
- **Meta Arguments: `for_each`, `depends_on`, Conditionals**
- **Terraform Workspaces & Environment Setup**
- **Deploying AWS Infrastructure:** EC2, S3, DynamoDB
- **Custom Modules for Dev, Prod, and Test Environments**
- **Creating EKS cluster on aws using terraform**

## 🛠️ Prerequisites
Before using this repository, ensure you have the following installed:
- [Terraform](https://developer.hashicorp.com/terraform/downloads) (Latest Version)
- [AWS CLI](https://aws.amazon.com/cli/) (For AWS authentication)
- [VS Code](https://code.visualstudio.com/) + Terraform Extensions

## 🚀 Getting Started
### 1️⃣ Clone the Repository
```bash
 git clone https://github.com/mpdhanveer05-prakash/Terraform-Basic2Advanced.git
 cd Terraform-Basic2Advanced
```

### 2️⃣ Configure AWS Credentials
Ensure your AWS credentials are set up:
```bash
 aws configure
```
Or use an IAM role in an AWS CloudShell environment.

### 3️⃣ Initialize Terraform
```bash
 terraform init
```

### 4️⃣ Plan & Apply Infrastructure
```bash
 terraform plan
 terraform apply -auto-approve
```

### 5️⃣ Destroy Infrastructure (Optional)
```bash
 terraform destroy -auto-approve
```

## 📂 Repository Structure
```bash
Terraform-Basic2Advanced/
│── Aws-ec2/                 # EC2 Instance Setup
│   ├── aws-ec2.tf
│   ├── install_nginx.sh
│   ├── outputs.tf
│   ├── provider.tf
│   ├── terraform.tf
│   ├── variables.tf
│   ├── vpc.tf
│
│── Custom-Module/           # Custom Terraform Modules
│   ├── main.tf
│   ├── providers.tf
│   ├── terraform.tf
│   ├── Services-code/       # Sub-folder for various services
│   │   ├── dynamodb.tf
│   │   ├── ec2.tf
│   │   ├── s3.tf
│   │   ├── variables.tf
│
│── EKS-using-terraform/     # EKS Cluster Deployment
│   ├── eks.tf
│   ├── provider.tf
│   ├── terraform.tf
│   ├── variables.tf
│   ├── vpc.tf
│── Extras/                  # Additional Terraform Scripts
│   ├── ec2-using-variables.tf
│   ├── multiple-ec2-creation-via-count.tf
│   ├── multiple-ec2-creation-via-for_each.tf
│   ├── output-file-for-multiple-ec2.tf
│   ├── outputs-for_each.tf
│   ├── variables.tf
│
│── Remote-backup/           # Remote State Management
│   ├── dynamodb.tf
│   ├── providers.tf
│   ├── s3.tf
│   ├── terraform.tf
│
│── README.md       
```

## 🎯 Key Implementations
✅ **Created EC2 Instances, S3 Buckets, and DynamoDB Tables** using Terraform.  
✅ **Built reusable custom modules** for infrastructure components.  
✅ **Implemented Workspaces for Dev, Prod, and Test environments.**  
✅ **Deployed an EKS Cluster using Terraform.**  

## 🤝 Contributing
Feel free to fork this repository, raise issues, or submit pull requests to improve and expand this Terraform guide. 


## 🎉 Acknowledgments
Special thanks to **[Shubham](https://www.linkedin.com/in/shubhamlondhe1996/)** for creating an amazing **Terraform-In-One-Shot** video that inspired this learning journey! 🚀

---
**Author:** [M.P. Dhanveer Prakash](https://github.com/mpdhanveer05-prakash)  
**LinkedIn:** [Connect Here](https://www.linkedin.com/in/mpdhanveer05-prakash/)  
**GitHub:** [Follow for More](https://github.com/mpdhanveer05-prakash)  
