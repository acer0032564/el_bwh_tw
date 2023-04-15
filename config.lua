Config = {
    admin_groups = {"admin","superadmin"}, -- 可以使用管理命令的組
    banformat = "\n停權系統!\n停權原因: %s\n解封時間: %s\n管理員: %s\n申訴資訊 (Ban ID: #%s) \n DC:https://discord.gg/6Wd3jkkKgx", -- 被禁止時顯示的消息（第一個 %s = 原因，第二個 %s = 過期，第三個 %s = 橫幅，第四個 %s = ban id）
    popassistformat = "Player %s is requesting help\nWrite <span class='text-success'>/accassist %s</span> to accept or <span class='text-danger'>/decassist</span> to decline", -- popup assist message format
    chatassistformat = "Player %s is requesting help\nWrite ^2/accassist %s^7 to accept or ^1/decassist^7 to decline\n^4Reason^7: %s", -- 彈窗輔助信息格式
    assist_keys = {enable=true,accept=208,decline=207}, -- 接受/拒絕輔助消息的鍵（默認=向上翻頁，向下翻頁）- https://docs.fivem.net/game-references/controls /
    warning_screentime = 7.5, -- 警告顯示時長（以秒為單位）
    backup_kick_method = false, -- 如果被禁止的玩家在被禁止時沒有被踢出或者他們可以在被禁止後重新連接，則將此設置為 true。
    kick_without_steam = true, -- 防止玩家在沒有 steam 標識符的情況下加入您的服務器。
    page_element_limit = 250,
    ip_ban = false --  設置為 true 以在禁令中使用 ip
}

-- 要啟用 discord 日誌，請轉到 server.lua 的第 2 行並將您的 discord webhook 粘貼到引號之間。