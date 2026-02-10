# Netlify Auto-Deploy Setup

## Current Status
- ✅ GitHub repo: https://github.com/AgentJarvis92/nikki-meds
- ✅ Deploy script: `deploy.sh` (automated git push)
- ⏳ Netlify connection: Needs setup

## One-Time Setup (Kevin does this once)

### Connect Netlify to GitHub (Auto-Deploy)

1. **Go to Netlify:**
   - Visit: https://app.netlify.com
   - Log in with GitHub

2. **Import from GitHub:**
   - Click "Add new site" → "Import an existing project"
   - Choose GitHub
   - Select repo: `AgentJarvis92/nikki-meds`

3. **Build Settings:**
   - **Build command:** Leave blank (static site)
   - **Publish directory:** `.` (root)
   - Click "Deploy site"

4. **Done!**
   - Netlify will auto-deploy every time code is pushed to GitHub
   - You'll get a URL like: `nikki-meds.netlify.app`

## How Jarvis Will Deploy

Every time I update medication files, I'll run:
```bash
cd /Users/jarvis/.openclaw/workspace-nikki/deploy-meddies
./deploy.sh
```

This will:
1. Commit changes with timestamp
2. Push to GitHub
3. Netlify auto-deploys in ~30 seconds

## Manual Deploy (Alternative)

If Netlify isn't connected yet:
```bash
cd /Users/jarvis/.openclaw/workspace-nikki/deploy-meddies
netlify deploy --prod
```

(Requires `netlify login` first)

## Files That Trigger Deployment

When these files change, Jarvis will deploy:
- `nikki-meds.json` (Nikki's medication log)
- `nikki-meds-dashboard.html` (Main tracker)
- `nikki-meds-safety.html` (Safety checker)
- `lqts-drug-database.json` (Drug database)

## Current Deploy URL

*Add the Netlify URL here once connected*
