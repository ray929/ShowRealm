-- 登录时缓存服务器名，在角色信息框架(C键)顶部居中独立显示，不再修改标题字符串
local function Init()
    local realm = GetRealmName()
    local frame = CharacterFrame
    if not realm or not frame then return end

    local text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    local font = GameFontNormal:GetFont()
    if font then
        text:SetFont(font, 14, "OUTLINE")
    end
    text:SetText("服务器: "..realm)

    -- 优先挂在标题文本(角色名)下方居中，标题不存在则挂在框架顶部居中
    local title = CharacterFrameTitleText or frame.TitleText
    if title then
        text:SetPoint("TOP", title, "BOTTOM", 0, -2)
    else
        text:SetPoint("TOP", frame, "TOP", 0, -38)
    end
end

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function(self)
    Init()
    self:UnregisterAllEvents()
end)
