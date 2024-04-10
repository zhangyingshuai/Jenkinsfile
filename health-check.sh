#!/bin/bash

# 健康检查脚本
echo "Checking main health..."

# 在这里添加你的健康检查命令，例如：
# curl -I http://localhost:8080/health

# 如果健康检查失败，重试部署
if [ $? -ne 0 ]; then
  echo "Health check failed. Retrying deployment..."
  ./flakey-deploy.sh
else
  echo "Health check passed. Deployment successful."
fi
