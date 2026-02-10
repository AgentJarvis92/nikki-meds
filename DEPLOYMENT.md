# My Meddies - Deployment Guide

## Current Setup ✅

**Live Site:** https://agentjarvis92.github.io/nikki-meds/nikki-meds-dashboard.html  
**Repository:** https://github.com/AgentJarvis92/nikki-meds  
**Platform:** GitHub Pages (free, auto-deploys from `main` branch)

## How It Works

Every time code is pushed to the `main` branch, GitHub Pages automatically rebuilds and deploys the site in ~30 seconds.

## Jarvis Auto-Deploy

When I update medication files (nikki-meds.json, etc.), I automatically run:

```bash
cd /Users/jarvis/.openclaw/workspace-nikki/deploy-meddies
./deploy.sh
```

This script:
1. Detects changes
2. Commits with timestamp
3. Pushes to GitHub
4. GitHub Pages auto-deploys

## Manual Deploy

If you need to deploy manually:

```bash
cd /Users/jarvis/.openclaw/workspace-nikki/deploy-meddies
git add -A
git commit -m "Update medication data"
git push origin main
```

## Files That Trigger Deployment

- `nikki-meds.json` - Medication log
- `nikki-meds-dashboard.html` - Main tracker
- `nikki-meds-safety.html` - Safety checker
- `lqts-drug-database.json` - Drug database
- `med-icon.jpeg` - Frog icon

## Access the Site

**Dashboard:** https://agentjarvis92.github.io/nikki-meds/nikki-meds-dashboard.html  
**Safety Checker:** https://agentjarvis92.github.io/nikki-meds/nikki-meds-safety.html

## Configuration

GitHub Pages settings (in repo):
- Settings → Pages
- Source: Deploy from branch `main`
- Folder: `/` (root)
- Custom domain: None (using default github.io URL)

## Status

✅ **Fully automated** - Jarvis handles all deployments automatically when medication data changes.
