#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
BRANCH="main"
POLL_INTERVAL=30

cd "$REPO_DIR"

echo "[auto-deploy] watching $REPO_DIR on branch $BRANCH"

while true; do
  git fetch origin "$BRANCH" --quiet 2>/dev/null || true

  LOCAL=$(git rev-parse "$BRANCH" 2>/dev/null)
  REMOTE=$(git rev-parse "origin/$BRANCH" 2>/dev/null)

  if [ "$LOCAL" != "$REMOTE" ]; then
    echo "[auto-deploy] $(date): new commits detected, deploying..."
    git pull origin "$BRANCH" --ff-only
    docker compose up -d --build homepage
    echo "[auto-deploy] $(date): deploy complete"
  fi

  sleep "$POLL_INTERVAL"
done
