This project demonstrates a production-style CI/CD pipeline that provisions cloud infrastructure using Terraform and deploys a containerized application on AWS.

The focus is on infrastructure automation, deployment correctness, and secure delivery, rather than application complexity.

What This Project Covers
Infrastructure as Code (IaC)

AWS infrastructure provisioned using Terraform

Resources include:

EC2 instance (Ubuntu)

Security groups with least-privilege access

IAM role for EC2

Terraform state managed safely and reproducibly

Application Deployment

Containerized backend service

Deployed on EC2 using Docker / Docker Compose

Images pulled from a container registry (GHCR)

No local builds on the server

CI/CD Design
Continuous Integration (CI)

Implemented using GitHub Actions:

Docker image build

Security scanning using Trivy

Versioned image publishing to GitHub Container Registry (GHCR)

Every commit produces a secure, deployable artifact.

Continuous Deployment (CD)

Automated deployment pipeline:

Terraform runs in GitHub Actions to provision/update AWS resources

Application deployment performed via secure SSH

EC2 pulls the latest container image from the registry

Services restarted in a controlled and repeatable manner

This represents true end-to-end CI/CD, including infrastructure provisioning.

Security Practices

No hardcoded credentials

AWS access managed via GitHub Secrets / OIDC

SSH access controlled and auditable

Minimal IAM permissions
