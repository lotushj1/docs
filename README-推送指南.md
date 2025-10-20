# 🚀 快速推送到 GitHub

## 📊 當前狀態

✅ **已完成：**
- Git 用戶配置（lotushj1）
- 所有文件已提交到本地
- 部署工具已創建

⚠️ **待完成：**
- 設置 GitHub 認證（只需要做一次）

---

## 🎯 下一步：設置 GitHub 認證

### 🏃 最快速方式（推薦）

運行自動設置腳本：

```bash
./一鍵設置GitHub認證.sh
```

腳本會引導您選擇最適合的認證方式。

---

## 📝 或者手動設置（三選一）

### 選項 A：GitHub CLI（最簡單）

```bash
# 1. 安裝
brew install gh

# 2. 登入
gh auth login

# 3. 推送
git push origin main
```

### 選項 B：SSH 密鑰（推薦）

```bash
# 1. 生成密鑰
ssh-keygen -t ed25519 -C "lotushj1@users.noreply.github.com"

# 2. 複製公鑰
cat ~/.ssh/id_ed25519.pub | pbcopy

# 3. 添加到 GitHub
# 前往 https://github.com/settings/keys
# 點擊 "New SSH key" 並貼上

# 4. 更改 URL
git remote set-url origin git@github.com:lotushj1/docs.git

# 5. 推送
git push origin main
```

### 選項 C：Personal Access Token

```bash
# 1. 創建 token
# 前往 https://github.com/settings/tokens
# Generate new token (classic)
# 勾選 "repo" 權限

# 2. 推送時輸入
git push origin main
# Username: lotushj1
# Password: [您的 token]
```

---

## ✨ 設置完成後

以後每次更新只需要一個命令：

```bash
./deploy.sh "更新內容描述"
```

或者快速推送：

```bash
npm run quick-push
```

---

## 📦 已提交的內容

這次推送會包含：
- ✅ 快速部署工具 (`deploy.sh`)
- ✅ Git 設置腳本 (`setup-git.sh`)
- ✅ 認證設置腳本 (`一鍵設置GitHub認證.sh`)
- ✅ 完整的使用說明文檔
- ✅ package.json 配置
- ✅ .gitignore 文件
- ✅ 修改的 docs.json

提交訊息：**初始化快速部署系統並新增部署工具**

---

## 🆘 需要幫助？

查看詳細說明：
- `GitHub認證設置.md` - 認證設置詳細指南
- `快速部署指南.md` - 日常使用指南

---

**現在就運行：**
```bash
./一鍵設置GitHub認證.sh
```

設置完成後就可以推送了！🎉

