# cluster-template

This repository is a **starter template** for creating a GitOps-managed Kubernetes cluster using:

- **[TrueForge](https://github.com/trueforge-org/forgetool)** – opinionated  tooling for cluster bootstrap and management
- **[cluster-scripts](https://github.com/xstar97/cluster-scripts)** – helper scripts for your kubernetes server
- **VS Code Dev Containers** – consistent, reproducible development environment

The goal is:
> Clone → Open in VS Code → Launch Dev Container → Start managing your cluster

---

## What This Repo Is For

This template is intended to be used as the **initial GitHub repository** for a Kubernetes cluster managed via GitOps.

It provides:
- A ready-to-use repo structure
- A preconfigured Dev Container
- Tooling required to manage clusters without polluting your host OS
- A clean starting point for TrueForge-based workflows

---

## Prerequisites

You’ll need the following installed **on your local machine**:

### Required
- **Docker**  
  - Docker Desktop (macOS / Windows)
    - reqires WSL 2 if using windows  
  - Docker Engine (Linux)
- **VS Code**
  - https://code.visualstudio.com/

### VS Code Extensions
Install these **before opening the repo**:
- **Dev Containers**  
  (`ms-vscode-remote.remote-containers`)
- **Docker** (optional but recommended)  
  (`ms-azuretools.vscode-docker`)

---

## Creating Your Cluster Repo

1. Click **“Use this template”** on GitHub  
2. Create a new repository (example: `my-homelab-cluster`)
3. Clone your new repo locally:

```bash
git clone https://github.com/<your-org>/<your-repo>.git
cd <your-repo>
