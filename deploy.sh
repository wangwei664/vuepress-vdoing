#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

# 初始化 Git 仓库，并指定初始分支名称为 main
git init --initial-branch=main
git add -A
git commit -m 'docs: deploy'

# 如果发布到 https://<USERNAME>.github.io
git push -f git@github.com:wangwei664/wangwei664.github.io.git main
# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

cd -
