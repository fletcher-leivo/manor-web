#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="/var/www/html"

echo "Deploying manor-web..."

cd "$REPO_DIR"
git pull origin main
echo "Git pull complete."

cp "$REPO_DIR/index.html" "$TARGET/index.html"
cp "$REPO_DIR/household.html" "$TARGET/household.html"
echo "Copied index.html and household.html to $TARGET"

echo "Deploy complete."
