#! /usr/bin/env sh

set -e

npm run build

cd .vitepress/dist


git init
git add -A 
git commit -m 'deploy'

git push -f git@github.com:artdev-hash/bicol_translate.git master:gh-pages

cd -

