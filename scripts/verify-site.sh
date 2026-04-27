#!/usr/bin/env bash
# Run after DNS + HTTPS: checks both apex and www
set -e
echo "== https://www.shashidharpai.com =="
curl -sS -I "https://www.shashidharpai.com" | head -8
echo
echo "== https://shashidharpai.com =="
curl -sS -I "https://shashidharpai.com" | head -8
echo
echo "Done. Look for HTTP/2 200 and a valid cert (no connection errors)."
