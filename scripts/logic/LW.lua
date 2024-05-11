Child_Lost_Woods = OOTLocation.new("Child_Lost_Woods")
Child_LW_Beyond_Mido = OOTLocation.new("Child_LW_Beyond_Mido")
Child_LW_Bridge_From_Forest = OOTLocation.new("Child_LW_Bridge_From_Forest")

Adult_Lost_Woods = OOTLocation.new("Adult_Lost_Woods")
Adult_LW_Beyond_Mido = OOTLocation.new("Adult_LW_Beyond_Mido")
Adult_LW_Bridge_From_Forest = OOTLocation.new("Adult_LW_Bridge_From_Forest")

local Child_LW_Forest_Exit = OOTLocation.new("Child_LW_Forest_Exit")
local Child_GC_Woods_Warp = OOTLocation.new("Child_GC_Woods_Warp")
local Child_LW_Bridge = OOTLocation.new("Child_LW_Bridge")
local Child_LW_Underwater_Entrance = OOTLocation.new("Child_LW_Underwater_Entrance")
local Child_Zora_River = OOTLocation.new("Child_Zora_River")
local Child_LW_Near_Shortcuts_Grotto = OOTLocation.new("Child_LW_Near_Shortcuts_Grotto")
local Child_Deku_Theater = OOTLocation.new("Child_Deku_Theater")
local Child_LW_Scrubs_Grotto = OOTLocation.new("Child_LW_Scrubs_Grotto")

-- local Child_LW_Near_Shortcuts_Grotto = OOTLocation.new("Child_LW_Near_Shortcuts_Grotto")

local Adult_LW_Forest_Exit = OOTLocation.new("Adult_LW_Forest_Exit")
local Adult_GC_Woods_Warp = OOTLocation.new("Adult_GC_Woods_Warp")
local Adult_LW_Bridge = OOTLocation.new("Adult_LW_Bridge")
local Adult_Zora_River = OOTLocation.new("Adult_Zora_River")
local Adult_LW_Near_Shortcuts_Grotto = OOTLocation.new("Adult_LW_Near_Shortcuts_Grotto")
local Adult_Deku_Theater = OOTLocation.new("Adult_Deku_Theater")
local Adult_LW_Scrubs_Grotto = OOTLocation.new("Adult_LW_Scrubs_Grotto")

-- local Adult_LW_Near_Shortcuts_Grotto = OOTLocation.new("Adult_LW_Near_Shortcuts_Grotto")

Child_Lost_Woods:connect_one_way("Child LW Skull Kid", function() return CanPlay("SariasSong") end)
Child_Lost_Woods:connect_one_way("Child LW Ocarina Memory Game", function () return Has("Ocarina") end)
Child_Lost_Woods:connect_one_way("Child LW Target in Woods", function() return Has("Slingshot") end)
Child_Lost_Woods:connect_one_way("Child LW Deku Scrub Near Bridge", function() return CanStunDeku() end)
Child_Lost_Woods:connect_one_way("Child LW GS Bean Patch Near Bridge", function()
    return All(
        Has("Bottle"),
        CanChildAttack()
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 1", function ()
    return Any(
        Has("Boomerang"),
        CanDive()
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 2", function ()
    return Any(
        Has("Boomerang"),
        CanDive()
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 3", function ()
    return Any(
        Has("Boomerang"),
        CanDive()
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 4", function ()
    return Any(
        Has("Boomerang"),
        CanDive()
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 5", function ()
    return Any(
        Has("Boomerang"),
        CanDive()
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 6", function ()
    return Any(
        Has("Boomerang"),
        CanDive()
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 7", function ()
    return Any(
        Has("Boomerang"),
        CanDive()
    )
end)

Child_Lost_Woods:connect_one_way_entrance("Child LW Forest Exit", Child_LW_Forest_Exit)
Child_Lost_Woods:connect_one_way_entrance("Child GC Woods Warp", Child_GC_Woods_Warp)
Child_Lost_Woods:connect_one_way_entrance("Child LW Underwater Entrance", Child_LW_Underwater_Entrance, function()
    return Any(
        Has("Boomerang"),
        Has("ProgressiveScale")
    )
end)
Child_Lost_Woods:connect_one_way_entrance("Child Zora River", Child_Zora_River, function()
    return All(
        CanLeaveForest(),
        Has("ProgressiveScale")
    )
end)
Child_Lost_Woods:connect_one_way_entrance("Child LW Beyond Mido", Child_LW_Beyond_Mido)
Child_Lost_Woods:connect_one_way_entrance("Child LW Near Shortcuts Grotto", Child_LW_Near_Shortcuts_Grotto, function() return CanBlastOrSmash() end)

Adult_Lost_Woods:connect_one_way_entrance("Adult LW Forest Exit", Adult_LW_Forest_Exit)
Adult_Lost_Woods:connect_one_way_entrance("Adult GC Woods Warp", Adult_GC_Woods_Warp)
Adult_Lost_Woods:connect_one_way_entrance("Adult LW Bridge", Adult_LW_Bridge, function()
    return Any(
        Has("HoverBoots"),
        Has("LongShot"),
        Has("MagicBeans"),
        logic_Lost_Woods_bridge
        
    )
end)
Adult_Lost_Woods:connect_one_way_entrance("Adult Zora River", Adult_Zora_River, function()
    return All(
        CanLeaveForest(),
        Any(
            Has("IronBoots"),
            Has("ProgressiveScale")
        )
    )
end)
Adult_Lost_Woods:connect_one_way_entrance("Adult LW Beyond Mido", Adult_LW_Beyond_Mido, function()
    return Any(
        logic_mido_backflip,
        CanPlay("SariasSong")
    )
end)
Adult_Lost_Woods:connect_one_way_entrance("Adult LW Near Shortcuts Grotto", Adult_LW_Near_Shortcuts_Grotto, function() return CanBlastOrSmash() end)


Child_LW_Beyond_Mido:connect_one_way("Child LW Deku Scrub Near Deku Theater Right", function() return CanStunDeku() end)
Child_LW_Beyond_Mido:connect_one_way("Child LW Deku Scrub Near Deku Theater Right", function() return CanStunDeku() end)
Child_LW_Beyond_Mido:connect_one_way("Child LW Under Boulder Blue Rupee", function() return CanBlastOrSmash() end)


Adult_LW_Beyond_Mido:connect_one_way("Adult LW Under Boulder Blue Rupee", function() return CanBlastOrSmash() end)


Child_LW_Beyond_Mido:connect_one_way_entrance("Child LW Forest Exit", Child_LW_Forest_Exit)
Child_LW_Beyond_Mido:connect_one_way_entrance("Child Lost Woods", Child_Lost_Woods)
Child_LW_Beyond_Mido:connect_one_way_entrance("Child SFM Entryway", Child_Sacret_Forest_Meadow_Entryway)
Child_LW_Beyond_Mido:connect_one_way_entrance("Child Deku Theater", Child_Deku_Theater)
Child_LW_Beyond_Mido:connect_one_way_entrance("Child LW Scrubs Grotto", Child_LW_Scrubs_Grotto, function() return CanBlastOrSmash() end)

Adult_LW_Beyond_Mido:connect_one_way_entrance("Adult LW Forest Exit", Adult_LW_Forest_Exit)
Adult_LW_Beyond_Mido:connect_one_way_entrance("Adult Lost Woods", Adult_Lost_Woods, function() return CanPlay("SarisSong") end)
Adult_LW_Beyond_Mido:connect_one_way_entrance("Adult SFM Entryway", Adult_Sacret_Forest_Meadow_Entryway)
Adult_LW_Beyond_Mido:connect_one_way_entrance("Adult Deku Theater", Adult_Deku_Theater)
Adult_LW_Beyond_Mido:connect_one_way_entrance("Adult LW Scrubs Grotto", Adult_LW_Scrubs_Grotto, function() return CanBlastOrSmash() end)


Child_LW_Forest_Exit:connect_one_way_entrance(Child_Kokiri_Forest)
Adult_LW_Forest_Exit:connect_one_way_entrance(Adult_Kokiri_Forest)

Child_LW_Underwater_Entrance:connect_one_way("Child LW Underwater Shortcut Green Rupee")

Child_LW_Underwater_Entrance:connect_one_way_entrance(Child_Lost_Woods)

Child_LW_Bridge_From_Forest:connect_one_way("Child LW Gift from Saria")

Adult_LW_Bridge_From_Forest:connect_one_way("Adult LW Gift from Saria")

Child_LW_Bridge_From_Forest:connect_one_way_entrance("Child LW Bridge ", Child_LW_Bridge)
Adult_LW_Bridge_From_Forest:connect_one_way_entrance("Adult LW Bridge ", Adult_LW_Bridge)

Child_LW_Bridge:connect_one_way_entrance("Child Kokiri Forest", Child_Kokiri_Forest)
Child_LW_Bridge:connect_one_way_entrance("Child Hyrule Fields", Child_Hyrule_Fields)

Adult_LW_Bridge:connect_one_way_entrance("Adult Kokiri Forest", Adult_Kokiri_Forest)
Adult_LW_Bridge:connect_one_way_entrance("Adult Hyrule Fields", Adult_Hyrule_Fields)
Adult_LW_Bridge:connect_one_way_entrance("Adult Lost Woods", Adult_Lost_Woods, function() return Has("Longshot") end)

-- logic left

