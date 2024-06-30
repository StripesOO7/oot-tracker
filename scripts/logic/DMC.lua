-- Child_DMC_Upper_Nearby = OOTLocation.new("Child_DMC_Upper_Nearby")
-- Child_DMC_Upper_Local = OOTLocation.new("Child_DMC_Upper_Local")
-- Child_DMC_Pierre_Platform = OOTLocation.new("Child_DMC_Pierre_Platform")
-- Child_DMC_Ladder_Area_Nearby = OOTLocation.new("Child_DMC_Ladder_Area_Nearby")
-- Child_DMC_Lower_Nearby = OOTLocation.new("Child_DMC_Lower_Nearby")
-- Child_DMC_Lower_Local = OOTLocation.new("Child_DMC_Lower_Local")
-- Child_DMC_Central_Nearby = OOTLocation.new("Child_DMC_Central_Nearby")
-- Child_DMC_Central_Local = OOTLocation.new("Child_DMC_Central_Local")
-- Child_DMC_Fire_Temple_Entrance = OOTLocation.new("Child_DMC_Fire_Temple_Entrance")
-- Child_DMC_Great_Fairy_Fountain = OOTLocation.new("Child_DMC_Great_Fairy_Fountain")
-- Child_DMC_Upper_Grotto = OOTLocation.new("Child_DMC_Upper_Grotto")
-- Child_DMC_Hammer_Grotto = OOTLocation.new("Child_DMC_Hammer_Grotto")

-- Adult_DMC_Upper_Nearby = OOTLocation.new("Adult_DMC_Upper_Nearby")
-- Adult_DMC_Upper_Local = OOTLocation.new("Adult_DMC_Upper_Local")
-- Adult_DMC_Pierre_Platform = OOTLocation.new("Adult_DMC_Pierre_Platform")
-- Adult_DMC_Ladder_Area_Nearby = OOTLocation.new("Adult_DMC_Ladder_Area_Nearby")
-- Adult_DMC_Lower_Nearby = OOTLocation.new("Adult_DMC_Lower_Nearby")
-- Adult_DMC_Lower_Local = OOTLocation.new("Adult_DMC_Lower_Local")
-- Adult_DMC_Central_Nearby = OOTLocation.new("Adult_DMC_Central_Nearby")
-- Adult_DMC_Central_Local = OOTLocation.new("Adult_DMC_Central_Local")
-- Adult_DMC_Fire_Temple_Entrance = OOTLocation.new("Adult_DMC_Fire_Temple_Entrance")
-- Adult_DMC_Great_Fairy_Fountain = OOTLocation.new("Adult_DMC_Great_Fairy_Fountain")
-- Adult_DMC_Upper_Grotto = OOTLocation.new("Adult_DMC_Upper_Grotto")
-- Adult_DMC_Hammer_Grotto = OOTLocation.new("Adult_DMC_Hammer_Grotto")

Child_DMC_Upper_Nearby:connect_one_way_entrance("Child DMC Upper Local", Child_DMC_Upper_Local, function() return false end)
Child_DMC_Upper_Nearby:connect_one_way_entrance("Child Death Mountain Summit", Child_Death_Mountain_Summit)
Child_DMC_Upper_Nearby:connect_one_way_entrance("Child DMC Upper Grotto", Child_DMC_Upper_Grotto, function() return Can_blast_or_smash("child") end)

Adult_DMC_Upper_Nearby:connect_one_way_entrance("Adult DMC Upper Local", Adult_DMC_Upper_Local, function() return Can_use("GoronTunic", "adult") end)
Adult_DMC_Upper_Nearby:connect_one_way_entrance("Adult Death Mountain Summit", Adult_Death_Mountain_Summit)
Adult_DMC_Upper_Nearby:connect_one_way_entrance("Adult DMC Upper Grotto", Adult_DMC_Upper_Grotto, function() return Can_blast_or_smash("adult") end)

Child_DMC_Upper_Local:connect_one_way("Child DMC Wall Freestanding PoH")
Child_DMC_Upper_Local:connect_one_way("Child DMC GS Crate", function()
    return All(
        Can_child_attack("child"),
        Can_break_heated_crate("child")
    )
end)
Child_DMC_Upper_Local:connect_one_way("Child DMC Gossip Stone", function() return Has_explosives() end)

Adult_DMC_Upper_Local:connect_one_way("Adult DMC Wall Freestanding PoH")
Adult_DMC_Upper_Local:connect_one_way("Adult DMC GS Crate", function() return false end)
Adult_DMC_Upper_Local:connect_one_way("Adult DMC Gossip Stone", function() return Has_explosives() end)


Child_DMC_Upper_Local:connect_one_way_entrance("Child DMC Upper Nearby", Child_DMC_Upper_Nearby)
Child_DMC_Upper_Local:connect_one_way_entrance("Child DMC Ladder Area Nearby", Child_DMC_Ladder_Area_Nearby)
Child_DMC_Upper_Local:connect_one_way_entrance("Child DMC Pierre Platform", Child_DMC_Pierre_Platform, function()
    return Any(
        All(
            Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4,
            Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 3
            -- damage_multiplier != 'quadruple'
        ),
        All(
            -- Fairy(),
            Any(
                Can_use("GoronTunic", "child"),
                Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4
            )
        ),
        Can_use("NayrusLove", "child")
    ) 
end)
Child_DMC_Upper_Local:connect_one_way_entrance("Child DMC Central Nearby", Child_DMC_Central_Nearby, function() return  false end)

Adult_DMC_Upper_Local:connect_one_way_entrance("Adult DMC Upper Nearby", Adult_DMC_Upper_Nearby)
Adult_DMC_Upper_Local:connect_one_way_entrance("Adult DMC Ladder Area Nearby", Adult_DMC_Ladder_Area_Nearby)
Adult_DMC_Upper_Local:connect_one_way_entrance("Adult DMC Pierre Platform", Adult_DMC_Pierre_Platform, function()
    return Any(
        All(
            Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4,
            Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 3
            -- damage_multiplier != 'quadruple'
        ),
        All(
            -- Fairy(),
            Any(
                Can_use("GoronTunic", "adult"),
                Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4
            )
        ),
        Can_use("NayrusLove", "adult")
    ) 
end)
Adult_DMC_Upper_Local:connect_one_way_entrance("Adult DMC Central Nearby", Adult_DMC_Central_Nearby, function()
    return All(
        Can_use("GoronTunic", "adult"),
        Can_use("Longshot", "adult"),
        Any(
            All(
                Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4,
                Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 3
                -- damage_multiplier != 'quadruple'
            ),
            Can_use("NayrusLove", "adult")
        )
    )
end)


Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Green Rupee 1", function() return false end)
Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Green Rupee 2", function() return false end)
Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Green Rupee 3", function() return false end)
Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Green Rupee 4", function() return false end)
Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Green Rupee 5", function() return false end)
Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Green Rupee 6", function() return false end)
Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Red Rupee", function() return false end)

Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Green Rupee 1")
Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Green Rupee 2")
Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Green Rupee 3")
Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Green Rupee 4")
Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Green Rupee 5")
Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Green Rupee 6")
Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Red Rupee")


Child_DMC_Ladder_Area_Nearby:connect_one_way("Child DMC Deku Scrub", function() return Can_stun_deku("child") end)
Adult_DMC_Ladder_Area_Nearby:connect_one_way("Ddult DMC Deku Scrub", function() return false end)

Child_DMC_Ladder_Area_Nearby:connect_one_way_entrance("Child DMC Upper Nearby", Child_DMC_Upper_Nearby, function() return false end)
Child_DMC_Ladder_Area_Nearby:connect_one_way_entrance("Child DMC Lower Nearby", Child_DMC_Lower_Nearby, function() return false end)

Adult_DMC_Ladder_Area_Nearby:connect_one_way_entrance("Adult DMC Upper Nearby", Adult_DMC_Upper_Nearby)
Adult_DMC_Ladder_Area_Nearby:connect_one_way_entrance("Adult DMC Lower Nearby", Adult_DMC_Lower_Nearby, function()
    return Any(
        All(
            Has("HoverBoots"),
            All(
                Adult_DMC_Lower_Nearby.accessibility_level,
                Can_use("MegatonHammer", "adult")
            )
        ),
        All(
            Any(
                Has("logic_crater_boulder_jumpslash"),
                Has("logic_crater_boulder_skip")
            ),
            Has("MegatonHammer")
        ),
        All(
            Has("logic_crater_boulder_skip"),
            Goron_Tunic()
        )
    )
end)


Child_DMC_Lower_Nearby:connect_one_way("Child DMC Near GC Pot 1", function() return false end)
Child_DMC_Lower_Nearby:connect_one_way("Child DMC Near GC Pot 2", function() return false end)
Child_DMC_Lower_Nearby:connect_one_way("Child DMC Near GC Pot 3", function() return false end)
Child_DMC_Lower_Nearby:connect_one_way("Child DMC Near GC Pot 4", function() return false end)

Adult_DMC_Lower_Nearby:connect_one_way("Adult DMC Near GC Pot 1")
Adult_DMC_Lower_Nearby:connect_one_way("Adult DMC Near GC Pot 2")
Adult_DMC_Lower_Nearby:connect_one_way("Adult DMC Near GC Pot 3")
Adult_DMC_Lower_Nearby:connect_one_way("Adult DMC Near GC Pot 4")


Child_DMC_Lower_Nearby:connect_one_way_entrance("Child DMC Lower Local", Child_DMC_Lower_Local, function() return Can_use("GoronTunic", "child") end)
Child_DMC_Lower_Nearby:connect_one_way_entrance("Child GC Darunias Chamber", Child_GC_Darunias_Chamber)
Child_DMC_Lower_Nearby:connect_one_way_entrance("Child DMC Great Fairy Fountain", Child_DMC_Great_Fairy_Fountain, function() return Can_use("MegatonHammer", "child") end)
Child_DMC_Lower_Nearby:connect_one_way_entrance("Child DMC Hammer Grotto", Child_DMC_Hammer_Grotto, function() return Can_use("MegatonHammer", "child") end)

Adult_DMC_Lower_Nearby:connect_one_way_entrance("Adult DMC Lower Local", Adult_DMC_Lower_Local, function() return Can_use("GoronTunic", "adult") end)
Adult_DMC_Lower_Nearby:connect_one_way_entrance("Adult GC Darunias Chamber", Adult_GC_Darunias_Chamber)
Adult_DMC_Lower_Nearby:connect_one_way_entrance("Adult DMC Great Fairy Fountain", Adult_DMC_Great_Fairy_Fountain, function() return Can_use("MegatonHammer", "adult") end)
Adult_DMC_Lower_Nearby:connect_one_way_entrance("Adult DMC Hammer Grotto", Adult_DMC_Hammer_Grotto, function() return Can_use("MegatonHammer", "adult") end)


-- Child_DMC_Lower_Local:connect_one_way()
-- Adult_DMC_Lower_Local:connect_one_way()

Child_DMC_Lower_Local:connect_one_way_entrance("Child DMC Lower Nearby", Child_DMC_Lower_Nearby)
Child_DMC_Lower_Local:connect_one_way_entrance("Child DMC Ladder Area Nearby", Child_DMC_Ladder_Area_Nearby)
Child_DMC_Lower_Local:connect_one_way_entrance("Child DMC Central Nearby", Child_DMC_Central_Nearby, function() return false end)
Child_DMC_Lower_Local:connect_one_way_entrance("Child DMC Fire Temple Entrance", Child_DMC_Fire_Temple_Entrance, function() return false end)

Adult_DMC_Lower_Local:connect_one_way_entrance("Adult DMC Lower Nearby", Adult_DMC_Lower_Nearby)
Adult_DMC_Lower_Local:connect_one_way_entrance("Adult DMC Ladder Area Nearby", Adult_DMC_Ladder_Area_Nearby)
Adult_DMC_Lower_Local:connect_one_way_entrance("Adult DMC Central Nearby", Adult_DMC_Central_Nearby, function()
    return Any(
        Has("HoverBoots"),
        Hookshot(),
        All(
            Has("logic_crater_bolero_jump"),
            Goron_Tunic(),
            Can_shield("adult")
        )
    )
end)
Adult_DMC_Lower_Local:connect_one_way_entrance("Adult DMC Fire Temple Entrance", Adult_DMC_Fire_Temple_Entrance, function()
    return All(
        Any(
            Has("Hover_Boots"),
            Hookshot()
        ),
        Any(
            Has("logic_fewer_tunic_requirements"),
            Goron_Tunic()
        )
    )
end)


Child_DMC_Central_Nearby:connect_one_way("Child DMC Volcano Freestanding PoH", function() return false end)
Child_DMC_Central_Nearby:connect_one_way("Child Sheik in Crater", function() return false end)

Adult_DMC_Central_Nearby:connect_one_way("Adult DMC Volcano Freestanding PoH", function()
    return Any(
        Can_plant_bean("adult"),
        All(
            Has("logic_crater_bean_poh_with_hovers"),
            Has("HoverBoots")
        )
    )
end)
Adult_DMC_Central_Nearby:connect_one_way("Adult Sheik in Crater")


Child_DMC_Central_Nearby:connect_one_way_entrance("Child DMC Central Local", Child_DMC_Central_Local, function() return false end)
Adult_DMC_Central_Nearby:connect_one_way_entrance("Adult DMC Central Local", Adult_DMC_Central_Local, function() return Can_use("GoronTunic", "adult") end)

Child_DMC_Central_Local:connect_one_way("Child DMC GS Bean Patch", function()
    return All(
        Can_plant_bugs("child"),
        Can_child_attack("child")
    ) 
end)
Child_DMC_Central_Local:connect_one_way("Child Bean Plant Fairy", function()
    return All(
        Can_plant_bean("child"),
        Can_play("SongofStorms"),
        Has("Bottle")
    )
end)
Child_DMC_Central_Local:connect_one_way("Child DMC Child Red Rupee 1")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Red Rupee 2")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Blue Rupee 1")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Blue Rupee 2")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Blue Rupee 3")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Blue Rupee 4")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Blue Rupee 5")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Blue Rupee 6")

Adult_DMC_Central_Local:connect_one_way("Adult DMC GS Bean Patch", function() return false end)
Adult_DMC_Central_Local:connect_one_way("Adult Bean Plant Fairy", function() return false end)
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Red Rupee 1", function() return false end)
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Red Rupee 2", function() return false end)
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Blue Rupee 1", function() return false end)
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Blue Rupee 2", function() return false end)
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Blue Rupee 3", function() return false end)
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Blue Rupee 4", function() return false end)
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Blue Rupee 5", function() return false end)
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Blue Rupee 6", function() return false end)

Child_DMC_Central_Local:connect_one_way_entrance("Child DMC Central Nearby", Child_DMC_Central_Nearby)
Child_DMC_Central_Local:connect_one_way_entrance("Child DMC Lower Nearby", Child_DMC_Lower_Nearby, function() return false end)
Child_DMC_Central_Local:connect_one_way_entrance("Child DMC Upper Nearby", Child_DMC_Upper_Nearby, function() return false end)
Child_DMC_Central_Local:connect_one_way_entrance("Child DMC Fire Temple Entrance", Child_DMC_Fire_Temple_Entrance, function() return Has("shuffle_dungeon_entrances") end)
Child_DMC_Central_Local:connect_one_way_entrance("Child DMC Pierre Platform", Child_DMC_Pierre_Platform, function() return false end)

Adult_DMC_Central_Local:connect_one_way_entrance("Adult DMC Central Nearby", Adult_DMC_Central_Nearby)
Adult_DMC_Central_Local:connect_one_way_entrance("Adult DMC Lower Nearby", Adult_DMC_Lower_Nearby, function()
    return Any(
        Has("HoverBoots"),
        Hookshot(),
        Can_plant_bean("adult")
    )
end)
Adult_DMC_Central_Local:connect_one_way_entrance("Adult DMC Upper Nearby", Adult_DMC_Upper_Nearby, function() return Can_plant_bean("adult") end)
Adult_DMC_Central_Local:connect_one_way_entrance("Adult DMC Fire Temple Entrance", Adult_DMC_Fire_Temple_Entrance, function()
    return Any(
        Has("logic_fewer_tunic_requirements"),
        Goron_Tunic()
    )
end)
Adult_DMC_Central_Local:connect_one_way_entrance("Adult DMC Pierre Platform", Adult_DMC_Pierre_Platform, function() return Distant_Scarecrow("adult") end)


-- Child_DMC_Fire_Temple_Entrance:connect_one_way()
-- Adult_DMC_Fire_Temple_Entrance:connect_one_way()

Child_DMC_Fire_Temple_Entrance:connect_one_way_entrance("Child Fire Temple Lower", Child_Fire_Temple_Lower)
Child_DMC_Fire_Temple_Entrance:connect_one_way_entrance("Child DMC Central Nearby", Child_DMC_Central_Nearby, function() return false end)

Adult_DMC_Fire_Temple_Entrance:connect_one_way_entrance("Adult Fire Temple Lower", Adult_Fire_Temple_Lower)
Adult_DMC_Fire_Temple_Entrance:connect_one_way_entrance("Adult DMC Central Nearby", Adult_DMC_Central_Nearby, function() return Can_use("GoronTunic", "adult") end)


Child_DMC_Great_Fairy_Fountain:connect_one_way("Child DMC Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)
Adult_DMC_Great_Fairy_Fountain:connect_one_way("Adult DMC Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)

Child_DMC_Great_Fairy_Fountain:connect_one_way_entrance("Child DMC Lower Local", Child_DMC_Lower_Local)
Adult_DMC_Great_Fairy_Fountain:connect_one_way_entrance("Adult DMC Lower Local", Adult_DMC_Lower_Local)

Child_DMC_Upper_Grotto:connect_one_way("Child DMC Upper Grotto Chest")
Child_DMC_Upper_Grotto:connect_one_way("Child DMC Upper Grotto Beehive 1", function() return Can_break_lower_beehive("child") end)
Child_DMC_Upper_Grotto:connect_one_way("Child DMC Upper Grotto Beehive 2", function() return Can_break_lower_beehive("child") end)
Child_DMC_Upper_Grotto:connect_one_way("Child DMC Upper Grotto Gossip Stone")

Adult_DMC_Upper_Grotto:connect_one_way("Adult DMC Upper Grotto Chest")
Adult_DMC_Upper_Grotto:connect_one_way("Adult DMC Upper Grotto Beehive 1", function() return Can_break_lower_beehive("adult") end)
Adult_DMC_Upper_Grotto:connect_one_way("Adult DMC Upper Grotto Beehive 2", function() return Can_break_lower_beehive("adult") end)
Adult_DMC_Upper_Grotto:connect_one_way("Adult DMC Upper Grotto Gossip Stone")


Child_DMC_Upper_Grotto:connect_one_way_entrance("Child DMC Upper Local", Child_DMC_Upper_Local)
Adult_DMC_Upper_Grotto:connect_one_way_entrance("Adult DMC Upper Local", Adult_DMC_Upper_Local)

Child_DMC_Hammer_Grotto:connect_one_way("Child DMC Deku Scrub Grotto Left", function() return Can_stun_deku("child") end)
Child_DMC_Hammer_Grotto:connect_one_way("Child DMC Deku Scrub Grotto Right", function() return Can_stun_deku("child") end)
Child_DMC_Hammer_Grotto:connect_one_way("Child DMC Deku Scrub Grotto Center", function() return Can_stun_deku("child") end)
Child_DMC_Hammer_Grotto:connect_one_way("Child DMC Hammer Grotto Beehive", function() return Can_break_upper_beehive("child") end)

Adult_DMC_Hammer_Grotto:connect_one_way("Adult DMC Deku Scrub Grotto Left", function() return Can_stun_deku("adult") end)
Adult_DMC_Hammer_Grotto:connect_one_way("Adult DMC Deku Scrub Grotto Right", function() return Can_stun_deku("adult") end)
Adult_DMC_Hammer_Grotto:connect_one_way("Adult DMC Deku Scrub Grotto Center", function() return Can_stun_deku("adult") end)
Adult_DMC_Hammer_Grotto:connect_one_way("Adult DMC Hammer Grotto Beehive", function() return Can_break_upper_beehive("adult") end)


Child_DMC_Hammer_Grotto:connect_one_way_entrance("Child DMC Lower Local", Child_DMC_Lower_Local)
Adult_DMC_Hammer_Grotto:connect_one_way_entrance("Adult DMC Lower Local", Adult_DMC_Lower_Local)


-- {
--     "region_name": "DMC Upper Nearby",
--     "scene": "Death Mountain Crater",
--     "hint": "DEATH_MOUNTAIN_CRATER",
--     "exits": {
--         "DMC Upper Local": "Can_use("GoronTunic")",
--         "Death Mountain Summit": "True",
--         "DMC Upper Grotto": "here(Can_blast_or_smash)"
--     }
-- },
-- {
--     "region_name": "DMC Upper Local",
--     "scene": "Death Mountain Crater",
--     "hint": "DEATH_MOUNTAIN_CRATER",
--     "locations": {
--         "DMC Wall Freestanding PoH": "True",
--         "DMC GS Crate": "is_child and Can_child_attack and can_break_heated_crate",
--         "DMC Gossip Stone": "Has_explosives",
--         "Gossip Stone Fairy": "
--             Has_explosives and can_summon_gossip_fairy_without_suns and Has_bottle"
--     },
--     "exits": {
--         "DMC Upper Nearby": "True",
--         "DMC Ladder Area Nearby": "True",
--         "DMC Pierre Platform": "
--             (Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4 and damage_multiplier != 'quadruple') or
--             (Fairy and (Can_use("GoronTunic") or Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4)) or Can_use("NayrusLove")",
--         "DMC Central Nearby": "
--             Can_use("GoronTunic") and Can_use(Longshot) and
--             ((Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4 and damage_multiplier != 'quadruple') or Can_use("NayrusLove"))"
--     }
-- },
-- {
--     "region_name": "DMC Pierre Platform",
--     "font_color": "Red",
--     "scene": "Death Mountain Crater",
--     "hint": "DEATH_MOUNTAIN_CRATER",
--     "locations": {
--         "DMC Adult Green Rupee 1": "is_adult",
--         "DMC Adult Green Rupee 2": "is_adult",
--         "DMC Adult Green Rupee 3": "is_adult",
--         "DMC Adult Green Rupee 4": "is_adult",
--         "DMC Adult Green Rupee 5": "is_adult",
--         "DMC Adult Green Rupee 6": "is_adult",
--         "DMC Adult Red Rupee": "is_adult"
--     }
-- },
-- {
--     "region_name": "DMC Ladder Area Nearby",
--     "scene": "Death Mountain Crater",
--     "hint": "DEATH_MOUNTAIN_CRATER",
--     "locations": {
--         "DMC Deku Scrub": "is_child and Can_stun_deku()"
--     },
--     "exits": {
--         "DMC Upper Nearby": "is_adult",
--         "DMC Lower Nearby": "
--             is_adult and
--             (Hover_Boots or at('DMC Lower Nearby', Can_use(Megaton_Hammer)) or
--                 ((logic_crater_boulder_jumpslash or logic_crater_boulder_skip) and Megaton_Hammer) or
--                 (logic_crater_boulder_skip and Goron_Tunic))"
--     }
-- },
-- {
--     "region_name": "DMC Lower Nearby",
--     "scene": "Death Mountain Crater",
--     "hint": "DEATH_MOUNTAIN_CRATER",
--     "locations": {
--         "DMC Near GC Pot 1": "is_adult",
--         "DMC Near GC Pot 2": "is_adult",
--         "DMC Near GC Pot 3": "is_adult",
--         "DMC Near GC Pot 4": "is_adult"
--     },
--     "exits": {
--         "DMC Lower Local": "Can_use("GoronTunic")",
--         "GC Darunias Chamber": "True",
--         "DMC Great Fairy Fountain": "Can_use(Megaton_Hammer)",
--         "DMC Hammer Grotto": "Can_use(Megaton_Hammer)"
--     }
-- },
-- {
--     "region_name": "DMC Lower Local",
--     "scene": "Death Mountain Crater",
--     "hint": "DEATH_MOUNTAIN_CRATER",
--     "exits": {
--         "DMC Lower Nearby": "True",
--         "DMC Ladder Area Nearby": "True",
--         "DMC Central Nearby": "
--             is_adult and
--             (Hover_Boots or Hookshot or
--                 (logic_crater_bolero_jump and Goron_Tunic and can_shield))",
--         "DMC Fire Temple Entrance": "
--             is_adult and (Hover_Boots or Hookshot) and
--             (logic_fewer_tunic_requirements or Goron_Tunic)"
--     }
-- },
-- {
--     "region_name": "DMC Central Nearby",
--     "scene": "Death Mountain Crater",
--     "hint": "DEATH_MOUNTAIN_CRATER",
--     "locations": {
--         "DMC Volcano Freestanding PoH": "
--             is_adult and
--             (here(Can_plant_bean) or (logic_crater_bean_poh_with_hovers and Hover_Boots))",
--         "Sheik in Crater": "is_adult"
--     },
--     "exits": {
--         "DMC Central Local": "Can_use("GoronTunic")"
--     }
-- },
-- {
--     "region_name": "DMC Central Local",
--     "scene": "Death Mountain Crater",
--     "hint": "DEATH_MOUNTAIN_CRATER",
--     "locations": {
--         "DMC GS Bean Patch": "Can_plant_bugs and Can_child_attack",
--         "Bean Plant Fairy": "is_child and Can_plant_bean and can_play(Song_of_Storms) and Has_bottle",
--         "DMC Child Red Rupee 1": "is_child",
--         "DMC Child Red Rupee 2": "is_child",
--         "DMC Child Blue Rupee 1": "is_child",
--         "DMC Child Blue Rupee 2": "is_child",
--         "DMC Child Blue Rupee 3": "is_child",
--         "DMC Child Blue Rupee 4": "is_child",
--         "DMC Child Blue Rupee 5": "is_child",
--         "DMC Child Blue Rupee 6": "is_child"
--     },
--     "exits": {
--         "DMC Central Nearby": "True",
--         "DMC Lower Nearby": "
--             is_adult and (Hover_Boots or Hookshot or here(Can_plant_bean))",
--         "DMC Upper Nearby": "is_adult and here(Can_plant_bean)",
--         "DMC Fire Temple Entrance": "
--             (is_child and shuffle_dungeon_entrances) or
--             (is_adult and (logic_fewer_tunic_requirements or Goron_Tunic))",
--         "DMC Pierre Platform": "Can_use(Distant_Scarecrow)"
--     }
-- },
-- {
--     "region_name": "DMC Fire Temple Entrance",
--     "scene": "Death Mountain Crater",
--     "hint": "DEATH_MOUNTAIN_CRATER",
--     "exits": {
--         "Fire Temple Lower": "True",
--         "DMC Central Nearby": "Can_use("GoronTunic")"
--     }
-- },
-- {
--     "region_name": "DMC Great Fairy Fountain",
--     "scene": "DMC Great Fairy Fountain",
--     "locations": {
--         "DMC Great Fairy Reward": "can_play(Zeldas_Lullaby)"
--     },
--     "exits": {
--         "DMC Lower Local": "True"
--     }
-- },
-- {
--     "region_name": "DMC Upper Grotto",
--     "scene": "DMC Upper Grotto",
--     "locations": {
--         "DMC Upper Grotto Chest": "True",
--         "DMC Upper Grotto Beehive 1": "Can_break_lower_beehive()",
--         "DMC Upper Grotto Beehive 2": "Can_break_lower_beehive()",
--         "DMC Upper Grotto Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy and Has_bottle",
--         "Butterfly Fairy": "Can_use(Sticks) and Has_bottle",
--         "Bug Shrub": "can_cut_shrubs and Has_bottle",
--         "Lone Fish": "Has_bottle"
--     },
--     "exits": {
--         "DMC Upper Local": "True"
--     }
-- },
-- {
--     "region_name": "DMC Hammer Grotto",
--     "scene": "DMC Hammer Grotto",
--     "locations": {
--         "DMC Deku Scrub Grotto Left": "Can_stun_deku()",
--         "DMC Deku Scrub Grotto Right": "Can_stun_deku()",
--         "DMC Deku Scrub Grotto Center": "Can_stun_deku()",
--         "DMC Hammer Grotto Beehive": "Can_break_upper_beehive()"
--     },
--     "exits": {
--         "DMC Lower Local": "True"
--     }
-- },