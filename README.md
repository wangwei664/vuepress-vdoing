# vuepress-vdoing

一个基于 Vdoing 主题改进的 VuePress 博客。

```bash
# 安装 Git、Node.js

$ git clone git@github.com:wangwei664/vuepress-vdoing.git # 克隆源码
$ cd vuepress-vdoing # 进入项目目录
$ yarn install # 安装依赖
$ yarn run dev # 启动本地预览

# 浏览器访问本地启动的预览地址

# 部署项目到 GitHub Pages

## 方式1: 通过部署脚本手动部署

$ chmod 755 ./deploy.sh # 修改部署脚本执行权限
$ yarn run deploy # 执行部署

## 方式2: 通过 GitHub Actions 自动部署

- 创建 Persion Access Token，在仓库的 secret 中配置 ACCESS_TOKEN 私密变量
- 触发 git push 事件时，会根据 .github/workflows/ci.yml 文件配置，自动触发 GitHub Actions 自动部署应用文件到 GitHub Pages

# 访问 GitHub Pages 站点地址

`https://wangwei664.github.io`
```

![](./vuepress-vdoing.png)  

![](./vuepress-vdoing1.png)