# ShowRealm

一个轻量级魔兽世界插件：在角色信息窗口顶部显示当前角色所在的服务器名称。

A lightweight World of Warcraft addon that displays your character's realm name at the top of the character info frame.

---

## 中文

### 功能

- 按 `C` 打开角色信息窗口时，在框架顶部居中显示 `服务器: xxxxx`
- 14 号字体 + 描边，清晰易读
- 独立文本显示，不修改游戏原始字符串，不影响其他界面
- 登录时自动获取服务器名，无额外配置

### 安装

1. 下载或克隆本仓库
2. 将 `ShowRealm` 文件夹复制到魔兽世界安装目录：
   - 正式服：`_retail_/Interface/AddOns/`
   - 测试服：`_ptr_/Interface/AddOns/`
3. 重新启动游戏或 `/reload` 重载界面
4. 在插件列表中确认 ShowRealm 已启用

### 使用

无需任何设置。登录后按 `C` 打开角色信息窗口，服务器名称会显示在角色名下方居中位置。

### 兼容性

- 适配 Interface 120000 / 120001 / 120100（魔兽世界 12.0+）

### 问题反馈

如遇显示异常或兼容性问题，请在仓库提交 Issue。

---

## English

### Features

- Displays `Realm: xxxxx` centered at the top of the character frame when you press `C`
- 14pt font with outline for clear readability
- Renders as a standalone text element — never modifies game strings, so no side effects on other UI elements
- Realm name is captured automatically at login; no configuration needed

### Installation

1. Download or clone this repository
2. Copy the `ShowRealm` folder into your World of Warcraft installation:
   - Retail: `_retail_/Interface/AddOns/`
   - PTR: `_ptr_/Interface/AddOns/`
3. Restart the game or type `/reload`
4. Make sure ShowRealm is enabled in your addon list

### Usage

No setup required. After logging in, press `C` to open the character info frame — the realm name appears centered below your character's name.

### Compatibility

- Supports Interface 120000 / 120001 / 120100 (World of Warcraft 12.0+)

### Feedback

If you run into display issues or compatibility problems, please open an issue on the repository.
