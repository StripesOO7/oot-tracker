-- ScriptHost:AddWatchForCode("keydropshuffle handler", "key_drop_shuffle", keyDropLayoutChange)
-- ScriptHost:AddWatchForCode("boss handler", "boss_shuffle", bossShuffle)
-- ScriptHost:AddWatchForCode("ow_dungeon details handler", "ow_dungeon_details", owDungeonDetails)

var_StaleState = true

OOTLocation = {}
OOTLocation.__index = OOTLocation

AccessLVL= {
    [0] = "none",
    [1] = "partial",
    [3] = "inspect",
    [5] = "sequence break",
    [6] = "normal",
    [7] = "cleared"
}

-- Table to store named locations
NamedLocations = {}
Staleness = 0
function Visibility_helper(item, rev)
    local item_active = Tracker:FindObjectForCode(item).Active
    local reverse = rev
    if reverse == "true" then
        return not item_active
    else
        return item_active
    end

end
-- 
function CanReach(name)
    if var_StaleState then
        StateChange()
    end
    -- print("canreach")
    local location
    -- if type(region_name) == "function" then
    --     location = self
    -- else
    if type(name) == "table" then
        -- print(name.name)
        location = NamedLocations[name.name]
    else 
        location = NamedLocations[name]
    end
    -- print(location.name, name)
    -- end
    if location == nil then
        -- print(location, name)
        if type(name) == "table" then
            print("Unknown location : " .. tostring(name.name))
        else
            print("Unknown location : " .. tostring(name))
        end
        return AccessibilityLevel.None
    end
    return location:accessibility()
end

function Show(option, stage, operation)
    -- stage acts as a reverse modifier for non-progressive items. nothing provided equals normal mode, providing any intager will reverse it
    if option ~= nil and string.len(option) ~= 0 then
        -- print(option, stage, operation)
        local obj = Tracker:FindObjectForCode(option)
        
        if obj ~= nil then
            if obj.Type == "progressive" then
                -- print("option:", option, "stage:", stage , ", object stage: ", obj.CurrentStage)
                if stage == nil then
                    return obj.CurrentStage
                -- stage = 1
                else 
                    if operation == "<=" then
                        return obj.CurrentStage <= tonumber(stage)
                    elseif operation == "==" then
                        return obj.CurrentStage == tonumber(stage)
                    else
                        return obj.CurrentStage >= tonumber(stage)
                    end
                end
            else
                -- most likely a toggle option
                if stage ~= nil then
                    return not obj.Active
                else
                    return obj.Active
                end
            end
            
        end
    else
        -- print(type(option), string.len(option), option ~= nil, option ~= "")
        print(option, "is fucked")
    end
end

-- creates a lua object for the given name. it acts as a representation of a overworld reagion or indoor locatoin and
-- tracks its connected objects wvia the exit-table
function OOTLocation.new(name)
    local self = setmetatable({}, OOTLocation)
    if name then
        NamedLocations[name] = self
        self.name = name
    else
        self.name = self
    end
    
    self.exits = {}
    self.Staleness = -1
    self.keys = math.huge
    self.accessibility_level = AccessibilityLevel.None
    -- print(self.name)
    return self
end

local function always()
    return AccessibilityLevel.Normal
end

-- markes a 1-way connections between 2 "locations/regions" in the source "locations" exit-table with rules if provided
function OOTLocation:connect_one_way(exit, rule)
    if type(exit) == "string" then
        exit = OOTLocation.new(exit)
    end
    if rule == nil then
        rule = always
    end
    self.exits[#self.exits + 1] = { exit, rule }
end

-- markes a 2-way connection between 2 locations. acts as a shortcut for 2 connect_one_way-calls 
function OOTLocation:connect_two_ways(exit, rule)
    self:connect_one_way(exit, rule)
    exit:connect_one_way(self, rule)
end

-- creates a 1-way connection from a region/location to another one via a 1-way connector like a ledge, hole,
-- self-closing door, 1-way teleport, ...
function OOTLocation:connect_one_way_entrance(name, exit, rule)
    if rule == nil then
        rule = always
    end
    -- print(name)
    self.exits[#self.exits + 1] = { exit, rule }
end

-- creates a connection between 2 locations that is traversable in both ways using the same rules both ways
-- acts as a shortcut for 2 connect_one_way_entrance-calls
function OOTLocation:connect_two_ways_entrance(name, exit, rule)
    if exit == nil then -- for ER
        return
    end
    self:connect_one_way_entrance(name, exit, rule)
    exit:connect_one_way_entrance(name, self, rule)
end

-- creates a connection between 2 locations that is traversable in both ways but each connection follow different rules.
-- acts as a shortcut for 2 connect_one_way_entrance-calls
function OOTLocation:connect_two_ways_entrance_door_stuck(name, exit, rule1, rule2)
    self:connect_one_way_entrance(name, exit, rule1)
    exit:connect_one_way_entrance(name, self, rule2)
end

-- checks for the accessibility of a regino/location given its own exit requirements
function OOTLocation:accessibility()
    if self.Staleness < Staleness then
        return AccessibilityLevel.None
    else
        return self.accessibility_level
    end
end

-- 
function OOTLocation:discover(accessibility, keys)
    -- print("start", self.name)
    local change = false
    if accessibility > self:accessibility() then
        change = true
        self.Staleness = Staleness
        self.accessibility_level = accessibility
        self.keys = math.huge
    end
    if keys < self.keys then
        self.keys = keys
        change = true
    end

    if change then
        -- print("further", self.name)
        for _, exit in pairs(self.exits) do
            local location = exit[1]
            local rule = exit[2]
            -- print("location", location.name, rule)
            local access, key = rule(keys)
            -- print(access)
            if access == 5 then
                access = AccessibilityLevel.SequenceBreak
            elseif access == true then
                access = AccessibilityLevel.Normal
            elseif access == false then
                access = AccessibilityLevel.None
            end
            if key == nil then
                key = keys
            end
            -- print(self.name) 
            -- print(AccessLVL[self.accessibility_level], "from", self.name, "to", location.name, ":", AccessLVL[access])
            location:discover(access, key)
        end
    end
end

Entry_point = OOTLocation.new("entry_point")
Child_spawn = OOTLocation.new("child_spawn")
Adult_spawn = OOTLocation.new("adult_spawn")

-- Child_spawn:connect_one_way_entrance("Child Spawn in Game", Child_Links_House)
-- Adult_spawn:connect_one_way_entrance("Adult Spawn in Game", Adult_Temple_of_Time)

-- 

function StaleState()
    var_StaleState = true
end


function StateChange()
    print("StateChange stated", var_StaleState)
    -- if not var_StaleState then
    --     return
    -- end
    var_StaleState = false
    -- Stage_PoH()
    Calc_hearts()
    Events()
    Staleness = Staleness + 1
    Entry_point:discover(AccessibilityLevel.Normal, 0)
    -- Events()
    -- for i, j in pairs(NamedLocations["Child_Jabu_Jabus_Belly_Depths"]) do
        -- print(NamedLocations["Child_Jabu_Jabus_Belly_Depths"].name, NamedLocations["Child_Jabu_Jabus_Belly_Depths"].Staleness, NamedLocations["Child_Jabu_Jabus_Belly_Depths"].accessibility_level)
        -- print(NamedLocations["Child_Jabu_Jabus_Belly_Past_Big_Octo"].name, NamedLocations["Child_Jabu_Jabus_Belly_Past_Big_Octo"].Staleness, NamedLocations["Child_Jabu_Jabus_Belly_Past_Big_Octo"].accessibility_level)
    -- end
end


function AdultTradeChange()
    local obj = Tracker:FindObjectForCode("adult_trade_start")
    for index, item_code in pairs(ADULT_TRADE) do
        if index < obj.CurrentStage then
            Tracker:FindObjectForCode(item_code).Active = true
        end
    end
    local trade = Tracker:FindObjectForCode("AdultTrade")
    if obj.CurrentStage < 4 then
        trade.CurrentStage = obj.CurrentStage
        trade.Active = false
    else
        trade.CurrentStage = obj.CurrentStage+1
        trade.Active = false
    end
end

function ChildTradeSettingChange()
    local trade_setting = Tracker:FindObjectForCode("shuffle_child_trade")
    local mask_quest = Tracker:FindObjectForCode("complete_mask_quest")
    if trade_setting.CurrentStage < 2 then
        Tracker:FindObjectForCode("ChildTrade").CurrentStage = 0
        Tracker:FindObjectForCode("ChildTrade").Active = false
    else
        Tracker:FindObjectForCode("ChildTrade").CurrentStage = 1
        Tracker:FindObjectForCode("ChildTrade").Active = true
    end 
    ChildTradeChange()
end

function ChildTradeChange()
    local mask_quest = Tracker:FindObjectForCode("complete_mask_quest")
    if mask_quest ~= nil then
        if mask_quest.Active == true and Tracker:FindObjectForCode("ChildTrade").CurrentStage > 0 then
            Tracker:FindObjectForCode("SkullMask").Active = true
            Tracker:FindObjectForCode("MaskofTruth").Active = true
        elseif Tracker:FindObjectForCode("ChildTrade").CurrentStage > 0 then
            if Tracker:ProviderCountForCode("ZeldasLetter") > 0 then--and 
                if Has("Ocarina") and Has("SariasSong") then
                    Tracker:FindObjectForCode("SkullMask").Active = true
                else
                    Tracker:FindObjectForCode("SkullMask").Active = false
                end

                if Has("SkullMask") and (Has_all_stones()) then
                    Tracker:FindObjectForCode("MaskofTruth").Active = true
                else
                    Tracker:FindObjectForCode("MaskofTruth").Active = false
                end
            end
            -- if Has_all_stones() then
            --     Tracker:FindObjectForCode("SkullMask").Active = true
            --     Tracker:FindObjectForCode("MaskofTruth").Active = true
            -- else
            --     Tracker:FindObjectForCode("SkullMask").Active = true
            --     Tracker:FindObjectForCode("MaskofTruth").Active = false
            -- end
        else
            Tracker:FindObjectForCode("SkullMask").Active = false
            Tracker:FindObjectForCode("MaskofTruth").Active = false
        end
        
        -- for index, item_code in pairs(CHILD_TRADE) do
        --     if index < obj.CurrentStage then
        --         Tracker:FindObjectForCode(item_code).Active = true
        --     end
        -- end
        -- local trade = Tracker:FindObjectForCode("ChildTrade")
        -- if obj.CurrentStage < 4 then
        --     trade.CurrentStage = obj.CurrentStage
        --     trade.Active = false
        -- else
        --     trade.CurrentStage = obj.CurrentStage+1
        --     trade.Active = false
        -- end
    end
end

function FireTempleExtraKey()
    local ft_smallkey = Tracker:FindObjectForCode("SmallKey(FireTemple)")
    local keysanity = Tracker:FindObjectForCode("shuffle_smallkeys")
    local amount_prev = ft_smallkey.AcquiredCount
    local mincount_prev = ft_smallkey.MinCount
    if keysanity.CurrentStage == 0 or keysanity.CurrentStage == 4 or keysanity.CurrentStage == 5 or keysanity.CurrentStage == 6 or keysanity.CurrentStage == 7 then
        ft_smallkey.MinCount = 0
    elseif keysanity.CurrentStage  == 1  or keysanity.CurrentStage  == 2 or keysanity.CurrentStage  == 3 then
        ft_smallkey.MinCount = 1
    else
        ft_smallkey.MinCount = 0
    end
    if amount_prev < ft_smallkey.MinCount then
        ft_smallkey.AcquiredCount = ft_smallkey.MinCount
        ft_smallkey.Active = true
    elseif amount_prev > 0 and mincount_prev > ft_smallkey.MinCount then
        ft_smallkey.AcquiredCount = ft_smallkey.AcquiredCount - 1
    elseif amount_prev > 0 and mincount_prev < ft_smallkey.MinCount then
        ft_smallkey.AcquiredCount = ft_smallkey.AcquiredCount + 1
    end
    -- FT_mq = Tracker:FindObjectForCode("MQ_DUNGEON_LIST..firetemple")
end

function ClosedDekuHandler()
    if Tracker:FindObjectForCode("open_forest").CurrentStage == 2 then
        Tracker:FindObjectForCode("starting_age").Active = false
        if (
            Tracker:FindObjectForCode("shuffle_interior_entrances").CurrentStage == 2 or Tracker:FindObjectForCode("shuffle_overworld_entrances").Active or 
            Tracker:FindObjectForCode("warp_songs").Active or 
            Tracker:FindObjectForCode("spawn_positions").CurrentStage ~= 0
        ) then
            Tracker:FindObjectForCode("open_forest").CurrentStage = 1
        end
    end
end

ScriptHost:AddWatchForCode("StateChange", "*", StaleState)
ScriptHost:AddWatchForCode("Adult Trade Start Change", "adult_trade_start", AdultTradeChange)
ScriptHost:AddWatchForCode("Child Trade Start Change", "shuffle_child_trade", ChildTradeSettingChange)
ScriptHost:AddWatchForCode("Child Mask Quest Change", "complete_mask_quest", ChildTradeChange)
ScriptHost:AddWatchForCode("SkullMask Change", "SkullMask", ChildTradeChange)
ScriptHost:AddWatchForCode("Kokiri_Emerald Change", "Kokiri_Emerald", ChildTradeChange)
ScriptHost:AddWatchForCode("Gorons_Ruby Change", "Gorons_Ruby", ChildTradeChange)
ScriptHost:AddWatchForCode("Zora_Sapphire Change", "Zora_Sapphire", ChildTradeChange)
ScriptHost:AddWatchForCode("SariasSong Change", "SariasSong", ChildTradeChange)
ScriptHost:AddWatchForCode("Ocarina Change", "Ocarina", ChildTradeChange)
ScriptHost:AddWatchForCode("shuffle_smallkeys Change", "shuffle_smallkeys", FireTempleExtraKey)
ScriptHost:AddWatchForCode("Closed Forest Change", "open_forest", ClosedDekuHandler)
-- ScriptHost:AddWatchForCode("Ocarina Change", "Ocarina", FireTempleExtraKey)