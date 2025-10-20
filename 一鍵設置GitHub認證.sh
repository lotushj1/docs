#!/bin/bash

echo "🔐 GitHub 認證一鍵設置"
echo "======================="
echo ""

# 方法選擇
echo "請選擇認證方式："
echo ""
echo "1. 安裝 GitHub CLI（最簡單，推薦！）"
echo "2. 設置 SSH 密鑰（一次設置，永久使用）"
echo "3. 使用 Personal Access Token（手動輸入）"
echo ""

read -p "請輸入選項 (1/2/3): " choice

case $choice in
  1)
    echo ""
    echo "🚀 選擇方式 1: GitHub CLI"
    echo ""
    
    # 檢查是否已安裝 brew
    if ! command -v brew &> /dev/null; then
        echo "❌ 未安裝 Homebrew"
        echo "請先安裝 Homebrew: https://brew.sh/"
        exit 1
    fi
    
    echo "📦 正在安裝 GitHub CLI..."
    brew install gh
    
    echo ""
    echo "🔑 現在請登入 GitHub..."
    echo "提示：選擇 GitHub.com -> HTTPS -> Yes -> Login with a web browser"
    echo ""
    
    gh auth login
    
    echo ""
    echo "✅ 設置完成！現在可以推送了："
    echo "   git push origin main"
    ;;
    
  2)
    echo ""
    echo "🔑 選擇方式 2: SSH 密鑰"
    echo ""
    
    # 檢查是否已有密鑰
    if [ -f ~/.ssh/id_ed25519 ]; then
        echo "✅ 已存在 SSH 密鑰"
        echo "📋 您的公鑰："
        echo ""
        cat ~/.ssh/id_ed25519.pub
        echo ""
    else
        echo "📝 生成新的 SSH 密鑰..."
        ssh-keygen -t ed25519 -C "lotushj1@users.noreply.github.com" -f ~/.ssh/id_ed25519 -N ""
        
        echo ""
        echo "✅ SSH 密鑰已生成"
        echo "📋 您的公鑰："
        echo ""
        cat ~/.ssh/id_ed25519.pub
        echo ""
    fi
    
    # 啟動 ssh-agent
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519 2>/dev/null
    
    # 複製到剪貼板
    if command -v pbcopy &> /dev/null; then
        cat ~/.ssh/id_ed25519.pub | pbcopy
        echo "✅ 公鑰已複製到剪貼板！"
    fi
    
    echo ""
    echo "📌 下一步："
    echo "   1. 前往 https://github.com/settings/keys"
    echo "   2. 點擊 'New SSH key'"
    echo "   3. 貼上上面的公鑰（或直接 Cmd+V，已複製）"
    echo "   4. 保存"
    echo ""
    
    read -p "按 Enter 繼續設置遠端 URL..."
    
    # 更改為 SSH URL
    cd "/Volumes/Extreme SSD/AI應用/Mintlift-AI手冊"
    git remote set-url origin git@github.com:lotushj1/docs.git
    
    echo ""
    echo "✅ 遠端 URL 已更新為 SSH"
    echo "🧪 測試連接..."
    
    # 添加 GitHub 到 known_hosts
    ssh-keyscan github.com >> ~/.ssh/known_hosts 2>/dev/null
    
    ssh -T git@github.com 2>&1 | grep "successfully authenticated" && echo "✅ SSH 連接成功！" || echo "⚠️  請確認已將 SSH 公鑰添加到 GitHub"
    
    echo ""
    echo "💡 現在可以推送了："
    echo "   git push origin main"
    ;;
    
  3)
    echo ""
    echo "🔑 選擇方式 3: Personal Access Token"
    echo ""
    echo "📝 請按照以下步驟："
    echo ""
    echo "1. 前往 https://github.com/settings/tokens"
    echo "2. 點擊 'Generate new token (classic)'"
    echo "3. 勾選 'repo' 權限"
    echo "4. 生成並複製 token"
    echo ""
    echo "5. 然後運行："
    echo "   git push origin main"
    echo ""
    echo "6. 輸入："
    echo "   Username: lotushj1"
    echo "   Password: [貼上您的 Token]"
    echo ""
    ;;
    
  *)
    echo "❌ 無效的選項"
    exit 1
    ;;
esac

echo ""
echo "🎉 設置完成！"

