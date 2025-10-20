# 🔐 GitHub 認證設置指南

## 當前狀態
✅ Git 配置已完成  
✅ 文件已提交到本地  
⚠️ 需要設置 GitHub 認證才能推送

---

## 📋 推送狀態

您的更改已經提交到本地 Git，包括：
- ✅ `.gitignore` - 忽略系統文件
- ✅ `deploy.sh` - 快速部署腳本
- ✅ `package.json` - 專案配置
- ✅ `setup-git.sh` - Git 設置工具
- ✅ `快速部署指南.md` - 使用說明
- ✅ 修改的 `docs.json`

**現在只需要設置 GitHub 認證就可以推送了！**

---

## 🎯 三種認證方法（選一種即可）

### 方法 1：使用 GitHub CLI（最簡單，推薦！）

```bash
# 1. 安裝 GitHub CLI（如果還沒安裝）
brew install gh

# 2. 登入 GitHub
gh auth login

# 3. 選擇以下選項：
#    - GitHub.com
#    - HTTPS
#    - Yes (使用 Git 認證)
#    - Login with a web browser

# 4. 完成後再次推送
git push origin main
```

### 方法 2：使用 SSH（一次設置，永久使用）

```bash
# 1. 生成 SSH 密鑰（如果還沒有）
ssh-keygen -t ed25519 -C "lotushj1@users.noreply.github.com"

# 2. 啟動 ssh-agent
eval "$(ssh-agent -s)"

# 3. 添加密鑰
ssh-add ~/.ssh/id_ed25519

# 4. 複製公鑰
cat ~/.ssh/id_ed25519.pub

# 5. 將公鑰添加到 GitHub：
#    - 前往 https://github.com/settings/keys
#    - 點擊 "New SSH key"
#    - 貼上複製的公鑰
#    - 保存

# 6. 更改遠端 URL 為 SSH
cd "/Volumes/Extreme SSD/AI應用/Mintlift-AI手冊"
git remote set-url origin git@github.com:lotushj1/docs.git

# 7. 推送
git push origin main
```

### 方法 3：使用 Personal Access Token（手動輸入）

```bash
# 1. 創建 Personal Access Token：
#    - 前往 https://github.com/settings/tokens
#    - 點擊 "Generate new token (classic)"
#    - 勾選 "repo" 權限
#    - 生成並複製 token（只會顯示一次！）

# 2. 推送時會要求輸入：
git push origin main

# Username: lotushj1
# Password: [貼上您的 Personal Access Token]
```

---

## ⚡ 快速測試

設置好認證後，測試推送：

```bash
# 方法 A：直接推送
git push origin main

# 方法 B：使用部署腳本（之後的更新用這個）
./deploy.sh "測試推送"
```

---

## 🔄 完整工作流程（設置後）

```bash
# 1. 編輯文檔
# 編輯任何 .mdx 文件...

# 2. 本地預覽（可選）
npm run dev

# 3. 一鍵部署
./deploy.sh "更新了某某內容"

# 完成！✨
```

---

## 🆘 疑難排解

### 如果推送時顯示 "Permission denied"
- 檢查 SSH 密鑰是否正確添加到 GitHub
- 運行 `ssh -T git@github.com` 測試連接

### 如果顯示 "Authentication failed"
- Personal Access Token 需要有 `repo` 權限
- Token 可能已過期，需要重新生成

### 如果 GitHub CLI 登入失敗
- 確保已安裝：`brew install gh`
- 重新登入：`gh auth logout` 然後 `gh auth login`

---

## 💡 推薦方案

**第一次使用？** → 使用 **方法 1（GitHub CLI）**  
**經常使用 Git？** → 使用 **方法 2（SSH）**  
**只是偶爾推送？** → 使用 **方法 3（Token）**

---

## 📝 下一步

1. 選擇上面任一方法設置認證
2. 運行 `git push origin main` 測試
3. 成功後就可以使用 `./deploy.sh` 快速部署了！

**提示**：設置好後，GitHub 會記住您的認證信息，之後推送就不需要再輸入了。

---

需要幫助？查看 GitHub 官方文檔：
- https://docs.github.com/zh/authentication

