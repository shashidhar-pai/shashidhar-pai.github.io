# shashidharpai.github.io

Source for [shashidharpai.com](https://www.shashidharpai.com) — Jekyll (Minima) on **GitHub Pages**, DNS at **Squarespace**.

## Local development

1. [Install Ruby and Bundler](https://jekyllrb.com/docs/installation/).
2. In this directory:

   ```bash
   bundle install
   bundle exec jekyll serve
   ```

3. Open <http://localhost:4000>.

## Publish to GitHub

1. On GitHub, create a **public** repository named **`YOUR_USERNAME.github.io`** (must match your account username).
2. This folder is the repo root. Initialize and push (replace `YOUR_USERNAME` and remote URL):

   ```bash
   cd shashidharpai.github.io
   git init
   git add .
   git commit -m "Initial: Minima + migrated content, CNAME for www"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_USERNAME.github.io.git
   git push -u origin main
   ```

3. Repo → **Settings** → **Pages** → **Build and deployment** → **Source: GitHub Actions** *or* **Deploy from a branch: main / (root)** — the default for user sites is often branch `main` with the default workflow if using Actions, or the classic Pages **branch: main, folder: /(root)**.

4. In **Settings → Pages → Custom domain**, add `www.shashidharpai.com` (and ensure the `CNAME` file in the repo is present).

See **[PUBLISHING.md](PUBLISHING.md)** for the full go-live checklist (DNS, HTTPS, verification).

## If your GitHub username is not `shashidharpai`

- Rename the remote repo to `ACTUAL_USERNAME.github.io`.
- Update `github_username` in `_config.yml` and the **CNAME** target in `SQUARESPACE-DNS.md` (GitHub’s DNS instructions use `ACTUAL_USERNAME.github.io` for the `www` record).

## Content

- Migrated text snapshot: [../shashidharpai-site/content/SNAPSHOT.md](../shashidharpai-site/content/SNAPSHOT.md)
- Raw fetch of the old HTML: [../shashidharpai-site/content/snapshot-raw.html](../shashidharpai-site/content/snapshot-raw.html)

## License

Site text © you. Minima and Jekyll are under their own licenses.
