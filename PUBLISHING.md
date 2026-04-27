# Go‑live checklist (GitHub Pages + Squarespace)

Complete these in order on **your** GitHub and Squarespace accounts. This file cannot be automated from your machine for security reasons.

## 1) Push this site to GitHub

- **Repository name:** `shashidhar-pai.github.io` (must match your GitHub username).
- **Visibility:** public (required for free GitHub Pages on a personal account, unless you use a paid org feature).
- Push the contents of the `shashidharpai.github.io` folder to the `main` branch.

**Enable Pages**

- `Settings` → `Pages` → under **Build and deployment**, set **Source** to **GitHub Actions**. This repository includes [`.github/workflows/jekyll-gh-pages.yml`](.github/workflows/jekyll-gh-pages.yml) so Jekyll runs on Ruby 3 in CI.
- If GitHub offers a suggested workflow, choose **Jekyll** / confirm the included workflow, or re-run the failed “Deploy Jekyll to GitHub Pages” job after the first push.
- Wait for the first green workflow run; the site will load at `https://shashidhar-pai.github.io`.

*(If you use **Deploy from a branch** instead, pick `main` and `/ (root)`; you do not need both. Actions is recommended to match the included `Gemfile`.)*

**Custom domain in GitHub**

- Still under `Settings` → `Pages` → `Custom domain`: enter `www.shashidharpai.com` and save.
- Do **not** check **Enforce HTTPS** until after DNS in step 2 propagates and GitHub shows a valid check for the domain.

## 2) Update DNS in Squarespace

Use [SQUARESPACE-DNS.md](SQUARESPACE-DNS.md) for the exact A, AAAA, and CNAME values.

After saving DNS, wait 15 minutes–a few hours; use [dnschecker.org](https://dnschecker.org) to confirm:

- `shashidharpai.com` A records point to `185.199.108-111.153` (or your resolved IPs)
- `www.shashidharpai.com` CNAME points to `shashidhar-pai.github.io`

## 3) Enable HTTPS

When GitHub Pages shows the custom domain as verified and the DNS check passes:

- `Settings` → `Pages` → enable **Enforce HTTPS**.

## 4) Verify

From this folder, once DNS and **Enforce HTTPS** are ready (or to debug):

```bash
./scripts/verify-site.sh
```

Or manually:

```bash
curl -sI "https://www.shashidharpai.com" | head -5
curl -sI "https://shashidharpai.com" | head -5
```

You should see `HTTP/2 200` (or `200`) and no certificate errors. Open both URLs in a browser.

**Optional: apex → www behavior**

- GitHub Pages can redirect the apex to `www` when the apex is configured; follow current [GitHub Pages custom domain docs](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site) if behavior differs from expectations.

## 5) Optional — remove the old Google Site

You cannot reclaim the old brown.edu Google Site if the account is gone. Once DNS no longer points to Google, `shashidharpai.com` is fully decoupled from that property.
