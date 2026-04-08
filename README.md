# CDM Homebrew Tools

Internal Homebrew tap for CDM command-line tools.

## Installation

### One-time Setup

```bash
brew tap cdm/tools https://github.com/cdm-ch/homebrew-cdm-tools.git
```

### Installing Tools

```bash
brew install cdm/tools/adc               # Atlassian Data Center CLI (Jira, Bitbucket, Confluence)
brew install cdm/tools/version-compare   # Compare Kubernetes cluster versions
brew install cdm/tools/better-clone      # Clone all repos from a Bitbucket project concurrently
brew install cdm/tools/k8s-cli-downloader # Download and manage kubectl, flux, istioctl
brew install cdm/tools/bb-analytics      # Analyze Bitbucket commit activity
```

### Updating

```bash
brew update && brew upgrade
```
