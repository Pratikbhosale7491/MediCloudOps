# Terraform AWS Provider
provider "aws" {
  region = var.aws_region
}

# VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "medi-vpc"
  }
}

# Subnet
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "medi-public-subnet"
  }
}

# EKS Cluster
resource "aws_eks_cluster" "medi_cluster" {
  name     = "medi-eks"
  role_arn = "arn:aws:iam::123456789012:role/EKSClusterRole" # dummy role

  vpc_config {
    subnet_ids = [aws_subnet.public.id]
  }

  depends_on = [aws_vpc.main]
}

# ECS Cluster
resource "aws_ecs_cluster" "medi_ecs" {
  name = "medi-ecs"
}
