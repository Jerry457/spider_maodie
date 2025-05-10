
GLOBAL.setmetatable(env,{__index=function(t,k) return GLOBAL.rawget(GLOBAL,k) end})

Assets = {
    Asset("ANIM", "anim/spider_build.zip"),
    Asset("ANIM", "anim/spider_maodie_basic.zip"),
    Asset("ANIM", "anim/spider_maodie_boat_jump.zip"),

    Asset("ANIM", "anim/spider_warrior_maodie_basic.zip"),
    Asset("ANIM", "anim/spider_warrior_build.zip"),

    Asset("SOUNDPACKAGE", "sound/spider.fev"),
    Asset("SOUND", "sound/spider_bank.fsb"),
}

-- RemapSoundEvent()
-- spider
-- spider_warrior
-- spider_hider
-- spider_spitter
-- spider_dropper
-- spider_moon
-- spider_healer


local sound_events = {
    "walk_spider",
    "eat",
    "Attack",
    "attack_grunt",
    "Jump",
    "fallAsleep",
    "sleeping",
    "wakeUp",
    "die",
    "scream",
    "hit_response"
}


local prefabs = {
    "spider",
    "spider_warrior",
}

for _, prefab in ipairs(prefabs) do
    GLOBAL.resolvefilepath("anim/" .. prefab .. "_build.zip")

    for _, event in ipairs(sound_events) do
        RemapSoundEvent("dontstarve/creatures/" .. prefab .. "/".. event, "spider/spider/" .. event)
    end

    AddPrefabPostInit(prefab, function(inst)
        inst:DoTaskInTime(0, function()
            inst.AnimState:SetBank(prefab .. "_maodie")
        end)
    end)
end
