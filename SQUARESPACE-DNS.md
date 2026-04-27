# Squarespace DNS for GitHub Pages (shashidharpai.com)

Your GitHub user site is **`shashidhar-pai.github.io`** — the `www` CNAME target must be **`shashidhar-pai.github.io`** (with hyphens).

**Where:** Squarespace → **Domains** → `shashidharpai.com` → **DNS Settings** (or **Advanced settings** / **DNS** depending on the UI).

## Remove old records

Delete any of the following that you still have from Google Sites / other hosts:

- CNAME **www** → `ghs.googlehosted.com` or `*.google.com`
- Google site verification `TXT` records (you can remove after migration if not needed)
- **Any** A records for `@` that are not the GitHub IPs below

## Add: apex (root) A records

| Host / Name | Type | Data / Value      | TTL  |
|-------------|------|-------------------|------|
| `@`         | A    | `185.199.108.153` | 3600 |
| `@`         | A    | `185.199.109.153` | 3600 |
| `@`         | A    | `185.199.110.153` | 3600 |
| `@`         | A    | `185.199.111.153` | 3600 |

*Squarespace may label the host as `@`, blank, or the bare domain; all mean the apex (`shashidharpai.com`).*

## Add: apex AAAA (optional, IPv6 — recommended)

| Host | Type  | Data / Value         |
|------|-------|----------------------|
| `@`  | AAAA  | `2606:50c0:8000::153` |
| `@`  | AAAA  | `2606:50c0:8001::153` |
| `@`  | AAAA  | `2606:50c0:8002::153` |
| `@`  | AAAA  | `2606:50c0:8003::153` |

## Add: `www` CNAME

| Host  | Type   | Data / Value                          |
|-------|--------|---------------------------------------|
| `www` | CNAME  | `shashidhar-pai.github.io`             |

*Some UIs add a trailing dot; both are usually fine. Do not point `www` at a URL — only the hostname `username.github.io`.*

## CNAME file in the repo (already present)

The repository root has a `CNAME` file containing:

```text
www.shashidharpai.com
```

## Official reference

- [GitHub Pages: Managing a custom domain](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site)

## Verify before enabling HTTPS

After DNS propagates, `www.shashidharpai.com` should resolve to `shashidhar-pai.github.io` (via CNAME chain to GitHub Pages). Then in the repo: **Settings → Pages → Enforce HTTPS**.
