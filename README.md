# Daily Commit Automation

An automated GitHub repository that commits daily using GitHub Actions.

## Setup Instructions

### Step 1: Create a New GitHub Repository
1. Go to [GitHub](https://github.com/new) and create a new repository (e.g., `daily-commits` or `github-activity`).
2. Do **not** initialize it with a README, `.gitignore`, or license (keep it empty).

### Step 2: Push This Code to GitHub
Open your terminal in this directory (`C:\Users\st946\.gemini\antigravity\scratch\github-daily-commit`) and run:

```bash
git init
git add .
git commit -m "feat: initial commit for daily automation"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git push -u origin main
```
*(Replace `YOUR_USERNAME` and `YOUR_REPO_NAME` with your actual GitHub username and repository name).*

### Step 3: Grant Read & Write Permissions for GitHub Actions
1. On GitHub, go to your repository **Settings** -> **Actions** -> **General**.
2. Scroll down to **Workflow permissions**.
3. Select **Read and write permissions**.
4. Click **Save**.

### Step 4: Test It (Manual Trigger)
1. Go to the **Actions** tab in your GitHub repository.
2. Click on **Daily Commit Automation** on the left menu.
3. Click **Run workflow** -> **Run workflow**.
4. Check your repository: `LAST_COMMIT.md` will be updated with a new commit!

---

## How It Works
* The workflow in `.github/workflows/daily-commit.yml` runs automatically every day at 00:00 UTC.
* It appends the current date and timestamp to `LAST_COMMIT.md`, commits the change, and pushes it back to your repository.
* No computer hardware needs to be left running; GitHub handles execution 24/7 in the cloud.
