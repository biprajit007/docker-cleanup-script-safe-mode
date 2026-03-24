# docker-cleanup-script-safe-mode

A safety-first Bash wrapper around docker system df and docker system prune that defaults to SAFE_MODE=true and asks for confirmation before removal.

## Key features

- Shows current Docker disk usage first
- Defaults to non-destructive safe mode
- Interactive confirmation before prune when safe mode is off

## Project structure

- `docker_cleanup.sh` — Main cleanup script

## Requirements

- Bash
- Docker CLI and daemon access

## Setup

```bash
git clone https://github.com/biprajit007/docker-cleanup-script-safe-mode.git
cd docker-cleanup-script-safe-mode
chmod +x docker_cleanup.sh
```

## Usage

### Inspect only

```bash
./docker_cleanup.sh
```

### Allow pruning

```bash
SAFE_MODE=false ./docker_cleanup.sh
```

## Safety notes

- SAFE_MODE is intentionally true by default.
- docker system prune -a --volumes can delete stopped containers, unused images, networks, and volumes. Review the prompt carefully.

## Limitations / next improvements

- No per-resource filtering or dry-run diff beyond docker system df
- Interactive prompt makes unattended automation awkward
