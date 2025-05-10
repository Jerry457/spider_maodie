
local function en_zh(en, zh)  -- Other languages don't work
    return (locale == "zh" or locale == "zhr" or locale == "zht" or locale == "ch" or locale == "chs") and zh or en
end

-- This information tells other players more about the mod
version = "0.1.4" -- mod版本 上传mod需要两次的版本不一样
name = en_zh("[client-side]Maodie Cat instead of Spider", "【客户端】耄耋替换蜘蛛")  ---mod名字
description = en_zh("V".. version .. 
 "\n󰀀This is a cat that originated from the Chinese internet community and rose to fame for its exceptional boxing skills.\n󰀫Now it has arrived in The Constant, taking the place of spiders as a hostile entity in the game.\nThe sound effect has been reduced and it won't be too noisy.",
 "V" ..version.. "\n󰀀这是一只起源于中国网络社区的猫，因其出色的拳击技能而出名。\n󰀫现在它已经出现在永恒大陆中，取代蜘蛛成为游戏中的敌对实体。\n󰀈音效已降低，不会太吵。"
)  --mod描述
author = en_zh("Guto、jerry457","Guto、jerry457") --作者

-- This is the URL name of the mod's thread on the forum; the part after the ? and before the first & in the url
forumthread = ""

folder_name = folder_name or "workshop-"
if not folder_name:find("workshop-") then
    name = name .. "-dev"
end

-- This lets other players know if your mod is out of date, update it to match the current version in the game
api_version = 10

-- Compatible with Don't Starve Together
dst_compatible = true --兼容联机

-- Not compatible with Don't Starve
dont_starve_compatible = false --不兼容原版
reign_of_giants_compatible = false --不兼容巨人DLC

-- Character mods need this set to true
all_clients_require_mod = false
client_only_mod = true --所有人mod

priority = 9999

icon_atlas = "modicon.xml" --mod图标
icon = "modicon.tex"

-- The mod's tags displayed on the server list
server_filter_tags = {  --服务器标签
}

configuration_options = {} --mod设置
