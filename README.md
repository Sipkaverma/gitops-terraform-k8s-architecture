# End-to-End GitOps & Observability Stack on AWS

## 📖 Overview
A fully automated deployment pipeline demonstrating Infrastructure-as-Code (Terraform), GitOps (ArgoCD), Lightweight Kubernetes (K3s), and automated CI security scanning on AWS

## 🏗️ Architecture
![diagram](image.png)

*   **Provisioning:** Terraform provisions an AWS EC2 instance and Security Groups.
*   **Orchestration:** K3s is automatically bootstrapped via cloud-init/user_data.
*   **Continuous Integration (CI):** GitHub Actions (Handles code checkout, Trivy filesystem & image security scans, Docker builds, and automated manifest patching).
*   **Continuous Deployment (CD):** ArgoCD (Monitors this repository and synchronizes state to the Kubernetes cluster automatically).
*   **Automation Helper:** Makefile for streamlined local or remote pipeline execution.

## 📂 Repository Structure
- `terraform/` - AWS infrastructure definitions.
- `k8s/` - Kubernetes manifests for the demo application.
- `argocd/` - ArgoCD Application manifests.
- `.github/` - For Continuous integration
- `Makefile/` - For standard automation interface

## 🚀 Prerequisites
- AWS CLI configured with appropriate IAM permissions.
- Terraform installed (v1.5+).
- Kubectl installed.
- Git.

## 🛠️ How to Deploy
1. **Clone the repo:**

   git clone https://github.com/Sipkaverma/gitops-terraform-k8s-architecture.git
   cd gitops-terraform-k8s-architecture

2. **Initialize Terraform:**

   make init

3. **Provision AWS Infrastructure:**

   make infra-up

4. **Deploy ArgoCD Root Application:**

   make deploy-apps

💡 Key Engineering Highlights
* **Decoupled Architecture:** Strict separation between application source code/CI pipeline and infrastructure/CD manifests to eliminate tight coupling.

* **Automated GitOps Loop:** CI pipeline automatically patches Kubernetes deployment image tags upon every successful build, triggering instant synchronization via ArgoCD.
