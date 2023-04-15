#將自料夾改名 el_bwh
#start el_bwh
# el_bwh
ESX 的 FiveM 禁止/警告/幫助輔助系統

## Installation
1. Download the [resource](https://github.com/Elipse458/el_bwh/archive/master.zip)
2. Rename it to `el_bwh` and put it in your resources folder
3. Import sql.sql into your database
4. Edit the config to your liking
5. Add `start el_bwh` to your server.cfg ***Make sure to add this after mysql-async and es_extended***
6. Start it and you're good to go

## 文檔
這增加了一些命令：
- /bwh <- root admin 命令，這將顯示所有子命令
- /bwh ban <- 打開禁止菜單
- /bwh warn <- 打開警告菜單
- /bwh banlist <- 打開禁令列表
- /bwh warnlist <- 打開警告列表
- /bwh assists <- 在聊天中顯示未決/活躍的助攻
- /bwh refresh <- 從數據庫中提取所有禁令並刷新禁令緩存
- /accassist `<player id>` <- 管理員命令，管理員可以接受玩家的幫助請求
- /finassist <- admin 命令，這將關閉當前的幫助請求並將您傳送回您的原始位置
- /decassist <- admin 命令，這只是隱藏屏幕上的當前輔助彈出窗口
- /assist `<reason>` <- 玩家命令，玩家可以請求幫助
- /cassist <- 玩家命令，這會取消玩家正在進行的協助請求

External banning/warning:
**!! THESE ARE SERVER ONLY EVENTS !!**
```lua
-- banning
-- 1st parameter -> ESX user object of the sender
-- 2nd parameter -> ESX user object of the receiver OR if the player is offline, their steam identifier
-- 3rd parameter -> reason
-- 4th parameter -> length (exp. date of ban) in this format YYYY/MM/DD HH:SS, other formats won't work
-- 5th parameter -> if the player is offline, set to true, otherwise leave false or nil
TriggerEvent("el_bwh:ban", ESX.GetPlayerFromId(sender), ESX.GetPlayerFromId(target), reason, length, offline)

-- warning
-- 1st parameter -> ESX user object of the sender
-- 2nd parameter -> ESX user object of the receiver
-- 3rd parameter -> message of warn
-- 4th parameter -> boolean, if set to true the sender name will not show for the player
TriggerEvent("el_bwh:warn", ESX.GetPlayerFromId(sender), ESX.GetPlayerFromId(target), message, anonymous)
```

To unban someone, go to the ban list and scroll far right to the "Actions" section, you'll find a green unban button there  

## Important notes
This bans **all** players identifiers, that means their ip,license,steam,discord,xbl ids will get banned  
Offline bans ban everything that's stored in the identifier db   
If you don't like the current design (i don't blame you, i'm really not a designer), you can edit the `html/index.html` and `html/style.css` files to change the design to your liking

If find any bugs, please join my [discord server](https://discord.gg/GbT49uH) and report it in the #bug-reports channel  
If you like my work, please check out [my page](https://elipse458.me), i'll probably release a few more things if i have the time and feel like it
