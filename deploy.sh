#!/bin/bash

REPO_URL="https://github.com/gpartnoff9/gpartnoff9.github.io.git"
BRANCH="main"
COMMIT_MESSAGE=${1:-"Auto-deploy: $(date)"}

echo "🔄 Adding changes..."
git add .

echo "✅ Committing changes..."
git commit -m "$COMMIT_MESSAGE"

echo "🚀 Pushing to GitHub Pages..."
git push $REPO_URL $BRANCH

echo "🌐 Done! Visit: https://gpartnoff9.github.io"

