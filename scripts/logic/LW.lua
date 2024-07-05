-- Child_Lost_Woods = OOTLocation.new("Child_Lost_Woods")
-- Child_LW_Beyond_Mido = OOTLocation.new("Child_LW_Beyond_Mido")
-- Child_LW_Bridge_From_Forest = OOTLocation.new("Child_LW_Bridge_From_Forest")
-- Child_LW_Forest_Exit = OOTLocation.new("Child_LW_Forest_Exit")
-- Child_GC_Woods_Warp = OOTLocation.new("Child_GC_Woods_Warp")
-- Child_LW_Bridge = OOTLocation.new("Child_LW_Bridge")
-- Child_LW_Underwater_Entrance = OOTLocation.new("Child_LW_Underwater_Entrance")
-- Child_Zora_River = OOTLocation.new("Child_Zora_River")
-- Child_LW_Near_Shortcuts_Grotto = OOTLocation.new("Child_LW_Near_Shortcuts_Grotto")
-- Child_Deku_Theater = OOTLocation.new("Child_Deku_Theater")
-- Child_LW_Scrubs_Grotto = OOTLocation.new("Child_LW_Scrubs_Grotto")

-- -- Child_LW_Near_Shortcuts_Grotto = OOTLocation.new("Child_LW_Near_Shortcuts_Grotto")

-- Adult_Lost_Woods = OOTLocation.new("Adult_Lost_Woods")
-- Adult_LW_Beyond_Mido = OOTLocation.new("Adult_LW_Beyond_Mido")
-- Adult_LW_Bridge_From_Forest = OOTLocation.new("Adult_LW_Bridge_From_Forest")
-- Adult_LW_Forest_Exit = OOTLocation.new("Adult_LW_Forest_Exit")
-- Adult_GC_Woods_Warp = OOTLocation.new("Adult_GC_Woods_Warp")
-- Adult_LW_Bridge = OOTLocation.new("Adult_LW_Bridge")
-- Adult_LW_Underwater_Entrance = OOTLocation.new("Adult_LW_Underwater_Entrance")
-- Adult_Zora_River = OOTLocation.new("Adult_Zora_River")
-- Adult_LW_Near_Shortcuts_Grotto = OOTLocation.new("Adult_LW_Near_Shortcuts_Grotto")
-- Adult_Deku_Theater = OOTLocation.new("Adult_Deku_Theater")
-- Adult_LW_Scrubs_Grotto = OOTLocation.new("Adult_LW_Scrubs_Grotto")

-- Adult_LW_Near_Shortcuts_Grotto = OOTLocation.new("Adult_LW_Near_Shortcuts_Grotto")

Child_Lost_Woods:connect_one_way("Child LW Skull Kid", function() return Can_play("SariasSong") end)
Child_Lost_Woods:connect_one_way("Child LW Ocarina Memory Game", function() return Tracker:FindObjectForCode("Ocarina").Active end)
Child_Lost_Woods:connect_one_way("Child LW Target in Woods", function() return Can_use("Slingshot", "child") end)
Child_Lost_Woods:connect_one_way("Child LW Deku Scrub Near Bridge", function() return Can_stun_deku("child") end)
Child_Lost_Woods:connect_one_way("Child LW GS Bean Patch Near Bridge", function()
    return All(
        Has("Bottle"),
        Can_child_attack("child")
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 1", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 2", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 3", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 4", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 5", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 6", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)
Child_Lost_Woods:connect_one_way("Child LW Underwater Green Rupee 7", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)

Adult_Lost_Woods:connect_one_way("Adult LW Skull Kid", function() return Can_play("SariasSong") end)
Adult_Lost_Woods:connect_one_way("Adult LW Ocarina Memory Game", function() return Tracker:FindObjectForCode("Ocarina").Active end)
Adult_Lost_Woods:connect_one_way("Adult LW Target in Woods", function() return Can_use("Slingshot", "adult") end)
Child_Lost_Woods:connect_one_way("Adult LW Deku Scrub Near Bridge", function() return Can_stun_deku("adult") end)
Adult_Lost_Woods:connect_one_way("Adult LW GS Bean Patch Near Bridge", function()
    return All(
        Has("Bottle"),
        Can_child_attack("adult")
    )
end)
Adult_Lost_Woods:connect_one_way("Adult LW Underwater Green Rupee 1", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)
Adult_Lost_Woods:connect_one_way("Adult LW Underwater Green Rupee 2", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)
Adult_Lost_Woods:connect_one_way("Adult LW Underwater Green Rupee 3", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)
Adult_Lost_Woods:connect_one_way("Adult LW Underwater Green Rupee 4", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)
Adult_Lost_Woods:connect_one_way("Adult LW Underwater Green Rupee 5", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)
Adult_Lost_Woods:connect_one_way("Adult LW Underwater Green Rupee 6", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)
Adult_Lost_Woods:connect_one_way("Adult LW Underwater Green Rupee 7", function()
    return Any(
        Has("Boomerang"),
        Can_dive()
    )
end)

Child_Lost_Woods:connect_one_way_entrance("Child LW Forest Exit", Child_LW_Forest_Exit)
Child_Lost_Woods:connect_one_way_entrance("Child GC Woods Warp", Child_GC_Woods_Warp)
Child_Lost_Woods:connect_one_way_entrance("Child LW Bridge", Child_LW_Bridge, function()
    return false end)
Child_Lost_Woods:connect_one_way_entrance("Child LW Underwater Entrance", Child_LW_Underwater_Entrance, function()
    return Any(
        Has("Boomerang"),
        Has("ProgressiveScale")
    )
end)
Child_Lost_Woods:connect_one_way_entrance("Child Zora River", Child_Zora_River, function()
    return All(
        Can_leave_forest("child"),
        Has("ProgressiveScale")
    )
end)
Child_Lost_Woods:connect_one_way_entrance("Child LW Beyond Mido", Child_LW_Beyond_Mido)
Child_Lost_Woods:connect_one_way_entrance("Child LW Near Shortcuts Grotto", Child_LW_Near_Shortcuts_Grotto, function() return Can_blast_or_smash("child") end)

Adult_Lost_Woods:connect_one_way_entrance("Adult LW Forest Exit", Adult_LW_Forest_Exit)
Adult_Lost_Woods:connect_one_way_entrance("Adult GC Woods Warp", Adult_GC_Woods_Warp)
Adult_Lost_Woods:connect_one_way_entrance("Adult LW Bridge", Adult_LW_Bridge, function()
    return Any(
        Can_use("HoverBoots", "adult"),
        Has("LongShot"),
        Has("MagicBean"),
        Has("logic_Lost_Woods_bridge")
        
    )
end)
Adult_Lost_Woods:connect_one_way_entrance("Adult LW Underwater Entrance", Adult_LW_Underwater_Entrance, function()
    return Any(
        Has("Boomerang"),
        Has("ProgressiveScale")
    )
end)
Adult_Lost_Woods:connect_one_way_entrance("Adult Zora River", Adult_Zora_River, function()
    return All(
        Can_leave_forest("adult"),
        Any(
            Can_use("IronBoots", "adult"),
            Has("ProgressiveScale")
        )
    )
end)
Adult_Lost_Woods:connect_one_way_entrance("Adult LW Beyond Mido", Adult_LW_Beyond_Mido, function()
    return Any(
        Has("logic_mido_backflip"),
        Can_play("SariasSong")
    )
end)
Adult_Lost_Woods:connect_one_way_entrance("Adult LW Near Shortcuts Grotto", Adult_LW_Near_Shortcuts_Grotto, function() return Can_blast_or_smash("adult") end)


Child_LW_Beyond_Mido:connect_one_way("Child LW Deku Scrub Near Deku Theater Left", function() return Can_stun_deku("child") end)
Child_LW_Beyond_Mido:connect_one_way("Child LW Deku Scrub Near Deku Theater Right", function() return Can_stun_deku("child") end)
Child_LW_Beyond_Mido:connect_one_way("Child LW Under Boulder Blue Rupee", function() return Can_blast_or_smash("child") end)
Child_LW_Beyond_Mido:connect_one_way("Child LW GS Above Theater", function() return false end)
Child_LW_Beyond_Mido:connect_one_way("Child LW GS Bean Patch Near Theater", function() 
    return All(
        Can_plant_bugs("child"),
        Any(
            Can_child_attack("child"),
            All(
                Tracker:FindObjectForCode("shuffle_scrubs").CurrentStage == 0,
                Can_use("DekuShield", "child")
            )
        )
    )
end)

Adult_LW_Beyond_Mido:connect_one_way("Adult LW Deku Scrub Near Deku Theater Left", function() return Can_stun_deku("adult") end)
Adult_LW_Beyond_Mido:connect_one_way("Adult LW Deku Scrub Near Deku Theater Right", function() return Can_stun_deku("adult") end)
Adult_LW_Beyond_Mido:connect_one_way("Adult LW Under Boulder Blue Rupee", function() return Can_blast_or_smash("adult") end)
Adult_LW_Beyond_Mido:connect_one_way("Adult LW GS Above Theater", function() 
    return Any(
        Can_plant_bean("adult"),
        All(
            Has("logic_lost_woods_gs_bean"),
            Can_use("Hookshot", "adult"),
            Any(
                Can_use("Longshot", "adult"),
                Can_use("Bow", "adult"),
                Has_bombchus(),
                Can_use("DinsFire", "adult")
            )
        )
    )
end)--is_adult and at_night and--
Adult_LW_Beyond_Mido:connect_one_way("Adult LW GS Bean Patch Near Theater", function() 
    return All(
        Can_plant_bugs("adult"),
        Any(
            Can_child_attack("adult"),
            All(
                Tracker:FindObjectForCode("shuffle_scrubs").CurrentStage == 0,
                Can_use("DekuShield", "adult")
            )
        )
    )
end)


Child_LW_Beyond_Mido:connect_one_way_entrance("Child LW Forest Exit", Child_LW_Forest_Exit)
Child_LW_Beyond_Mido:connect_one_way_entrance("Child Lost Woods", Child_Lost_Woods)
Child_LW_Beyond_Mido:connect_one_way_entrance("Child SFM Entryway", Child_Sacret_Forest_Meadow_Entryway)
Child_LW_Beyond_Mido:connect_one_way_entrance("Child Deku Theater", Child_Deku_Theater)
Child_LW_Beyond_Mido:connect_one_way_entrance("Child LW Scrubs Grotto", Child_LW_Scrubs_Grotto, function() return Can_blast_or_smash("child") end)

Adult_LW_Beyond_Mido:connect_one_way_entrance("Adult LW Forest Exit", Adult_LW_Forest_Exit)
Adult_LW_Beyond_Mido:connect_one_way_entrance("Adult Lost Woods", Adult_Lost_Woods, function() return Can_play("SariasSong") end)
Adult_LW_Beyond_Mido:connect_one_way_entrance("Adult SFM Entryway", Adult_Sacret_Forest_Meadow_Entryway)
Adult_LW_Beyond_Mido:connect_one_way_entrance("Adult Deku Theater", Adult_Deku_Theater)
Adult_LW_Beyond_Mido:connect_one_way_entrance("Adult LW Scrubs Grotto", Adult_LW_Scrubs_Grotto, function() return Can_blast_or_smash("adult") end)


-- Child_LW_Forest_Exit:connect_one_way()
-- Adult_LW_Forest_Exit:connect_one_way()

Child_LW_Forest_Exit:connect_one_way_entrance("Child Kokiri Forest", Child_Kokiri_Forest)
Adult_LW_Forest_Exit:connect_one_way_entrance("Adult Kokiri Forest", Adult_Kokiri_Forest)

Child_LW_Underwater_Entrance:connect_one_way("Child LW Underwater Shortcut Green Rupee")
Adult_LW_Underwater_Entrance:connect_one_way("Adult LW Underwater Shortcut Green Rupee")

Child_LW_Underwater_Entrance:connect_one_way_entrance("Child Lost Woods", Child_Lost_Woods)
Adult_LW_Underwater_Entrance:connect_one_way_entrance("Adult Lost Woods", Adult_Lost_Woods)

Child_LW_Bridge_From_Forest:connect_one_way("Child LW Gift from Saria")
Adult_LW_Bridge_From_Forest:connect_one_way("Adult LW Gift from Saria")

Child_LW_Bridge_From_Forest:connect_one_way_entrance("Child LW Bridge", Child_LW_Bridge)
Adult_LW_Bridge_From_Forest:connect_one_way_entrance("Adult LW Bridge", Adult_LW_Bridge)

Child_LW_Bridge:connect_one_way_entrance("Child Kokiri Forest", Child_Kokiri_Forest)
Child_LW_Bridge:connect_one_way_entrance("Child Hyrule Fields", Child_Hyrule_Fields)
Child_LW_Bridge:connect_one_way_entrance("Child Lost Woods", Child_Lost_Woods, function() return Can_use("Longshot", "child") end)

Adult_LW_Bridge:connect_one_way_entrance("Adult Kokiri Forest", Adult_Kokiri_Forest)
Adult_LW_Bridge:connect_one_way_entrance("Adult Hyrule Fields", Adult_Hyrule_Fields)
Adult_LW_Bridge:connect_one_way_entrance("Adult Lost Woods", Adult_Lost_Woods, function() return Can_use("Longshot", "adult") end)


Child_LW_Near_Shortcuts_Grotto:connect_one_way("Child LW Near Shortcuts Grotto Chest")
Child_LW_Near_Shortcuts_Grotto:connect_one_way("Child LW Near Shortcuts Grotto Beehive 1", function() return Can_break_lower_beehive("child") end)
Child_LW_Near_Shortcuts_Grotto:connect_one_way("Child LW Near Shortcuts Grotto Beehive 2", function() return Can_break_lower_beehive("child") end)
Child_LW_Near_Shortcuts_Grotto:connect_one_way("Child LW Near Shortcuts Grotto Gossip Stone")

Adult_LW_Near_Shortcuts_Grotto:connect_one_way("Adult LW Near Shortcuts Grotto Chest")
Adult_LW_Near_Shortcuts_Grotto:connect_one_way("Adult LW Near Shortcuts Grotto Beehive 1", function() return Can_break_lower_beehive("adult") end)
Adult_LW_Near_Shortcuts_Grotto:connect_one_way("Adult LW Near Shortcuts Grotto Beehive 2", function() return Can_break_lower_beehive("adult") end)
Adult_LW_Near_Shortcuts_Grotto:connect_one_way("Adult LW Near Shortcuts Grotto Gossip Stone")

Child_LW_Near_Shortcuts_Grotto:connect_one_way_entrance("Child Lost Woods", Child_Lost_Woods)
Adult_LW_Near_Shortcuts_Grotto:connect_one_way_entrance("Adult Lost Woods", Adult_Lost_Woods)

Child_Deku_Theater:connect_one_way("Child Deku Theater Skull Mask", function() return Has("SkullMask") end)
Child_Deku_Theater:connect_one_way("Child Deku Theater Mask of Truth", function() return Has("MaskOfTruth") end)

Adult_Deku_Theater:connect_one_way("Adult Deku Theater Skull Mask", function() return Has("SkullMask") end)
Adult_Deku_Theater:connect_one_way("Adult Deku Theater Mask of Truth", function() return Has("MaskOfTruth") end)

Child_Deku_Theater:connect_one_way_entrance("Child LW Beyond Mido", Child_LW_Beyond_Mido)
Adult_Deku_Theater:connect_one_way_entrance("Adult LW Beyond Mido", Adult_LW_Beyond_Mido)


Child_LW_Scrubs_Grotto:connect_one_way("Child LW Deku Scrub Grotto Rear", function() return Can_stun_deku("child") end)
Child_LW_Scrubs_Grotto:connect_one_way("Child LW Deku Scrub Grotto Front", function() return Can_stun_deku("child") end)
Child_LW_Scrubs_Grotto:connect_one_way("Child LW Scrubs Grotto Beehive", function() return Can_break_upper_beehive("child") end)

Adult_LW_Scrubs_Grotto:connect_one_way("Adult LW Deku Scrub Grotto Rear", function() return Can_stun_deku("adult") end)
Adult_LW_Scrubs_Grotto:connect_one_way("Adult LW Deku Scrub Grotto Front", function() return Can_stun_deku("adult") end)
Adult_LW_Scrubs_Grotto:connect_one_way("Adult LW Scrubs Grotto Beehive", function() return Can_break_upper_beehive("adult") end)

Child_LW_Scrubs_Grotto:connect_one_way_entrance("Child LW Beyond Mido", Child_LW_Beyond_Mido)
Adult_LW_Scrubs_Grotto:connect_one_way_entrance("Adult LW Beyond Mido", Adult_LW_Beyond_Mido)
-- logic left

-- {
--     "region_name": "Lost Woods",
--     "scene": "Lost Woods",
--     "hint": "LOST_WOODS",
--     "events": {
--         "Odd Mushroom Access": "is_adult and ('Cojiro Access' or Cojiro)",
--         "Poachers Saw Access": "is_adult and 'Odd Potion Access'"
--     },
--     "locations": {
--         "LW Skull Kid": "is_child and can_play(Sarias_Song)",
--         "LW Ocarina Memory Game": "is_child and Ocarina",
--         "LW Target in Woods": "can_use(Slingshot)",
--         "LW Deku Scrub Near Bridge": "is_child and Can_stun_deku",
--         "LW Underwater Green Rupee 1": "is_child and (can_dive or Boomerang)",
--         "LW Underwater Green Rupee 2": "is_child and (can_dive or Boomerang)",
--         "LW Underwater Green Rupee 3": "is_child and (can_dive or Boomerang)",
--         "LW Underwater Green Rupee 4": "is_child and (can_dive or Boomerang)",
--         "LW Underwater Green Rupee 5": "is_child and (can_dive or Boomerang)",
--         "LW Underwater Green Rupee 6": "is_child and (can_dive or Boomerang)",
--         "LW Underwater Green Rupee 7": "is_child and (can_dive or Boomerang)",
--         "LW GS Bean Patch Near Bridge": "Can_plant_bugs and Can_child_attack",
--         "LW Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy_without_suns and Has_bottle",
--         "Bean Plant Fairy": "is_child and Can_plant_bean and can_play(Song_of_Storms) and Has_bottle",
--         "Bug Shrub": "is_child and can_cut_shrubs and Has_bottle"
--     },
--     "exits": {
--         "LW Forest Exit": "True",
--         "GC Woods Warp": "True",
--         "LW Bridge": "
--             is_adult and
--             (HoverBoots or Longshot or here(Can_plant_bean) or logic_lost_woods_bridge)",
--         "LW Underwater Entrance": "is_child and (can_dive or Boomerang)",
--         "Zora River": "can_leave_forest and (can_dive or can_use(IronBoots))",
--         "LW Beyond Mido": "is_child or Has("logic_mido_backflip") or can_play(Sarias_Song)",
--         "LW Near Shortcuts Grotto": "here(Can_blast_or_smash)"
--     }
-- },
-- {
--     "region_name": "LW Beyond Mido",
--     "scene": "Lost Woods",
--     "hint": "LOST_WOODS",
--     "locations": {
--         "LW Deku Scrub Near Deku Theater Right": "is_child and Can_stun_deku",
--         "LW Deku Scrub Near Deku Theater Left": "is_child and Can_stun_deku",
--         "LW Under Boulder Blue Rupee": "Can_blast_or_smash",
--         "LW GS Above Theater": "
--             is_adult and at_night and
--             (here(Can_plant_bean) or
--                 (Has("logic_lost_woods_gs_bean") and Hookshot and
--                     (Longshot or Bow or Has_bombchus or can_use(Dins_Fire))))",
--         "LW GS Bean Patch Near Theater": "
--             Can_plant_bugs and 
--             (Can_child_attack or (Tracker:FindObjectForCode("shuffle_scrubs").CurrentStage == 'off' and Deku_Shield))",
--         "Butterfly Fairy": "can_use(Sticks) and Has_bottle"
--     },
--     "exits": {
--         "LW Forest Exit": "True",
--         "Lost Woods": "is_child or can_play(Sarias_Song)",
--         "SFM Entryway": "True",
--         "Deku Theater": "True",
--         "LW Scrubs Grotto": "here(Can_blast_or_smash)"
--     }
-- },
-- {
--     "region_name": "LW Forest Exit",
--     "scene": "Lost Woods",
--     "hint": "LOST_WOODS",
--     "exits": {
--         "Kokiri Forest": "True"
--     }
-- },
-- {
--     "region_name": "LW Underwater Entrance",
--     "scene": "Lost Woods",
--     "hint": "LOST_WOODS",
--     "locations": {
--         # This is the third rupee from the shortcut entrance and is automatically 
--         # collected upon entering through the shortcut. Only really matters for overworld ER
--         "LW Underwater Shortcut Green Rupee": "is_child"
--     },
--     "exits": {
--         "Lost Woods": "True"
--     }
-- },
-- {
--     "region_name": "Lost Woods Mushroom Timeout",
--     "scene": "Lost Woods",
--     "hint": "LOST_WOODS",
--     "exits": {
--         "Lost Woods": "True"
--     }
-- },
-- {
--     "region_name": "LW Bridge From Forest",
--     "scene": "Lost Woods",
--     "hint": "LOST_WOODS",
--     "locations": {
--         "LW Gift from Saria": "True"
--     },
--     "exits": {
--         "LW Bridge": "True"
--     }
-- },
-- {
--     "region_name": "LW Bridge",
--     "scene": "Lost Woods",
--     "hint": "LOST_WOODS",
--     "exits": {
--         "Kokiri Forest": "True",
--         "Hyrule Field": "True",
--         "Lost Woods": "can_use(Longshot)"
--     }
-- },
-- {
--     "region_name": "LW Near Shortcuts Grotto",
--     "scene": "LW Near Shortcuts Grotto",
--     "locations": {
--         "LW Near Shortcuts Grotto Chest": "True",
--         "LW Near Shortcuts Grotto Beehive 1": "Can_break_lower_beehive()",
--         "LW Near Shortcuts Grotto Beehive 2": "Can_break_lower_beehive()",
--         "LW Near Shortcuts Grotto Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy and Has_bottle",
--         "Butterfly Fairy": "can_use(Sticks) and Has_bottle",
--         "Bug Shrub": "can_cut_shrubs and Has_bottle",
--         "Lone Fish": "Has_bottle"
--     },
--     "exits": {
--         "Lost Woods": "True"
--     }
-- },
-- {
--     "region_name": "Deku Theater",
--     "scene": "Deku Theater",
--     "locations": {
--         "Deku Theater Skull Mask": "is_child and 'Skull Mask'",
--         "Deku Theater Mask of Truth": "is_child and 'Mask of Truth'"
--     },
--     "exits": {
--         "LW Beyond Mido": "True"
--     }
-- },
-- {
--     "region_name": "LW Scrubs Grotto",
--     "scene": "LW Scrubs Grotto",
--     "locations": {
--         "LW Deku Scrub Grotto Rear": "Can_stun_deku",
--         "LW Deku Scrub Grotto Front": "Can_stun_deku",
--         "LW Scrubs Grotto Beehive": "Can_break_upper_beehive()"
--     },
--     "exits": {
--         "LW Beyond Mido": "True"
--     }
-- },