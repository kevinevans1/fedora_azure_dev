# Deploying K3s on Fedora Linux

This guide will walk you through the process of deploying K3s, a lightweight Kubernetes distribution, on Fedora Linux. K3s is designed to be a simple, easy-to-install, and fully compliant Kubernetes distribution.

## Prerequisites

Before you begin, ensure you have the following:

- A Fedora Linux system (Fedora 37 or above recommended)
- A user account with `sudo` privileges
- Internet connectivity

## Step 1: Update Your System

First, update your system to ensure all packages are up to date.

```bash
sudo dnf update -y
```

## Step 2: Install Dependencies

Install the necessary dependencies for K3s.

```bash
sudo dnf install -y curl iptables
```
## Configure Firewalld

```bash
firewall-cmd --permanent --add-port=6443/tcp #apiserver
firewall-cmd --permanent --zone=trusted --add-source=10.42.0.0/16 #pods
firewall-cmd --permanent --zone=trusted --add-source=10.43.0.0/16 #services
firewall-cmd --reload
```

### If enabled, it is required to disable nm-cloud-setup and reboot the node:

```bash
systemctl disable nm-cloud-setup.service nm-cloud-setup.timer
reboot
```

### Download and install K3s using the official installation script.

```bash
curl -sfL https://get.k3s.io | sh -
```
This script will:

Download the latest K3s binary
Install K3s as a systemd service
Start the K3s service

### Verify the Installation
Check the status of the K3s service to ensure it is running correctly.

```bash
sudo systemctl status k3s
```
Use kubectl to interact with the K3s cluster and verify that it is working correctly. For example, you can check the nodes in the cluster:

```bash
kubectl get nodes
```
