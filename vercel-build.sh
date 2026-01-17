#!/usr/bin/env bash
set -e

git remote -v || true

# Явно ставим origin на HTTPS (важно для LFS)
git remote remove origin 2>/dev/null || true
git remote add origin "https://github.com/krempovskyy/-BLOCK-sale.git"

# Явно задаём LFS endpoint
git config lfs.url "https://github.com/krempovskyy/-BLOCK-sale.git/info/lfs"

git lfs install
git lfs pull
echo done
