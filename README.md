# cluster-template

This repository is a **starter template** for creating a GitOps-managed Kubernetes cluster using:

- **[ClusterTool](https://github.com/trueforge-org/clustertool)** – opinionated  tooling for cluster bootstrap and management
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
2. Create a new repository (example: `cluster`)
3. Clone your new repo locally:

```bash
git clone https://github.com/<your-org>/<your-repo>.git
cd <your-repo>
```

## Renovate

Please update the `.github/renovate.json5` and change the repo from *`xstar97-cluster-template`* to your own repo name and make any other additional changes you might want like schedule and timezone for example:

```json5
{
  "$schema": "https://docs.renovatebot.com/renovate-schema.json",
  "dependencyDashboardTitle": "Renovate Dashboard 🤖",
  "rebaseWhen": "conflicted",
  "schedule": ["before 06:00 AM"],
  "prHourlyLimit": 0,
  "commitHourlyLimit": 0,
  "extends": [
    "config:recommended",   
    ":timezone(America/New_York)", 
    ":disableRateLimiting",
    ":semanticCommits",
    ":configMigration",
    "helpers:pinGitHubActionDigests",
    "github>trueforge-org/renovate-config",
    "github>xstar97/cluster-template//.github/renovate/customManagers.json5",
    "github>xstar97/cluster-template//.github/renovate/kinds.json5",
    "github>xstar97/cluster-template//.github/renovate/semanticCommits.json5",
    "github>xstar97/cluster-template//.github/renovate/labels.json5",
    "github>xstar97/cluster-template//.github/renovate/autoMerge.json5",
    "github>xstar97/cluster-template//.github/renovate/groups.json5"
  ],
  "ignorePaths": [
    "**/*.sops.*",
    "**/.archive/**",
    "**/archive/**",
    "**/resources/**",
    "mise.toml"
  ]
}
```

## clustertool prep

Please follow the guide as best as possible

[![docs](https://img.shields.io/badge/docs-rtfm-yellow?logo=gitbook&logoColor=white&style=for-the-badge)](https://truecharts.org/guides/clustertool/)
[![ClusterTool Version](https://img.shields.io/github/v/release/trueforge-org/clustertool?style=for-the-badge&label=ClusterTool%20Version)](https://github.com/trueforge-org/clustertool/releases)