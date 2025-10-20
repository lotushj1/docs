#!/bin/bash

# 快速部署腳本 - 自動提交並推送到 GitHub

echo "🚀 開始部署到 GitHub..."

# 清理 macOS 系統文件
echo "🧹 清理系統文件..."
find . -name "._*" -type f -delete 2>/dev/null

# 添加所有更改
echo "📦 添加所有更改的文件..."
git add .

# 提示輸入提交訊息，如果沒有則使用預設訊息
if [ -z "$1" ]; then
    COMMIT_MSG="docs: 更新文檔內容 $(date '+%Y-%m-%d %H:%M:%S')"
else
    COMMIT_MSG="$1"
fi

echo "💬 提交訊息: $COMMIT_MSG"
git commit -m "$COMMIT_MSG"

# 推送到 GitHub
echo "⬆️  推送到 GitHub..."
git push origin main

echo "✅ 部署完成！"
echo "🌐 您的更新將很快在 GitHub 上看到"

