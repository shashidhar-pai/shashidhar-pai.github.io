# shashidhar-pai.github.io

Source for [shashidharpai.com](https://www.shashidharpai.com) — Jekyll (Minima) on **GitHub Pages**, DNS at **Squarespace**.  
Local folder on disk may still be named `shashidharpai.github.io`; the GitHub repo must match your username: **`shashidhar-pai.github.io`**.

## Local development

1. [Install Ruby and Bundler](https://jekyllrb.com/docs/installation/).
2. In this directory:

   ```bash
   bundle install
   bundle exec jekyll serve
   ```

3. Open <http://localhost:4000>.

## Publish to GitHub

The site is wired to **`https://github.com/shashidhar-pai/shashidhar-pai.github.io`** (`origin`). From this folder:

```bash
git remote add origin https://github.com/shashidhar-pai/shashidhar-pai.github.io.git   # if not set
gh auth setup-git   # HTTPS pushes use gh credentials
git push origin main:master   # or: git checkout master && merge main && push
```

1. Repo → **Settings** → **Pages** → **Deploy from a branch** → **`master`** / **`/(root)`** (classic Jekyll build for the `github-pages` gem).

2. In **Settings → Pages → Custom domain**, add `www.shashidharpai.com` (the `CNAME` file is already in the repo).

See **[PUBLISHING.md](PUBLISHING.md)** for the full go-live checklist (DNS, HTTPS, verification).

## Prior site (academic pages)

The previous **academicpages**-style site on `master` was saved to branch **`archive/academic-pages-before-minima-2026-04-27`** before this Minima site replaced `master`.

## Content

- Migrated text snapshot: [../shashidharpai-site/content/SNAPSHOT.md](../shashidharpai-site/content/SNAPSHOT.md)
- Raw fetch of the old HTML: [../shashidharpai-site/content/snapshot-raw.html](../shashidharpai-site/content/snapshot-raw.html)

## License

Site text © you. Minima and Jekyll are under their own licenses.
