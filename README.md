# Docker Cleanup Script (Safe Mode)

Shows Docker disk usage and optionally prunes unused resources with a confirmation prompt.

## Features
- Safe mode by default
- Human confirmation before destructive prune
- Useful for periodic cleanup tasks

## Usage
```bash
SAFE_MODE=true ./docker_cleanup.sh
SAFE_MODE=false ./docker_cleanup.sh
```

## Disclaimer
When safe mode is disabled, unused containers, images, networks, and volumes may be removed.
