-- 登录时缓存服务器名，在角色信息框架(C键)顶部居中独立显示，不再修改标题字符串

-- 标签按客户端语言本地化：简中/繁中/其他
local LABEL
do
    local locale = GetLocale()
    if locale == "zhCN" then
        LABEL = "服务器"
    elseif locale == "zhTW" then
        LABEL = "伺服器"
    else
        LABEL = "Realm"
    end
end

local function Init()
    local realm = GetRealmName()
    local frame = CharacterFrame
    if not realm or not frame then return end

    local text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    local font = GameFontNormal:GetFont()
    if font then
        text:SetFont(font, 14, "OUTLINE")
    end
    text:SetText(LABEL..": "..realm)

    -- 贴在角色框架顶部，文本自身锚点设为底部居中，使其位于框架上方
    text:SetPoint("BOTTOM", frame, "TOP", 0, 0)
end

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function(self)
    Init()
    self:UnregisterAllEvents()
end)
