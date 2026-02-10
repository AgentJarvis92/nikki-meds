#!/bin/bash
# Auto-deploy Nikki's Medication App to Netlify
# Run this script whenever medication files are updated

cd "$(dirname "$0")"

echo "🚀 Deploying Nikki's Medication App..."

# Check if there are changes
if [[ -z $(git status -s) ]]; then
    echo "✅ No changes to deploy"
    exit 0
fi

# Show what's changed
echo "📝 Changes detected:"
git status -s

# Add all changes
git add -A

# Commit with timestamp
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
git commit -m "Update medication data - $TIMESTAMP"

# Push to GitHub
echo "⬆️  Pushing to GitHub..."
git push origin main

echo "✅ Pushed to GitHub!"
echo "🌐 Netlify will auto-deploy in ~30 seconds"
echo ""
echo "📱 Check deployment at: https://app.netlify.com"
echo ""
