#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build-Alicloud

# 进入生成的文件夹
cd docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy'
git remote add oschina git@47.102.122.237:/home/gitrepo/typescript-docs.git
git push -f oschina master

cd -
