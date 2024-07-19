ScriptHost:LoadScript("scripts/autotracking/additional_mappings.lua")
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
    -- for _, mq_dungeon in pairs(MQ_DUNGEON_LIST) do
    --     Tracker:FindObjectForCode(mq_dungeon).Active = false
    -- end
    -- for _, keyrings in pairs(KEY_RING_LIST) do
    --     Tracker:FindObjectForCode(keyrings).Active = false
    -- end
    for _, dungeon_shortcuts in pairs(DUNGEON_SHORTCUTS_LIST) do
        for _, dungeon_shortcut in pairs(dungeon_shortcuts) do
        Tracker:FindObjectForCode(dungeon_shortcut).Active = false
        end
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
                if item_name == "Piece of Heart" then
                    print(item_name)
                    item_obj.AcquiredCount =item_obj.AcquiredCount + 1
                end
                -- print("progressive")
                if item_obj.Active then
                    item_obj.CurrentStage = item_obj.CurrentStage + 1
                else
                    item_obj.Active = true
                end
            elseif item_obj.Type == "consumable" then
                if (item_obj.AcquiredCount + item_obj.Increment) >= item_obj.MaxCount then
                    item_obj.AcquiredCount = item_obj.MaxCount
                else
                    item_obj.AcquiredCount = item_obj.AcquiredCount + item_obj.Increment
                end
                if ITEM_MAPPING[item_id][1][1]:sub(1,8) == "SmallKey" or ITEM_MAPPING[item_id][1][1]:sub(1,10) == "MQSmallKey" then
                    if Tracker:FindObjectForCode(ITEM_MAPPING[item_id][1][1]:gsub("Key", "KeyRing")).Active then
                        item_obj.AcquiredCount = item_obj.MaxCount
                    end
                end
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
        -- Stage_PoH()
        -- Calc_hearts()
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
    print(dump_table(slotdata))

    -- mapToggle={[0]=0,[1]=1,[2]=1,[3]=1,[4]=1}
    -- mapToggleReverse={[0]=1,[1]=0,[2]=0,[3]=0,[4]=0}
    -- mapTripleReverse={[0]=2,[1]=1,[2]=0}

    local slotCodes = {
        adult_trade_start = {code="adult_trade_start"},
        big_poe_count = {code="big_poe_count"},
        blue_fire_arrows = {code="blue_fire_arrows"},
        bombchus_in_logic = {code="bombchus_in_logic"},
        bridge = {code="bridge"},
        bridge_medallions = {code="bridge_medallions"},
        bridge_rewards = {code="bridge_rewards"},
        bridge_stones = {code="bridge_stones"},
        bridge_tokens = {code="bridge_tokens"},
        chicken_count = {code="chicken_count"},
        -- collectible_override_flags = {code="collectible_override_flags"},
        complete_mask_quest = {code="complete_mask_quest"},
        damage_multiplier = {code="damage_multiplier"},
        deadly_bonks = {code="deadly_bonks"},
        dungeon_shortcuts = {code="dungeon_shortcuts"},
        -- dungeon_shortcuts_list = {code="dungeon_shortcuts_list"
        --     },
        enhance_map_compass = {code="enhance_map_compass"},
        extra_triforce_percentage = {code="extra_triforce_percentage"},
        fae_torch_count = {code="fae_torch_count"},
        free_scarecrow = {code="free_scarecrow"},
        ganon_bosskey_hearts = {code="ganon_bosskey_hearts"},
        ganon_bosskey_medallions = {code="ganon_bosskey_medallions"},
        ganon_bosskey_rewards = {code="ganon_bosskey_rewards"},
        ganon_bosskey_stones = {code="ganon_bosskey_stones"},
        ganon_bosskey_tokens = {code="ganon_bosskey_tokens"},
        gerudo_fortress = {code="gerudo_fortress"},
        junk_ice_traps = {code="junk_ice_traps"},
        key_rings = {code="key_rings"},
        -- key_rings_list = {code="key_rings_list"
        --     },
        logic_no_night_tokens_without_suns_song = {code="logic_no_night_tokens_without_suns_song"},
        logic_rules = {code="logic_rules"},
        -- logic_tricks = {code="logic_tricks"
        --     },
        mq_dungeons_count = {code="mq_dungeons_count"},
        -- mq_dungeons_list = {code="mq_dungeons_list"
        --     },
        mq_dungeons_mode = {code="mq_dungeons_mode"},
        no_epona_race = {code="no_epona_race"},
        open_door_of_time = {code="open_door_of_time"},
        open_forest = {code="open_forest"},
        open_kakariko = {code="open_kakariko"},
        owl_drops = {code="owl_drops"},
        -- plando_connections = {code="plando_connections"
        --     },
        plant_beans = {code="plant_beans"},
        shop_slots = {code="shop_slots"},
        shopsanity = {code="shopsanity"},
        shopsanity_prices = {code="shopsanity_prices"},
        shuffle_beans = {code="shuffle_beans"},
        shuffle_beehives = {code="shuffle_beehives"},
        shuffle_bosses = {code="shuffle_bosses"},
        shuffle_bosskeys = {code="shuffle_bosskeys"},
        shuffle_child_trade = {code="shuffle_child_trade"},
        shuffle_cows = {code="shuffle_cows"},
        shuffle_crates = {code="shuffle_crates"},
        shuffle_dungeon_entrances = {code="shuffle_dungeon_entrances"},
        shuffle_freestanding_items = {code="shuffle_freestanding_items"},
        shuffle_frog_song_rupees = {code="shuffle_frog_song_rupees"},
        shuffle_ganon_bosskey = {code="shuffle_ganon_bosskey"},
        shuffle_gerudo_card = {code="shuffle_gerudo_card"},
        shuffle_grotto_entrances = {code="shuffle_grotto_entrances"},
        shuffle_hideoutkeys = {code="shuffle_hideoutkeys"},
        shuffle_interior_entrances = {code="shuffle_interior_entrances"},
        shuffle_kokiri_sword = {code="shuffle_kokiri_sword"},
        shuffle_mapcompass = {code="shuffle_mapcompass"},
        shuffle_medigoron_carpet_salesman = {code="shuffle_medigoron_carpet_salesman"},
        shuffle_ocarinas = {code="shuffle_ocarinas"},
        shuffle_overworld_entrances = {code="shuffle_overworld_entrances"},
        shuffle_pots = {code="shuffle_pots"},
        shuffle_scrubs = {code="shuffle_scrubs"},
        shuffle_smallkeys = {code="shuffle_smallkeys"},
        shuffle_song_items = {code="shuffle_song_items"},
        skip_some_minigame_phases = {code="skip_some_minigame_phases"},
        spawn_positions = {code="spawn_positions"},
        start_with_consumables = {code="start_with_consumables"},
        starting_age = {code="starting_age"},
        starting_tod = {code="starting_tod"},
        tokensanity = {code="tokensanity"},
        trials = {code="trials"},
        triforce_goal = {code="triforce_goal"},
        triforce_hunt = {code="triforce_hunt"},
        warp_songs = {code="warp_songs"},
        zora_fountain = {code="zora_fountain"},
        bridge_hearts = {code="bridge_hearts"},
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
                elseif item.Type == "progressive" then
                    -- print(k,v,Tracker:FindObjectForCode(slotCodes[k].code).CurrentStage, slotCodes[k].mapping[v])
                    -- item.CurrentStage = slotCodes[settings_name].mapping[settings_value]
                    item.CurrentStage = settings_value
                elseif item.Type == "progressive_toggle" then
                    -- print(k,v,Tracker:FindObjectForCode(slotCodes[k].code).CurrentStage, slotCodes[k].mapping[v])
                    -- item.CurrentStage = slotCodes[settings_name].mapping[settings_value]
                    item.CurrentStage = settings_value
                    item.Active = true
                else
                end
            end
        end
        for _, trick in ipairs(slotdata["logic_tricks"]) do
            Tracker:FindObjectForCode(LOGIC_TRICK_MAPPING[trick]).Active = true
        end
        for _, mqdungeon in ipairs(slotdata["mq_dungeons_list"]) do
            Tracker:AddLayouts("layouts/MQ_".. MQ_DUNGEON_LIST[mqdungeon] ..".jsonc")
        end
        -- for _, dungeon_shortcuts in pairs(DUNGEON_SHORTCUTS_LIST) do
        for _, dungeon in pairs(slotdata["dungeon_shortcuts_list"]) do
            for _, shortcut in pairs(DUNGEON_SHORTCUTS_LIST[dungeon]) do
                Tracker:FindObjectForCode(shortcut).Active = true
            end
        end
        for _, keyring in ipairs(slotdata["key_rings_list"]) do
            Tracker:FindObjectForCode(KEY_RING_LIST[keyring]).Active = true
        end
    end
end


-- ScriptHost:AddWatchForCode("settings autofill handler", "autofill_settings", autoFill)
Archipelago:AddClearHandler("clear handler", onClear)
Archipelago:AddItemHandler("item handler", onItem)
Archipelago:AddLocationHandler("location handler", onLocation)
