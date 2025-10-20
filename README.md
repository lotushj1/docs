# AI 視覺應用手冊

這是一份專為設計師和創作者打造的 AI 設計工具應用指南。

## 📚 內容概覽

本手冊涵蓋：

- **基礎觀念** - 如何將 AI 應用在設計工作中
- **AI 工具指南** - ChatGPT、Photoshop、Freepik 等工具的詳細使用教學
- **設計應用** - 平面設計、社群媒體、產品設計等實際應用場景
- **實戰案例** - 豐富的操作案例和技巧分享

## 🚀 快速開始

### 線上閱讀

訪問部署後的網站：[待部署]

### 本地開發

```bash
# 安裝依賴
npm install -g mintlify

# 啟動本地預覽
mintlify dev
```

## 📖 文檔結構

```
├── introduction.mdx          # 前言：如何把 AI 應用在設計中
├── purpose.mdx              # 本指南的目的與使用方法
├── why-ai.mdx              # 設計師為何需要了解與應用 AI
├── tool-selection.mdx       # 我怎麼挑選 AI 工具的
├── quickstart.mdx          # 快速開始
├── ai-tools/               # AI 工具指南
│   └── chatgpt/
│       ├── basics.mdx
│       └── use-cases.mdx
└── applications/           # 設計應用
    ├── graphic-design.mdx
    └── cases/
        └── overview.mdx
```

## 🎯 主要工具

手冊涵蓋以下 AI 設計工具：

- **ChatGPT (DALL-E)** - 圖片生成與編輯
- **Adobe Photoshop AI** - 專業修圖的 AI 輔助
- **Freepik** - 素材下載與 AI 生成
- **Gemini** - Figma 中的 AI 圖片編輯
- **FLORA** - 產品情境圖背景生成
- **Recraft** - 向量素材生成
- **即夢** - 中文化 AI 圖片生成
- **Flair AI** - 產品合成應用

## 💡 適合誰看

- 平面設計師
- UI/UX 設計師
- 社群媒體小編
- 行銷人員
- 創業者
- 對 AI 設計感興趣的任何人

## 🔗 相關資源

- **原始網站**：https://creatorhome.gitbook.io/ai-design
- **GitHub 倉庫**：https://github.com/lotushj1/docs

## 📝 內容準則

### Slug 命名規範

所有文檔的檔案名稱（slug）都應該遵循以下規範：

1. **使用英文命名**：所有 `.mdx` 檔案名稱必須使用英文，不使用中文拼音
2. **語義化命名**：slug 應該清楚反映文章的核心內容
3. **使用連字符**：多個單字之間使用連字符（`-`）分隔
4. **小寫字母**：全部使用小寫字母
5. **簡潔明確**：避免過長，保持在 2-4 個單字之間

**命名範例：**

| 中文標題 | ❌ 不良命名 | ✅ 良好命名 | 說明 |
|---------|-----------|-----------|------|
| 利用 Raycast+DeepL 達成快速翻譯的技巧 | `raycast-deepl.mdx` | `quick-translation-workflow.mdx` | 描述功能而非工具名 |
| AI 圖片辨識應用 | `chatgpt-image-recognition.mdx` | `ai-image-recognition.mdx` | 通用而非特定工具 |
| 設計師的 7 種應用案例 | `7-use-cases.mdx` | `designer-use-cases.mdx` | 語義化描述 |
| ChatGPT 圖片生成基礎功能與概念 | `chatgpt-basics.mdx` | `ai-image-generation-basics.mdx` | 通用技術描述 |
| 用 JSON 寫提示詞 | `json-prompts.mdx` | `structured-prompts-guide.mdx` | 描述概念而非格式 |

**目錄結構建議：**

```
design-assistance/          # 設計輔助工具
├── quick-translation-workflow.mdx
└── ai-image-recognition.mdx

ai-tools/                   # AI 工具專區
├── image-generation/
│   ├── basics.mdx
│   ├── use-cases.mdx
│   └── structured-prompts.mdx
└── image-editing/
    └── ...
```

**注意事項：**

- 現有檔案的 slug 將逐步調整以符合此規範
- 新增內容時必須遵循此命名準則
- 更新 slug 時需同步更新 `docs.json` 中的路徑引用
- 考慮 SEO 友好性，使用常見的英文關鍵字

## 📝 貢獻

歡迎提交 Issue 或 Pull Request 來改善本手冊！

## 📄 授權

本專案內容版權歸作者所有。

---

**開始探索 AI 設計的無限可能！** 🎨✨
