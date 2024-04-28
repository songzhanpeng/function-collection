#!/bin/bash

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# 停止旧容器
echo -e "${YELLOW}Stopping old container...${NC}"
docker stop node-api-relay
docker rm node-api-relay

# 删除旧镜像
echo -e "${YELLOW}Removing old image...${NC}"
docker rmi node-api-relay:v1

# 生成新镜像
echo -e "${YELLOW}Building new image...${NC}"
docker build -t node-api-relay:v1 .

# 启动新容器
echo -e "${YELLOW}Starting new container...${NC}"
docker run -d -p 3000:3000 --restart=always --name node-api-relay node-api-relay:v1

echo -e "${GREEN}Deployment complete.${NC}"
