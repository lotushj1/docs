#!/bin/bash

echo "🔧 設置 Git 配置"
echo ""

# 設置本地倉庫的 Git 用戶信息（僅針對此專案）
echo "請設置您的 Git 用戶名和郵箱（用於 GitHub 提交）"
echo ""

# 根據現有倉庫推測用戶名
echo "您的 GitHub 倉庫是：lotushj1/docs"
echo ""

read -p "請輸入您的 Git 用戶名 (例如: lotushj1): " git_name
read -p "請輸入您的 Git 郵箱 (例如: your@email.com): " git_email

echo ""
echo "設置中..."

git config user.name "$git_name"
git config user.email "$git_email"

echo ""
echo "✅ Git 配置完成！"
echo "   用戶名: $(git config user.name)"
echo "   郵箱: $(git config user.email)"
echo ""
echo "現在您可以使用 ./deploy.sh 來推送更新了！"

