# **Deploying a Python App to AWS ECS using GitHub Actions & Terraform**  

<img width="2193" height="2997" alt="Untitled Diagram drawio" src="https://github.com/user-attachments/assets/a3d7b36d-5580-4bc2-806d-b982b8756282" />

## Overview

This project automates the deployment of a **Python application** to **AWS Elastic Container Service (ECS)** using **GitHub Actions, Docker, and Terraform**.  

By the end of this guide, you'll have a fully automated **CI/CD pipeline** that:  
- **Builds a Docker image** of the Python app  
- **Pushes the image to AWS Elastic Container Registry (ECR)**  
- **Deploys the containerized app to ECS (Fargate)**  
- **Uses Terraform to provision and manage AWS infrastructure**  

---

## Project Goals

- **Develop a Python-based web application**
- **Containerize the app using Docker and push it to AWS ECR**
- **Deploy the app to AWS ECS using Terraform**
- **Automate testing, building, and deployment using GitHub Actions**  


## GitHub Secrets Configuration

Store sensitive AWS credentials in GitHub:  

1. Navigate to **Settings** → **Secrets and Variables** → **Actions**  
2. Click **New repository secret**  
3. Add the following secrets:  

| Secret Name | Value |
|------------|-------|
| `AWS_ACCESS_KEY_ID` | Your AWS Access Key |
| `AWS_SECRET_ACCESS_KEY` | Your AWS Secret Key |
| `AWS_REGION` | AWS Region (e.g., `us-east-1`) |
| `ECR_REPOSITORY` | Your AWS ECR Repository Name |
| `ECS_CLUSTER_NAME` | Your ECS Cluster Name |
| `ECS_SERVICE_NAME` | Your ECS Service Name |


## GitHub Actions CI/CD Workflow

Workflow File Location: `.github/workflows/workflow.yml`

### Workflow Overview

#### Triggers

- Runs by manual trigger from Github UI.  

#### Job 1: Build & Push Docker Image

- Builds the **Docker image** and pushes it to **AWS ECR**  

#### Job 2: Deploy to AWS ECS

- Updates the ECS Service to use the new container  


## Project Deployment Steps

### Step 1: Create S3 Bucket and DynamoDB for terraform backend based on `provider.tf`.
### Step 2: Manually trigger `Apply Terraform Environment` workflow.
### Step 3: Manually trigger `ECR ECS Deployment` workflow.
### Step 4: Manually trigger `Destroy Terraform Environment` workflow.

## Final Testing

Once deployment is successful, test the application:  

```sh
curl http://your-ecs-service-url
```

---

## Conclusion

**You’ve successfully deployed a Python app to AWS ECS using GitHub Actions & Terraform!**  

+ **Fully automated CI/CD pipeline**  
+ **Scalable & secure AWS infrastructure**  
+ **Seamless GitHub Actions integration**  

---
