#!/bin/bash

# 部署应用程序
echo "Deploying main..."
# 在这里添加你的部署命令，例如：
# kubectl apply -f my-app.yaml

# 等待部署完成
echo "Waiting for deployment to complete..."
sleep 10

# 执行健康检查
./health-check.sh
