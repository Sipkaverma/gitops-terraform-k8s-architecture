# Enterprise GitOps, Infrastructure-as-Code & Observability Architecture

Automated deployment pipeline leveraging **Terraform** for AWS infrastructure provisioning, **K3s** for lightweight Kubernetes orchestration, **ArgoCD** for declarative GitOps continuous delivery, and **Prometheus + Grafana** for cluster observability.

## Full-Stack Architecture Workflow

 

## Project Directory
* `terraform/`: AWS EC2 & Security Group provisioning with automated K3s bootstrap.
* `k8s/`: Declarative Kubernetes application manifests.
* `monitoring/`: Prometheus & Grafana stack manifests for metrics collection and visual dashboards.
* `argocd/`: GitOps Application controllers for automated reconciliation.