# CDM Homebrew Tools

Internal Homebrew tap for CDM command-line tools.

## Installation

### One-time Setup

```bash
# Option 1: Use git credential helper (will prompt once)
git config --global credential.https://git.cdm.smis.ch.helper store
brew tap cdm/tools https://git.cdm.smis.ch/bitbucket/scm/ccpt/homebrew-cdm-tools.git

# Option 2: Use Personal Access Token
brew tap cdm/tools https://username:token@git.cdm.smis.ch/bitbucket/scm/ccpt/homebrew-cdm-tools.git
```

### Installing Tools

```bash
# Install version-compare
brew install cdm/tools/version-compare

# Update to latest version
brew update && brew upgrade version-compare
```

## Available Tools

### version-compare

Kubernetes cluster version comparison tool with 10x performance improvement over Python version.

- Compares container versions across two clusters
- Supports pods, deployments, jobs, cronjobs
- Filters by namespace prefix
- Exports to CSV for Excel

## For Maintainers

New releases are automatically handled by the release script in each tool's repository.

## Requirements

- macOS with Apple Silicon (ARM64)
- Valid Kubernetes configurations
- BitBucket access for tap updates

## Troubleshooting

If authentication fails, create a Personal Access Token in BitBucket with repository read permissions.
