#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# deploy to GitHub
# 若是发布到自定义域名
# echo 'www.example.com' > CNAME

# 兼容 本地手动部署 和 GitHub Actions 自动部署
if [ -z "$GITHUB_TOKEN" ]; then
  msg='docs: deploy via deploy.sh script'
  githubUrl=git@github.com:wangwei664/wangwei664.github.io.git
else
  msg='docs: deploy via GitHub Actions'
  githubUrl=https://wangwei664:${GITHUB_TOKEN}@github.com/wangwei664/wangwei664.github.io.git
  git config --global user.name "wangwei664"
  git config --global user.email "wangwei66418@gmail.com"
fi

# 初始化 Git 仓库，并指定初始分支名称为 main
git init --initial-branch=main
git add -A
git commit -m "$msg"

# 推送到 GitHub: https://wangwei664.github.io
git push -f $githubUrl main

cd -
rm -rf docs/.vuepress/dist
