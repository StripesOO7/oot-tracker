
        ScriptHost:LoadScript("scripts/autotracking/item_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/location_mapping.lua")

CUR_INDEX = -1
--SLOT_DATA = nil

SLOT_DATA = {}

function has_value (t, val)
    for i, v in ipairs(t) do
        if v == val then return 1 end
    end
    return 0
end

function dump_table(o, depth)
    if depth == nil then
        depth = 0
    end
    if type(o) == 'table' then
        local tabs = ('\t'):rep(depth)
        local tabs2 = ('\t'):rep(depth + 1)
        local s = '{\n'
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. tabs2 .. '[' .. k .. '] = ' .. dump_table(v, depth + 1) .. ',\n'
        end
        return s .. tabs .. '}'
    else
        return tostring(o)
    end
end


function onClear(slot_data)
    -- print(dump_table(slot_data))
    -- SLOT_DATA = slot_data
    CUR_INDEX = -1
    -- reset locations
    for _, location_array in pairs(LOCATION_MAPPING) do
        for _, location in pairs(location_array) do
            if location then
                local location_obj = Tracker:FindObjectForCode(location)
                if location_obj then
                    if location:sub(1, 1) == "@" then
                        location_obj.AvailableChestCount = location_obj.ChestCount
                    else
                        location_obj.Active = false
                    end
                end
            end
        end
    end
    -- reset items
    for _, item in pairs(ITEM_MAPPING) do
        for _, item_code in pairs(item[1]) do
            -- item_code, item_type = item
--            if item_code and item[2] then
            local item_obj = Tracker:FindObjectForCode(item_code)
--            if item_obj then
--                if item_type == "toggle" then
--                    item_obj.Active = false
--                elseif item_type == "progressive" then
--                    item_obj.CurrentStage = 0
--                    item_obj.Active = false
--                elseif item_type == "consumable" then
--                    if item_obj.MinCount then
--                        item_obj.AcquiredCount = item_obj.MinCount
--                    else
--                        item_obj.AcquiredCount = 0
--                    end
--                elseif item_type == "progressive_toggle" then
--                    item_obj.CurrentStage = 0
--                    item_obj.Active = false
--                end
--            end
            if item_obj then
                if item_obj.Type == "toggle" then
                    item_obj.Active = false
                elseif item_obj.Type == "progressive" then
                    item_obj.CurrentStage = 0
                    item_obj.Active = false
                elseif item_obj.Type == "consumable" then
                    if item_obj.MinCount then
                        item_obj.AcquiredCount = item_obj.MinCount
                    else
                        item_obj.AcquiredCount = 0
                    end
                elseif item_obj.Type == "progressive_toggle" then
                    item_obj.CurrentStage = 0
                    item_obj.Active = false
                end
            end
        end
    end
    for _, logictrick in pairs(LOGIC_TRICK_MAPPING) do
        Tracker:FindObjectForCode(logictrick).Active = false
    end
    for _, mq_dungeon in pairs(MQ_DUNGEON_LIST) do
        Tracker:FindObjectForCode(mq_dungeon).Active = false
    end
    for _, keyrings in pairs(KEY_RING_LIST) do
        Tracker:FindObjectForCode(keyrings).Active = false
    end
    for _, dungeon_shortcuts in pairs(DUNGEON_SHORTCUTS_LIST) do
        Tracker:FindObjectForCode(dungeon_shortcuts).Active = false
    end
    
    PLAYER_ID = Archipelago.PlayerNumber or -1
    TEAM_NUMBER = Archipelago.TeamNumber or 0
    SLOT_DATA = slot_data
    -- if Tracker:FindObjectForCode("autofill_settings").Active == true then
        AutoFill(slot_data)
    -- end
end

function onItem(index, item_id, item_name, player_number)
    if index <= CUR_INDEX then
        return
    end
    local is_local = player_number == Archipelago.PlayerNumber
    CUR_INDEX = index;
    local item_obj
    local item = ITEM_MAPPING[item_id]
    if not item or not item[1] then
        --print(string.format("onItem: could not find item mapping for id %s", item_id))
        return
    end
    for _, item_code in pairs(item[1]) do
        -- print(item[1], item[2])
        -- item_code = item[1]
        item_type = item[2]
        item_obj = Tracker:FindObjectForCode(item_code)
--    if item_obj then
--        if item_type == "toggle" then
--            -- print("toggle")
--            item_obj.Active = true
--        elseif item_type == "progressive" then
--            -- print("progressive")
--            item_obj.Active = true
--        elseif item_type == "consumable" then
--            -- print("consumable")
--            item_obj.AcquiredCount = item_obj.AcquiredCount + item_obj.Increment
--        elseif item_type == "progressive_toggle" then
--            -- print("progressive_toggle")
--            if item_obj.Active then
--                item_obj.CurrentStage = item_obj.CurrentStage + 1
--            else
--                item_obj.Active = true
--            end
--        end
--    else
--        print(string.format("onItem: could not find object for code %s", item_code[1]))
    -- end
        if item_obj then
            if item_obj.Type == "toggle" then
                -- print("toggle")
                item_obj.Active = true
            elseif item_obj.Type == "progressive" then
                -- print("progressive")
                if item_obj.Active then
                    item_obj.CurrentStage = item_obj.CurrentStage + 1
                else
                    item_obj.Active = true
                end
            elseif item_obj.Type == "consumable" then
                -- print("consumable")
                item_obj.AcquiredCount = item_obj.AcquiredCount + item_obj.Increment
            elseif item_obj.Type == "progressive_toggle" then
                -- print("progressive_toggle")
                if item_obj.Active then
                    item_obj.CurrentStage = item_obj.CurrentStage + 1
                else
                    item_obj.Active = true
                end
            end
        else
            print(string.format("onItem: could not find object for code %s", item_code[1]))
        end
    end
end

--called when a location gets cleared
function onLocation(location_id, location_name)
    local location_array = LOCATION_MAPPING[location_id]
    if not location_array or not location_array[1] then
        print(string.format("onLocation: could not find location mapping for id %s", location_id))
        return
    end

    for _, location in pairs(location_array) do
        local location_obj = Tracker:FindObjectForCode(location)
        -- print(location, location_obj)
        if location_obj then
            if location:sub(1, 1) == "@" then
                location_obj.AvailableChestCount = location_obj.AvailableChestCount - 1
            else
                location_obj.Active = true
            end
        else
            print(string.format("onLocation: could not find location_object for code %s", location))
        end
    end
    -- canFinish()
end

function onEvent(key, value, old_value)
    updateEvents(value)
end

function onEventsLaunch(key, value)
    updateEvents(value)
end

function AutoFill(slotdata)
    if slotdata == nil  then
        print("its fucked")
        return
    end
    -- print(dump_table(SLOT_DATA))

    -- mapToggle={[0]=0,[1]=1,[2]=1,[3]=1,[4]=1}
    -- mapToggleReverse={[0]=1,[1]=0,[2]=0,[3]=0,[4]=0}
    -- mapTripleReverse={[0]=2,[1]=1,[2]=0}

    local slotCodes = {
        adult_trade_start = {code="adult_trade_start", mapping=nil},
        big_poe_count = {code="big_poe_count", mapping=nil},
        blue_fire_arrows = {code="blue_fire_arrows", mapping=nil},
        bombchus_in_logic = {code="bombchus_in_logic", mapping=nil},
        bridge = {code="bridge", mapping=nil},
        bridge_medallions = {code="bridge_medallions", mapping=nil},
        bridge_rewards = {code="bridge_rewards", mapping=nil},
        bridge_stones = {code="bridge_stones", mapping=nil},
        bridge_tokens = {code="bridge_tokens", mapping=nil},
        chicken_count = {code="chicken_count", mapping=nil},
        -- collectible_override_flags = {code="collectible_override_flags", mapping=nil},
        complete_mask_quest = {code="complete_mask_quest", mapping=nil},
        damage_multiplier = {code="damage_multiplier", mapping=nil},
        deadly_bonks = {code="deadly_bonks", mapping=nil},
        dungeon_shortcuts = {code="dungeon_shortcuts", mapping=nil},
        -- dungeon_shortcuts_list = {code="dungeon_shortcuts_list", mapping=nil
        --     },
        enhance_map_compass = {code="enhance_map_compass", mapping=nil},
        extra_triforce_percentage = {code="extra_triforce_percentage", mapping=nil},
        fae_torch_count = {code="fae_torch_count", mapping=nil},
        free_scarecrow = {code="free_scarecrow", mapping=nil},
        ganon_bosskey_hearts = {code="ganon_bosskey_hearts", mapping=nil},
        ganon_bosskey_medallions = {code="ganon_bosskey_medallions", mapping=nil},
        ganon_bosskey_rewards = {code="ganon_bosskey_rewards", mapping=nil},
        ganon_bosskey_stones = {code="ganon_bosskey_stones", mapping=nil},
        ganon_bosskey_tokens = {code="ganon_bosskey_tokens", mapping=nil},
        gerudo_fortress = {code="gerudo_fortress", mapping=nil},
        junk_ice_traps = {code="junk_ice_traps", mapping=nil},
        key_rings = {code="key_rings", mapping=nil},
        -- key_rings_list = {code="key_rings_list", mapping=nil
        --     },
        logic_no_night_tokens_without_suns_song = {code="logic_no_night_tokens_without_suns_song", mapping=nil},
        logic_rules = {code="logic_rules", mapping=nil},
        -- logic_tricks = {code="logic_tricks", mapping=nil
        --     },
        mq_dungeons_count = {code="mq_dungeons_count", mapping=nil},
        -- mq_dungeons_list = {code="mq_dungeons_list", mapping=nil
        --     },
        mq_dungeons_mode = {code="mq_dungeons_mode", mapping=nil},
        no_epona_race = {code="no_epona_race", mapping=nil},
        open_door_of_time = {code="open_door_of_time", mapping=nil},
        open_forest = {code="open_forest", mapping=nil},
        open_kakariko = {code="open_kakariko", mapping=nil},
        owl_drops = {code="owl_drops", mapping=nil},
        -- plando_connections = {code="plando_connections", mapping=nil
        --     },
        plant_beans = {code="plant_beans", mapping=nil},
        shop_slots = {code="shop_slots", mapping=nil},
        shopsanity = {code="shopsanity", mapping=nil},
        shopsanity_prices = {code="shopsanity_prices", mapping=nil},
        shuffle_beans = {code="shuffle_beans", mapping=nil},
        shuffle_beehives = {code="shuffle_beehives", mapping=nil},
        shuffle_bosses = {code="shuffle_bosses", mapping=nil},
        shuffle_bosskeys = {code="shuffle_bosskeys", mapping=nil},
        shuffle_child_trade = {code="shuffle_child_trade", mapping=nil},
        shuffle_cows = {code="shuffle_cows", mapping=nil},
        shuffle_crates = {code="shuffle_crates", mapping=nil},
        shuffle_dungeon_entrances = {code="shuffle_dungeon_entrances", mapping=nil},
        shuffle_freestanding_items = {code="shuffle_freestanding_items", mapping=nil},
        shuffle_frog_song_rupees = {code="shuffle_frog_song_rupees", mapping=nil},
        shuffle_ganon_bosskey = {code="shuffle_ganon_bosskey", mapping=nil},
        shuffle_gerudo_card = {code="shuffle_gerudo_card", mapping=nil},
        shuffle_grotto_entrances = {code="shuffle_grotto_entrances", mapping=nil},
        shuffle_hideoutkeys = {code="shuffle_hideoutkeys", mapping=nil},
        shuffle_interior_entrances = {code="shuffle_interior_entrances", mapping=nil},
        shuffle_kokiri_sword = {code="shuffle_kokiri_sword", mapping=nil},
        shuffle_mapcompass = {code="shuffle_mapcompass", mapping=nil},
        shuffle_medigoron_carpet_salesman = {code="shuffle_medigoron_carpet_salesman", mapping=nil},
        shuffle_ocarinas = {code="shuffle_ocarinas", mapping=nil},
        shuffle_overworld_entrances = {code="shuffle_overworld_entrances", mapping=nil},
        shuffle_pots = {code="shuffle_pots", mapping=nil},
        shuffle_scrubs = {code="shuffle_scrubs", mapping=nil},
        shuffle_smallkeys = {code="shuffle_smallkeys", mapping=nil},
        shuffle_song_items = {code="shuffle_song_items", mapping=nil},
        skip_some_minigame_phases = {code="skip_some_minigame_phases", mapping=nil},
        spawn_positions = {code="spawn_positions", mapping=nil},
        start_with_consumables = {code="start_with_consumables", mapping=nil},
        starting_age = {code="starting_age", mapping=nil},
        starting_tod = {code="starting_tod", mapping=nil},
        tokensanity = {code="tokensanity", mapping=nil},
        trials = {code="trials", mapping=nil},
        triforce_goal = {code="triforce_goal", mapping=nil},
        triforce_hunt = {code="triforce_hunt", mapping=nil},
        warp_songs = {code="warp_songs", mapping=nil},
        zora_fountain = {code="zora_fountain", mapping=nil},
        bridge_hearts = {code="bridge_hearts", mapping=nil},
    }
    -- print(dump_table(SLOT_DATA))
    -- print(Tracker:FindObjectForCode("autofill_settings").Active)
    if true then --Tracker:FindObjectForCode("autofill_settings").Active == true then
        for settings_name , settings_value in pairs(slotdata) do
            -- print(k, v)
            if slotCodes[settings_name] then
                local item = Tracker:FindObjectForCode(slotCodes[settings_name].code)
                if item.Type == "toggle" then
                    -- item.Active = slotCodes[settings_name].mapping[settings_value]
                    item.Active = settings_value
                elseif item.Type == "consumable" then
                    -- item.Active = slotCodes[settings_name].mapping[settings_value]
                    item.AcquiredCount = settings_value
                else 
                    -- print(k,v,Tracker:FindObjectForCode(slotCodes[k].code).CurrentStage, slotCodes[k].mapping[v])
                    -- item.CurrentStage = slotCodes[settings_name].mapping[settings_value]
                    item.CurrentStage = settings_value
                end
            end
        end
        for _, trick in ipairs(slotdata["logic_tricks"]) do
            Tracker:FindObjectForCode(trick).Active = true
        end
        for _, mqdungeon in ipairs(slotdata["mq_dungeons_list"]) do
            Tracker:FindObjectForCode(mqdungeon).Active = true
        end
        for _, shortcut in ipairs(slotdata["dungeon_shortcuts_list"]) do
            Tracker:FindObjectForCode(shortcut).Active = true
        end
        for _, keyring in ipairs(slotdata["key_rings_list"]) do
            Tracker:FindObjectForCode(keyring).Active = true
        end
    end
end


-- ScriptHost:AddWatchForCode("settings autofill handler", "autofill_settings", autoFill)
Archipelago:AddClearHandler("clear handler", onClear)
Archipelago:AddItemHandler("item handler", onItem)
Archipelago:AddLocationHandler("location handler", onLocation)
