Tracker:AddLayouts("layouts/events.jsonc")
Tracker:AddLayouts("layouts/settings_popup.jsonc")
Tracker:AddLayouts("layouts/settings.jsonc")
Tracker:AddLayouts("layouts/logictricks.jsonc")
Tracker:AddLayouts("layouts/items.jsonc")
Tracker:AddLayouts("layouts/tabs.jsonc")
Tracker:AddLayouts("layouts/tracker.jsonc")
Tracker:AddLayouts("layouts/broadcast.jsonc")
Tracker:AddLayouts("layouts/dungeon_items.jsonc")
Tracker:AddLayouts("layouts/dungeons.jsonc")
Tracker:AddLayouts("layouts/songs_medallions.jsonc")
-- Tracker:AddLayouts("layouts/dungeon_items_keydrop.jsonc")
local map_ganon = {
    [0] = "/layouts/ganon_boss_req/ganon_open.json",
    [1] = "/layouts/ganon_boss_req/ganon_open.json",
    [2] = "/layouts/ganon_boss_req/ganon_open.json",
    [3] = "/layouts/ganon_boss_req/ganon_open.json",
    [4] = "/layouts/ganon_boss_req/ganon_open.json",
    [5] = "/layouts/ganon_boss_req/ganon_open.json",
    [6] = "/layouts/ganon_boss_req/ganon_open.json",
    [7] = "/layouts/ganon_boss_req/ganon_open.json",
    [8] = "/layouts/ganon_boss_req/ganon_open.json",
    [9] = "/layouts/ganon_boss_req/ganon_stones.json",
    [10] = "/layouts/ganon_boss_req/ganon_medallions.json",
    [11] = "/layouts/ganon_boss_req/ganon_rewards.json",
    [12] = "/layouts/ganon_boss_req/ganon_tokens.json",
    [13] = "/layouts/ganon_boss_req/ganon_hearts.json"
}
local map_bridge = {
    [0] = "/layouts/bridge_req/bridge_open.json",
    [1] = "/layouts/bridge_req/bridge_open.json",
    [2] = "/layouts/bridge_req/bridge_stones.json",
    [3] = "/layouts/bridge_req/bridge_medallions.json",
    [4] = "/layouts/bridge_req/bridge_rewards.json",
    [5] = "/layouts/bridge_req/bridge_tokens.json",
    [6] = "/layouts/bridge_req/bridge_hearts.json"
}

function MQ_ShT_layout()
    if not Tracker:FindObjectForCode("MQ_Shadow_Temple").Active then
        
        Tracker:AddLayouts("layouts/Shadow_Temple.jsonc")
    else
        Tracker:AddLayouts("layouts/MQ_Shadow_Temple.jsonc")
    end
end

function MQ_DC_layout()
    if not Tracker:FindObjectForCode("MQ_Dodongos_Cavern").Active then
    
        Tracker:AddLayouts("layouts/Dodongos_Cavern.jsonc")
    else
        Tracker:AddLayouts("layouts/MQ_Dodongos_Cavern.jsonc")
    end
end

function MQ_BotW_layout()
    if not Tracker:FindObjectForCode("MQ_Bottom_of_the_Well").Active then
    
        Tracker:AddLayouts("layouts/Bottom_of_the_Well.jsonc")
    else
        Tracker:AddLayouts("layouts/MQ_Bottom_of_the_Well.jsonc")
    end
end

function MQ_IC_layout()
    if not Tracker:FindObjectForCode("MQ_Ice_Cavern").Active then
    
        Tracker:AddLayouts("layouts/Ice_Cavern.jsonc")
    else
        Tracker:AddLayouts("layouts/MQ_Ice_Cavern.jsonc")
    end
end

function MQ_SpT_layout()
    if not Tracker:FindObjectForCode("MQ_Spirit_Temple").Active then
    
        Tracker:AddLayouts("layouts/Spirit_Temple.jsonc")
    else
        Tracker:AddLayouts("layouts/MQ_Spirit_Temple.jsonc")
    end
end

function MQ_GC_layout()
    if not Tracker:FindObjectForCode("MQ_Ganons_Castle").Active then
    
        Tracker:AddLayouts("layouts/Ganons_Tower.jsonc")
        Tracker:AddLayouts("layouts/Ganons_Castle.jsonc")
    else
        Tracker:AddLayouts("layouts/MQ_Ganons_Tower.jsonc")
        Tracker:AddLayouts("layouts/MQ_Ganons_Castle.jsonc")
    end
end

function MQ_FiT_layout()
    if not Tracker:FindObjectForCode("MQ_Fire_Temple").Active then
    
        Tracker:AddLayouts("layouts/Fire_Temple.jsonc")
    else
        Tracker:AddLayouts("layouts/MQ_Fire_Temple.jsonc")
    end
end

function MQ_JJB_layout()
    if not Tracker:FindObjectForCode("MQ_Jabu_Jabus_Belly").Active then
    
        Tracker:AddLayouts("layouts/Jabu_Jabus_Belly.jsonc")
    else
        Tracker:AddLayouts("layouts/MQ_Jabu_Jabus_Belly.jsonc")
    end
end

function MQ_GTG_layout()
    if not Tracker:FindObjectForCode("MQ_Gerudo_Training_Ground").Active then
    
        Tracker:AddLayouts("layouts/Gerudo_Training_Ground.jsonc")
    else
        Tracker:AddLayouts("layouts/MQ_Gerudo_Training_Ground.jsonc")
    end
end

function MQ_FoT_layout()
    if not Tracker:FindObjectForCode("MQ_Forest_Temple").Active then
    
        Tracker:AddLayouts("layouts/Forest_Temple.jsonc")
    else
        Tracker:AddLayouts("layouts/MQ_Forest_Temple.jsonc")
    end
end

function MQ_DT_layout()
    if not Tracker:FindObjectForCode("MQ_Deku_Tree").Active then
    
        Tracker:AddLayouts("layouts/Deku_Tree.jsonc")
    else
        Tracker:AddLayouts("layouts/MQ_Deku_Tree.jsonc")
    end
end

function MQ_WT_layout()
    if not Tracker:FindObjectForCode("MQ_Water_Temple").Active then
    
        Tracker:AddLayouts("layouts/Water_Temple.jsonc")
    else
        Tracker:AddLayouts("layouts/MQ_Water_Temple.jsonc")
    end
end

function GT_Bosskey_req_layout()
    local gt_bk_req = Tracker:FindObjectForCode("shuffle_ganon_bosskey")
    Tracker:AddLayouts(map_ganon[gt_bk_req.CurrentStage])
end

function Bridge_req_layout()
    local bridge_req = Tracker:FindObjectForCode("bridge")
    Tracker:AddLayouts(map_bridge[bridge_req.CurrentStage])
end

ScriptHost:AddWatchForCode("MQ_Shadow_Temple changed", "MQ_Shadow_Temple", MQ_ShT_layout)
ScriptHost:AddWatchForCode("MQ_Dodongos_Cavern changed", "MQ_Dodongos_Cavern", MQ_DC_layout)
ScriptHost:AddWatchForCode("MQ_Bottom_of_the_Well changed", "MQ_Bottom_of_the_Well", MQ_BotW_layout)
ScriptHost:AddWatchForCode("MQ_Ice_Cavern changed", "MQ_Ice_Cavern", MQ_IC_layout)
ScriptHost:AddWatchForCode("MQ_Spirit_Temple changed", "MQ_Spirit_Temple", MQ_SpT_layout)
ScriptHost:AddWatchForCode("MQ_Ganons_Castle changed", "MQ_Ganons_Castle", MQ_GC_layout)
ScriptHost:AddWatchForCode("MQ_Fire_Temple changed", "MQ_Fire_Temple", MQ_FiT_layout)
ScriptHost:AddWatchForCode("MQ_Jabu_Jabus_Belly changed", "MQ_Jabu_Jabus_Belly", MQ_JJB_layout)
ScriptHost:AddWatchForCode("MQ_Gerudo_Training_Ground changed", "MQ_Gerudo_Training_Ground", MQ_GTG_layout)
ScriptHost:AddWatchForCode("MQ_Forest_Temple changed", "MQ_Forest_Temple", MQ_FoT_layout)
ScriptHost:AddWatchForCode("MQ_Deku_Tree changed", "MQ_Deku_Tree", MQ_DT_layout)
ScriptHost:AddWatchForCode("MQ_Water_Temple changed", "MQ_Water_Temple", MQ_WT_layout)
ScriptHost:AddWatchForCode("Ganons_Bosskey_Req changed", "shuffle_ganon_bosskey", GT_Bosskey_req_layout)
ScriptHost:AddWatchForCode("Bridge_Req changed", "bridge", Bridge_req_layout)

MQ_ShT_layout()
MQ_DC_layout()
MQ_BotW_layout()
MQ_IC_layout()
MQ_SpT_layout()
MQ_GC_layout()
MQ_FiT_layout()
MQ_JJB_layout()
MQ_GTG_layout()
MQ_FoT_layout()
MQ_DT_layout()
MQ_WT_layout()
GT_Bosskey_req_layout()
Bridge_req_layout()