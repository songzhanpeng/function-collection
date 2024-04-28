# 使用 Node.js 20 的官方镜像作为基础镜像
FROM node:20

# 设置工作目录
WORKDIR /usr/src/app

# 将整个项目目录复制到工作目录
COPY . .

# 安装项目依赖
RUN npm install --production

# 暴露容器的端口
EXPOSE 3000

# 使用 pm2 启动 Express 应用程序
CMD ["node", "server.js"]
