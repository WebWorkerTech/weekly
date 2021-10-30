#!/usr/bin/env sh

# abort on errors
set -e

# rm -rf docs/.vitepress/dist
# build
npm run docs:build

# navigate into the build output directory
cd docs/.vitepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git config init.defaultBranch master
git config user.email "fa@ijust.cc"
git config user.name "Otto"
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:WebWorkerFM/weekly.git master:gh-pages

cd -
