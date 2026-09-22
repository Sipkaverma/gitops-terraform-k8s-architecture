#!/bin/bash
set -e
# Install Lightweight Kubernetes (K3s)
curl -sfL https://get.k3s.io | sh -
sudo chmod 644 /etc/rancher/k3s/k3s.yaml