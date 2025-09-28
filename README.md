# MediCloudOps

**Project Type:** DevOps Portfolio / Cloud Infrastructure Automation  
**Tech Stack:** AWS (VPC, EC2, EKS, ECS), Terraform, Kubernetes, Docker, GitHub Actions CI/CD, FastAPI  

---

## Project Overview
MediCloudOps is a simulated DevOps project demonstrating **end-to-end cloud-native application deployment** and infrastructure automation.  
It showcases best practices for **CI/CD, containerization, Kubernetes deployment, and Infrastructure as Code (IaC)** using Terraform.

---

## Features
- Dockerized FastAPI application  
- Infrastructure provisioning with **Terraform**:
  - VPC with public subnet  
  - Security groups for SSH/HTTP access  
  - Placeholder EKS cluster  
  - Placeholder ECS cluster  
- Kubernetes manifests for deploying app to **EKS**:
  - Deployment with 2 replicas  
  - Service (ClusterIP)  
  - Ingress (NGINX style)  
- **CI/CD pipeline** with GitHub Actions:
  - Docker image build and push to DockerHub  
  - Simulated Kubernetes deployment  

---

## Folder Structure
MediCloudOps/
│── app/ # FastAPI app + Dockerfile
│── k8s/ # Kubernetes manifests
│── ecs/ # ECS task definition
│── terraform/ # Terraform code for AWS infra
│── .github/workflows/ # GitHub Actions CI/CD
│── README.md

 

---

## How to Run Locally
1. Clone repository:
```bash
git clone https://github.com/<your-username>/MediCloudOps.git
cd MediCloudOps/app
Build Docker image:

bash
Copy code
docker build -t medicloudops .
Run Docker container:

bash
Copy code
docker run -d -p 8080:8080 medicloudops
Test API:

bash
Copy code
curl http://localhost:8080/
curl http://localhost:8080/health
CI/CD
GitHub Actions workflow builds the Docker image and pushes it to DockerHub.

Simulated deployment using Kubernetes manifests (kubectl apply) to EKS.

Notes
This project simulates AWS deployment and demonstrates DevOps best practices.

Useful for showcasing Terraform IaC, Docker containerization, Kubernetes, and GitHub Actions in a portfolio.

yaml
Copy code

---

### ✅ How to Add it to Your Repo (PowerShell commands)
```powershell
# Go to root folder
cd C:\MediCloudOps

# Create README.md (if not exists) and paste content
notepad README.md
# (Paste the above content and save)

# Add, commit, and push
git add README.md
git commit -m "Added professional README.md for CV"
git push
