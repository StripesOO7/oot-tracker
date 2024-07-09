-- Child_Goron_City = OOTLocation.new("Child_Goron_City")
-- Child_GC_Woods_Warp = OOTLocation.new("Child_GC_Woods_Warp")
-- Child_GC_Darunias_Chamber = OOTLocation.new("Child_GC_Darunias_Chamber")
-- Child_GC_Grotto_Platform = OOTLocation.new("Child_GC_Grotto_P_atform")
-- Child_GC_Spinning_Pot = OOTLocation.new("Child_GC_Spinning")
-- Child_GC_Shop = OOTLocation.new("Child_GC_Shop")
-- Child_GC_Grotto = OOTLocation.new("Child_GC_Grotto")

-- Adult_Goron_City = OOTLocation.new("Adult_Goron_City")
-- Adult_GC_Woods_Warp = OOTLocation.new("Adult_GC_Woods_Warp")
-- Adult_GC_Darunias_Chamber = OOTLocation.new("Adult_GC_Darunias_Chamber")
-- Adult_GC_Grotto_Platform = OOTLocation.new("Adult_GC_Grotto_Platform")
-- Adult_GC_Spinning_Pot = OOTLocation.new("Adult_GC_Spinning_Pot")
-- Adult_GC_Shop = OOTLocation.new("Adult_GC_Shop")
-- Adult_GC_Grotto = OOTLocation.new("Adult_GC_Grotto")


Child_Goron_City:connect_one_way("Child GC Maze Left Chest", function() 
    return Any(
        Can_use("MegatonHammer", "child"),
        Can_use("SilverGauntlets", "child"),
        All(
            Has("logic_goron_city_leftmost"),
            Has_explosives(),
            Can_use("HoverBoots", "child")
        )
    )
end)
Child_Goron_City:connect_one_way("Child GC Maze Center Chest", function()
    return Any(
        Can_blast_or_smash("child"),
        Can_use("SilverGauntlets", "child")
    )
end)
Child_Goron_City:connect_one_way("Child GC Maze Right Chest", function()
    return Any(
        Can_blast_or_smash("child"),
        Can_use("SilverGauntlets", "child")
    )
end)
Child_Goron_City:connect_one_way("Child GC Rolling Goron as Child", function()
    return Any(
        Has_explosives(),
        All(
            Can_use("ProgressiveStrengthUpgrade", "child"),
            Has("logic_child_rolling_with_strength")
        )
    )
end)
Child_Goron_City:connect_one_way("Child GC Medigoron", function() return false end)
Child_Goron_City:connect_one_way("Child GC Rolling Goron as Adult", function() return false end)
Child_Goron_City:connect_one_way("Child GC Lower Staircase Pot 1")
Child_Goron_City:connect_one_way("Child GC Lower Staircase Pot 2")
Child_Goron_City:connect_one_way("Child GC Upper Staircase Pot 1")
Child_Goron_City:connect_one_way("Child GC Upper Staircase Pot 2")
Child_Goron_City:connect_one_way("Child GC Upper Staircase Pot 3")
Child_Goron_City:connect_one_way("Child GC Medigoron Pot", function()
    return All(
        false, 
        Tracker:FindObjectForCode("ProgressiveWallet").CurrentStage > 0,
        Any(
            Can_blast_or_smash("child"),
            Can_use("ProgressiveStrengthUpgrade", "child")
        )
    )
end)
Child_Goron_City:connect_one_way("Child GC Boulder Maze Crate", function()
    return All(
        Any(
            Can_blast_or_smash("child"),
            Can_use("SilverGauntlets", "child")
        ),
        Can_break_crate("child")
    )
end)
Child_Goron_City:connect_one_way("Child GC GS Boulder Maze", function() return Has_explosives() end)
-- Child_Goron_City:connect_one_way("Child Stick Pot")
Child_Goron_City:connect_one_way("Child GC GS Center Platform", function() return false end)

Adult_Goron_City:connect_one_way("Adult GC Maze Left Chest", function()
    return Any(
        Can_use("MegatonHammer", "adult"),
        Can_use("SilverGauntlets", "adult"),
        All(
            Has("logic_goron_city_leftmost"),
            Has_explosives(),
            Can_use("HoverBoots", "adult")
        )
    )
end)
Adult_Goron_City:connect_one_way("Adult GC Maze Center Chest", function()
    return Any(
        Can_blast_or_smash("adult"),
        Can_use("SilverGauntlets", "adult")
    )
end)
Adult_Goron_City:connect_one_way("Adult GC Maze Right Chest", function()
    return Any(
        Can_blast_or_smash("adult"),
        Can_use("SilverGauntlets", "adult")
    )
end)
Adult_Goron_City:connect_one_way("Adult GC Rolling Goron as Child", function() return false end)
Adult_Goron_City:connect_one_way("Adult GC Medigoron", function() 
    return All(
        true, 
        Tracker:FindObjectForCode("ProgressiveWallet").CurrentStage > 0,
        Any(
            Can_blast_or_smash("adult"),
            Can_use("ProgressiveStrengthUpgrade", "adult")
        )
    )
end)
Adult_Goron_City:connect_one_way("Adult GC Rolling Goron as Adult", function()
    return Any(
        Can_use("ProgressiveStrengthUpgrade", "adult"),
        Has_explosives(),
        Can_use("Bow", "adult"),
        All(
            Has("logic_link_goron_dins"),
            Can_use("DinsFire", "adult")
        )
    )
end)
Adult_Goron_City:connect_one_way("Adult GC Lower Staircase Pot 1")
Adult_Goron_City:connect_one_way("Adult GC Lower Staircase Pot 2")
Adult_Goron_City:connect_one_way("Adult GC Upper Staircase Pot 1")
Adult_Goron_City:connect_one_way("Adult GC Upper Staircase Pot 2")
Adult_Goron_City:connect_one_way("Adult GC Upper Staircase Pot 3")
Adult_Goron_City:connect_one_way("Adult GC Medigoron Pot", function()
    return Any(
        Can_blast_or_smash("adult"),
        Can_use("ProgressiveStrengthUpgrade", "adult")
    )
end)
Adult_Goron_City:connect_one_way("Adult GC Boulder Maze Crate", function()
    return All(
        Any(
            Can_blast_or_smash("adult"),
            Can_use("SilverGauntlets", "adult")
        ),
        Can_break_crate("adult")
    )
end)
Adult_Goron_City:connect_one_way("Adult GC GS Boulder Maze", function() return false end)
Adult_Goron_City:connect_one_way("Adult GC GS Center Platform")

Child_Goron_City:connect_one_way_entrance("Child Death Mountain", Child_Death_Mountain)
Child_Goron_City:connect_one_way_entrance("Child GC Woods Warp", Child_GC_Woods_Warp, function()
    return Any(
        Can_blast_or_smash("child"),
        Can_use("DinsFire", "child"),
        Can_use("Bow", "child"),
        Can_use("ProgressiveStrengthUpgrade", "child"),
        Can_use("DinsFire", "child")
    )
end)
Child_Goron_City:connect_one_way_entrance("Child GC Shop", Child_GC_Shop, function()
    return Any(
        Has_explosives(),
        Can_use("ProgressiveStrengthUpgrade", "child"),
        Can_use("DinsFire", "child")
    )
end)
Child_Goron_City:connect_one_way_entrance("Child GC Darunias Chamber", Child_GC_Darunias_Chamber, function() return Can_play("ZeldasLullaby") end)
Child_Goron_City:connect_one_way_entrance("Child GC Grotto Platform", Child_GC_Grotto_Platform, function() return false end)
Child_Goron_City:connect_one_way_entrance("Child GC Spinning Pot", Child_GC_Spinning_Pot, function()
    return All(
        Can_use("DinsFire", "child"),
        Any(
            Bombs(),
            All(
                Can_use("ProgressiveStrengthUpgrade", "child"),
                Has("logic_goron_city_pot_with_strength")
            ),
            All(
                Has_bombchus(),
                Has("logic_goron_city_pot")
            )
        )
    )
end)

Adult_Goron_City:connect_one_way_entrance("Adult Death Mountain", Adult_Death_Mountain)
Adult_Goron_City:connect_one_way_entrance("Adult GC Woods Warp", Adult_GC_Woods_Warp, function()
    return Any(
        Can_use("ProgressiveStrengthUpgrade", "adult"),
        Has_explosives(),
        Can_use("Bow", "adult")
    )
end)
Adult_Goron_City:connect_one_way_entrance("Adult GC Shop", Adult_GC_Shop, function()
    return Any(
        Can_blast_or_smash("adult"),
        Can_use("DinsFire", "adult"),
        Can_use("Bow", "adult"),
        Can_use("ProgressiveStrengthUpgrade", "adult")
        -- 'Goron City Child Fire'
    )
end)
Adult_Goron_City:connect_one_way_entrance("Adult GC Darunias Chamber", Adult_GC_Darunias_Chamber, function()
    return Any(
        Can_use("ProgressiveStrengthUpgrade", "adult"),
        Has_explosives(),
        Can_use("Bow", "adult"),
        All(
            Has("logic_link_goron_dins"),
            Can_use("DinsFire", "adult")
        )
    )
end)
Adult_Goron_City:connect_one_way_entrance("Adult GC Grotto Platform", Adult_GC_Grotto_Platform, function()
    return Any(
        All(
            Can_play("SongofTime"),
            Any(
                All(
                    Tracker:FindObjectForCode("damage_multiplier").CurrentStage < 3
                    -- damage_multiplier != 'quadruple'
                ),
                Can_use("GoronTunic", "adult"),
                Can_use("Longshot", "adult"),
                Can_use("NayrusLove", "adult")
            )
        ),
        All(
            Can_use("Hookshot", "adult"),
            Any(
                All(
                    Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4,
                    Can_use("GoronTunic", "adult")
                ),
                Can_use("NayrusLove", "adult"),
                All(
                    Tracker:FindObjectForCode("damage_multiplier").CurrentStage < 3,
                    -- damage_multiplier != 'quadruple',
                    Has("logic_goron_grotto")
                )
            )
        )
    )
end)
Adult_Goron_City:connect_one_way_entrance("Adult GC Spinning Pot", Adult_GC_Spinning_Pot, function() return false end)


Child_GC_Woods_Warp:connect_one_way_entrance("Child Goron City", Child_Goron_City, function()
    return All(
        Can_leave_forest("child"),
        Any(
            Can_blast_or_smash("child"),
            Can_use("DinsFire", "child"),
            Can_use("Bow", "child"),
            Can_use("ProgressiveStrengthUpgrade", "child")
        )
    )
end)
Child_GC_Woods_Warp:connect_one_way_entrance("Child Lost Woods", Child_Lost_Woods)

Adult_GC_Woods_Warp:connect_one_way_entrance("Adult Goron City", Adult_Goron_City, function()
    return All(
        Can_leave_forest("adult"),
        Any(
            Can_blast_or_smash("adult"),
            Can_use("DinsFire", "adult"),
            Can_use("Bow", "adult"),
            Can_use("ProgressiveStrengthUpgrade", "adult")
        )
    )
end)
Adult_GC_Woods_Warp:connect_one_way_entrance("Adult Lost Woods", Adult_Lost_Woods)


Child_GC_Darunias_Chamber:connect_one_way("Child GC Darunias Joy", function() return Can_play("SariasSong") end)
Child_GC_Darunias_Chamber:connect_one_way("Child GC Darunia Pot 1")
Child_GC_Darunias_Chamber:connect_one_way("Child GC Darunia Pot 2")
Child_GC_Darunias_Chamber:connect_one_way("Child GC Darunia Pot 3")

Adult_GC_Darunias_Chamber:connect_one_way("Adult GC Darunias Joy", function() return false end)
Adult_GC_Darunias_Chamber:connect_one_way("Adult GC Darunia Pot 1")
Adult_GC_Darunias_Chamber:connect_one_way("Adult GC Darunia Pot 2")
Adult_GC_Darunias_Chamber:connect_one_way("Adult GC Darunia Pot 3")

Child_GC_Darunias_Chamber:connect_one_way_entrance("Child Goron City", Child_Goron_City)
Child_GC_Darunias_Chamber:connect_one_way_entrance("Child DMC Lower Local", Child_DMC_Lower_Local, function() return false end)

Adult_GC_Darunias_Chamber:connect_one_way_entrance("Adult Goron City", Adult_Goron_City)
Adult_GC_Darunias_Chamber:connect_one_way_entrance("Adult DMC Lower Local", Adult_DMC_Lower_Local)

Child_GC_Grotto_Platform:connect_one_way_entrance("Child GC Grotto", Child_GC_Grotto)
Child_GC_Grotto_Platform:connect_one_way_entrance("Child Goron City", Child_Goron_City, function()
    return Any(
        All(
            Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4,
            Any(
                Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 3,
                Can_use("GoronTunic", "child")
            )
        ),
        Can_use("NayrusLove", "child"),
        All(
            Can_play("SongofTime"),
            Can_use("Longshot", "child")
        )
    )
end)

Adult_GC_Grotto_Platform:connect_one_way_entrance("Adult GC Grotto", Adult_GC_Grotto)
Adult_GC_Grotto_Platform:connect_one_way_entrance("Adult Goron City", Adult_Goron_City, function()
    return Any(
        All(
            Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4,
            Any(
                Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 3,
                Can_use("GoronTunic", "adult")
            )
        ),
        Can_use("NayrusLove", "adult"),
        All(
            Can_play("SongofTime"),
            Can_use("Longshot", "adult")
        )
    )
end)

Child_GC_Spinning_Pot:connect_one_way("Child GC Spinning Pot Freestanding PoH")
Child_GC_Spinning_Pot:connect_one_way("Child GC Spinning Pot Bomb Drop 1")
Child_GC_Spinning_Pot:connect_one_way("Child GC Spinning Pot Bomb Drop 2")
Child_GC_Spinning_Pot:connect_one_way("Child GC Spinning Pot Bomb Drop 3")
Child_GC_Spinning_Pot:connect_one_way("Child GC Spinning Pot Rupee Drop 1")
Child_GC_Spinning_Pot:connect_one_way("Child GC Spinning Pot Rupee Drop 2")
Child_GC_Spinning_Pot:connect_one_way("Child GC Spinning Pot Rupee Drop 3")
Child_GC_Spinning_Pot:connect_one_way("Child GC Spinning Pot PoH Drop Rupee 1")
Child_GC_Spinning_Pot:connect_one_way("Child GC Spinning Pot PoH Drop Rupee 2")

Adult_GC_Spinning_Pot:connect_one_way("Adult GC Spinning Pot Freestanding PoH")
Adult_GC_Spinning_Pot:connect_one_way("Adult GC Spinning Pot Bomb Drop 1")
Adult_GC_Spinning_Pot:connect_one_way("Adult GC Spinning Pot Bomb Drop 2")
Adult_GC_Spinning_Pot:connect_one_way("Adult GC Spinning Pot Bomb Drop 3")
Adult_GC_Spinning_Pot:connect_one_way("Adult GC Spinning Pot Rupee Drop 1")
Adult_GC_Spinning_Pot:connect_one_way("Adult GC Spinning Pot Rupee Drop 2")
Adult_GC_Spinning_Pot:connect_one_way("Adult GC Spinning Pot Rupee Drop 3")
Adult_GC_Spinning_Pot:connect_one_way("Adult GC Spinning Pot PoH Drop Rupee 1")
Adult_GC_Spinning_Pot:connect_one_way("Adult GC Spinning Pot PoH Drop Rupee 2")


-- Child_GC_Spinning_Pot:connect_one_way_entrance()
-- Adult_GC_Spinning_Pot:connect_one_way_entrance()

Child_GC_Shop:connect_one_way("Child GC Shop Item 1")
Child_GC_Shop:connect_one_way("Child GC Shop Item 2")
Child_GC_Shop:connect_one_way("Child GC Shop Item 3")
Child_GC_Shop:connect_one_way("Child GC Shop Item 4")
Child_GC_Shop:connect_one_way("Child GC Shop Item 5")
Child_GC_Shop:connect_one_way("Child GC Shop Item 6")
Child_GC_Shop:connect_one_way("Child GC Shop Item 7")
Child_GC_Shop:connect_one_way("Child GC Shop Item 8")

Adult_GC_Shop:connect_one_way("Adult GC Shop Item 1")
Adult_GC_Shop:connect_one_way("Adult GC Shop Item 2")
Adult_GC_Shop:connect_one_way("Adult GC Shop Item 3")
Adult_GC_Shop:connect_one_way("Adult GC Shop Item 4")
Adult_GC_Shop:connect_one_way("Adult GC Shop Item 5")
Adult_GC_Shop:connect_one_way("Adult GC Shop Item 6")
Adult_GC_Shop:connect_one_way("Adult GC Shop Item 7")
Adult_GC_Shop:connect_one_way("Adult GC Shop Item 8")

Child_GC_Shop:connect_one_way_entrance("Child Goron City", Child_Goron_City)
Adult_GC_Shop:connect_one_way_entrance("Adult Goron City", Adult_Goron_City)

Child_GC_Grotto:connect_one_way("Child GC Deku Scrub Grotto Left", function() return Can_stun_deku("child") end)
Child_GC_Grotto:connect_one_way("Child GC Deku Scrub Grotto Right", function() return Can_stun_deku("child") end)
Child_GC_Grotto:connect_one_way("Child GC Deku Scrub Grotto Center", function() return Can_stun_deku("child") end)
Child_GC_Grotto:connect_one_way("Child GC Grotto Beehive", function() return Can_break_upper_beehive("child") end)

Adult_GC_Grotto:connect_one_way("Adult GC Deku Scrub Grotto Left", function() return Can_stun_deku("adult") end)
Adult_GC_Grotto:connect_one_way("Adult GC Deku Scrub Grotto Right", function() return Can_stun_deku("adult") end)
Adult_GC_Grotto:connect_one_way("Adult GC Deku Scrub Grotto Center", function() return Can_stun_deku("adult") end)
Adult_GC_Grotto:connect_one_way("Adult GC Grotto Beehive", function() return Can_break_upper_beehive("adult") end)

Child_GC_Grotto:connect_one_way_entrance("Child GC Grotto Platform", Child_GC_Grotto_Platform)
Adult_GC_Grotto:connect_one_way_entrance("Adult GC Grotto Platform", Adult_GC_Grotto_Platform)

-- {
--     "region_name": "Goron City",
--     "scene": "Goron City",
--     "hint": "GORON_CITY",
--     "events": {
--         "Goron City Child Fire": "is_child and Can_use("DinsFire", "child")",
--         "GC Woods Warp Open": "
--             Can_blast_or_smash() or Can_use("DinsFire", "child") or Can_use(Bow) or
--             Can_use("ProgressiveScale", "") or 'Goron City Child Fire'",
--         "Stop GC Rolling Goron as Adult": "
--             is_adult and
--             (Can_use("ProgressiveScale", "") or Has_explosives() or Bow or
--                 Has(("logic_link_goron_dins") and Can_use("DinsFire", "child")))"
--     },
--     "locations": {
--         "GC Maze Left Chest": "
--             Can_use(Megaton_Hammer) or Can_use("SilverGauntlets", "child") or
--             Has(("logic_goron_city_leftmost") and Has_explosives() and Can_use(HoverBoots))",
--         "GC Maze Center Chest": "Can_blast_or_smash() or Can_use("SilverGauntlets", "child")",
--         "GC Maze Right Chest": "Can_blast_or_smash() or Can_use("SilverGauntlets", "child")",
--         "GC Rolling Goron as Child": "
--             is_child and
--             (Has_explosives() or (Can_use("ProgressiveScale", "") and Has("logic_child_rolling_with_strength")))",
--         "GC Medigoron": "
--             is_adult and ProgressiveWallet and
--             (Can_blast_or_smash() or Can_use("ProgressiveScale", ""))",
--         "GC Rolling Goron as Adult": "'Stop GC Rolling Goron as Adult'",
--         "GC Lower Staircase Pot 1": "True",
--         "GC Lower Staircase Pot 2": "True",
--         "GC Upper Staircase Pot 1": "True",
--         "GC Upper Staircase Pot 2": "True",
--         "GC Upper Staircase Pot 3": "True",
--         "GC Medigoron Pot": "Can_blast_or_smash() or Can_use("ProgressiveScale", "")",
--         "GC Boulder Maze Crate": "(Can_blast_or_smash() or Can_use("SilverGauntlets", "child")) and Can_break_crate",
--         "GC GS Boulder Maze": "is_child and Has_explosives()",
--         "GC GS Center Platform": "is_adult",
--         "GC Maze Gossip Stone": "Can_blast_or_smash() or Can_use("SilverGauntlets", "child")",
--         "GC Medigoron Gossip Stone": "Can_blast_or_smash() or Can_use("ProgressiveScale", "")",
--         "Gossip Stone Fairy": "
--             can_summon_gossip_fairy_without_suns and Has_bottle and
--             (Can_blast_or_smash() or Can_use("ProgressiveScale", ""))",
--         "Bug Rock": "(Can_blast_or_smash() or Can_use("SilverGauntlets", "child")) and Has_bottle",
--         "Stick Pot": "is_child"
--     },
--     "exits": {
--         "Death Mountain": "True",
--         "GC Woods Warp": "'GC Woods Warp Open'",
--         "GC Shop": "
--             (is_adult and 'Stop GC Rolling Goron as Adult') or
--             (is_child and (Has_explosives() or Can_use("ProgressiveScale", "") or 'Goron City Child Fire'))",
--         "GC Darunias Chamber": "
--             (is_adult and 'Stop GC Rolling Goron as Adult') or
--             (is_child and can_play(Zeldas_Lullaby))",
--         "GC Grotto Platform": "
--             is_adult and
--             ((can_play(Song_of_Time) and
--                     ((Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4 and damage_multiplier != 'quadruple') or
--                         Goron_Tunic or Longshot or Can_use(Nayrus_Love))) or
--                 (Hookshot and
--                     ((Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4 and Goron_Tunic) or
--                         Can_use(Nayrus_Love) or
--                         (Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4 and damage_multiplier != 'quadruple' and logic_goron_grotto))))",
--         "GC Spinning Pot": "
--             is_child and 'Goron City Child Fire' and
--             (Bombs or (Can_use("ProgressiveScale", "") and Has("logic_goron_city_pot_with_strength")) or
--                 (Has_bombchus and logic_goron_city_pot))"
--     }
-- },
-- {
--     "region_name": "GC Woods Warp",
--     "scene": "Goron City",
--     "hint": "GORON_CITY",
--     "events": {
--         "GC Woods Warp Open": "Can_blast_or_smash() or Can_use("DinsFire", "child")"
--     },
--     "exits": {
--         "Goron City": "Can_leave_forest and 'GC Woods Warp Open'",
--         "Lost Woods": "True"
--     }
-- },
-- {
--     "region_name": "GC Darunias Chamber",
--     "scene": "Goron City",
--     "hint": "GORON_CITY",
--     "events": {
--         "Goron City Child Fire": "Can_use(Sticks)"
--     },
--     "locations": {
--         "GC Darunias Joy": "is_child and can_play(Sarias_Song)",
--         "GC Darunia Pot 1": "True",
--         "GC Darunia Pot 2": "True",
--         "GC Darunia Pot 3": "True"
--     },
--     "exits": {
--         "Goron City": "True",
--         "DMC Lower Local": "is_adult"
--     }
-- },
-- {
--     "region_name": "GC Grotto Platform",
--     "scene": "Goron City",
--     "hint": "GORON_CITY",
--     "exits": {
--         "GC Grotto": "True",
--         "Goron City": "
--             (Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4 and (damage_multiplier != 'quadruple' or Can_use(Goron_Tunic))) or
--             Can_use(Nayrus_Love) or (can_play(Song_of_Time) and Can_use(Longshot))"
--     }
-- },
-- {
--     "region_name": "GC Spinning Pot",
--     "scene": "Goron City",
--     "locations": {
--         "GC Pot Freestanding PoH": "True",
--         "GC Spinning Pot Bomb Drop 1": "True",
--         "GC Spinning Pot Bomb Drop 2": "True",
--         "GC Spinning Pot Bomb Drop 3": "True",
--         "GC Spinning Pot Rupee Drop 1": "True",
--         "GC Spinning Pot Rupee Drop 2": "True",
--         "GC Spinning Pot Rupee Drop 3": "True",
--         "GC Spinning Pot PoH Drop Rupee 1": "True",
--         "GC Spinning Pot PoH Drop Rupee 2": "True"
--     }
-- },
-- {
--     "region_name": "GC Shop",
--     "scene": "GC Shop",
--     "locations": {
--         "GC Shop Item 1": "True",
--         "GC Shop Item 2": "True",
--         "GC Shop Item 3": "True",
--         "GC Shop Item 4": "True",
--         "GC Shop Item 5": "True",
--         "GC Shop Item 6": "True",
--         "GC Shop Item 7": "True",
--         "GC Shop Item 8": "True"
--     },
--     "exits": {
--         "Goron City": "True"
--     }
-- },
-- {
--     "region_name": "GC Grotto",
--     "scene": "GC Grotto",
--     "locations": {
--         "GC Deku Scrub Grotto Left": "Can_stun_deku",
--         "GC Deku Scrub Grotto Right": "Can_stun_deku",
--         "GC Deku Scrub Grotto Center": "Can_stun_deku",
--         "GC Grotto Beehive": "Can_break_upper_beehive"
--     },
--     "exits": {
--         "GC Grotto Platform": "True"
--     }
-- },