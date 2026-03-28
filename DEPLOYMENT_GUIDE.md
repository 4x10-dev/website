# Final Deployment Guide (GitHub Pages)

Follow these steps to deploy your Astro site to GitHub Pages correctly.

### 1. One-Time Configuration
Open `astro.config.mjs` in your editor and update these placeholders:
- Replace `your-username` with your GitHub username.
- Replace `your-repo-name` with your repository name.

### 2. Prepare your GitHub Repository
- Go to [github.com](https://github.com/) and create a **New Repository**.
- Give it a name (e.g., `my-astro-site`).
- **Do not** initialize with a README or .gitignore.

### 3. Upload your code
Open your terminal (or use the `deploy.bat` / `deploy.command` files in the root):
```bash
git init
git add .
git commit -m "Initial deployment"
git remote add origin https://github.com/4x10-dev/website.git
git push -u origin main
```

### 4. Activate GitHub Actions
1. In your GitHub repository, go to **Settings** > **Pages**.
2. Under **Build and deployment** > **Source**, select **GitHub Actions** from the dropdown.

### 5. Success!
GitHub will now automatically build and deploy your site. You can watch the progress in the **Actions** tab of your repository. 

Your site will be available at:
`https://4x10-dev.github.io/website/`
