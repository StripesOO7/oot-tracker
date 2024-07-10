-- Child_ZR_Front = OOTLocation.new("Child_ZR_Front")
-- Child_Zora_River = OOTLocation.new("Child_Zora_River")
-- Child_ZR_Behind_Waterfall = OOTLocation.new("Child_ZR_Behind_Waterfall")
-- Child_ZR_Top_of_Waterfall = OOTLocation.new("Child_ZR_Top_of_Waterfall")
-- Child_ZR_Open_Grotto = OOTLocation.new("Child_ZR_Open_Grotto")
-- Child_ZR_Fairy_Grotto = OOTLocation.new("Child_ZR_Fairy_Grotto")
-- Child_ZR_Storms_Grotto = OOTLocation.new("Child_ZR_Storms_Grotto")

-- Adult_ZR_Front = OOTLocation.new("Adult_ZR_Front")
-- Adult_Zora_River = OOTLocation.new("Adult_Zora_River")
-- Adult_ZR_Behind_Waterfall = OOTLocation.new("Adult_ZR_Behind_Waterfall")
-- Adult_ZR_Top_of_Waterfall = OOTLocation.new("Adult_ZR_Top_of_Waterfall")
-- Adult_ZR_Open_Grotto = OOTLocation.new("Adult_ZR_Open_Grotto")
-- Adult_ZR_Fairy_Grotto = OOTLocation.new("Adult_ZR_Fairy_Grotto")
-- Adult_ZR_Storms_Grotto = OOTLocation.new("Adult_ZR_Storms_Grotto")

Child_ZR_Front:connect_one_way("Child ZR GS Tree", function() 
    return All(
        Can_child_attack("child"), 
        Can_bonk("child")
    )
end)
Adult_ZR_Front:connect_one_way("Adult ZR GS Tree", function() return false end)

Child_ZR_Front:connect_one_way_entrance("Child Zora River", Child_Zora_River, function() return Has_explosives() end)
Child_ZR_Front:connect_one_way_entrance("Child Hyrule Field", Child_Hyrule_Fields)

Adult_ZR_Front:connect_one_way_entrance("Adult Zora River", Adult_Zora_River, function() return true end)
Adult_ZR_Front:connect_one_way_entrance("Adult Hyrule Field", Adult_Hyrule_Fields)

Child_Zora_River:connect_one_way("Child ZR Magic Bean Salesman")
Child_Zora_River:connect_one_way("Child ZR Frogs Ocarina Game", function() return 
    All(
        Tracker:FindObjectForCode("Ocarina").Active,
        Has("ZeldasLullaby"),
        Has("EponasSong"),
        Has("SariasSong"),
        Has("SunsSong"),
        Has("SongofTime"),
        Has("SongofStorms")
    )
end)
Child_Zora_River:connect_one_way("Child ZR Frogs Zeldas Lullaby", function() return Can_play("ZeldasLullaby") end)
Child_Zora_River:connect_one_way("Child ZR Frogs Eponas Song", function() return Can_play("EponasSong") end)
Child_Zora_River:connect_one_way("Child ZR Frogs Sarias Song", function() return Can_play("SariasSong") end)
Child_Zora_River:connect_one_way("Child ZR Frogs Suns Song", function() return Can_play("SunsSong") end)
Child_Zora_River:connect_one_way("Child ZR Frogs Song of Time", function() return Can_play("SongofTime") end)
Child_Zora_River:connect_one_way("Child ZR Frogs in the Rain", function() return Can_play("SongofStorms") end)
Child_Zora_River:connect_one_way("Child ZR Near Open Grotto Freestanding PoH", function() 
    return Any(
        Can_plant_bean("child"),
        Can_use("HoverBoots", "child"),
        Has("logic_zora_river_lower")
    )
end)
Child_Zora_River:connect_one_way("Child ZR Near Domain Freestanding PoH", function() 
    return Any(
        Can_use("HoverBoots", "child"),
        Has("logic_zora_river_upper")
    )
end)
Child_Zora_River:connect_one_way("Child ZR Waterfall Red Rupee 1", function() return false end)
Child_Zora_River:connect_one_way("Child ZR Waterfall Red Rupee 2", function() return false end)
Child_Zora_River:connect_one_way("Child ZR Waterfall Red Rupee 3", function() return false end)
Child_Zora_River:connect_one_way("Child ZR Waterfall Red Rupee 4", function() return false end)
Child_Zora_River:connect_one_way("Child ZR GS Ladder", function() return Can_child_attack("child") end)
Child_Zora_River:connect_one_way("Child ZR GS Near Raised Grottos", function() return Can_use("Hookshot", "child") end)
Child_Zora_River:connect_one_way("Child ZR GS Above Bridge", function() return Can_use("Hookshot", "child") end)

Adult_Zora_River:connect_one_way("Adult ZR Magic Bean Salesman", function() return false end)
Adult_Zora_River:connect_one_way("Adult ZR Frogs Ocarina Game", function() return false end)
Adult_Zora_River:connect_one_way("Adult ZR Frogs Zeldas Lullaby", function() return false end)
Adult_Zora_River:connect_one_way("Adult ZR Frogs Eponas Song", function() return false end)
Adult_Zora_River:connect_one_way("Adult ZR Frogs Sarias Song", function() return false end)
Adult_Zora_River:connect_one_way("Adult ZR Frogs Suns Song", function() return false end)
Adult_Zora_River:connect_one_way("Adult ZR Frogs Song of Time", function() return false end)
Adult_Zora_River:connect_one_way("Adult ZR Frogs in the Rain", function() return false end)
Adult_Zora_River:connect_one_way("Adult ZR Near Open Grotto Freestanding PoH", function() 
    return Any(
        Can_plant_bean("adult"),
        Can_use("HoverBoots", "adult"),
        Has("logic_zora_river_lower")
    )
end)
Adult_Zora_River:connect_one_way("Adult ZR Near Domain Freestanding PoH", function() 
    return Any(
        Can_use("HoverBoots", "adult"),
        Has("logic_zora_river_upper")
    )
end)
Adult_Zora_River:connect_one_way("Adult ZR Waterfall Red Rupee 1", function() 
    return Any(
        Can_use("IronBoots", "adult"),
        Has("logic_zora_river_rupees")
    )
end)
Adult_Zora_River:connect_one_way("Adult ZR Waterfall Red Rupee 2", function() 
    return Any(
        Can_use("IronBoots", "adult"),
        Has("logic_zora_river_rupees")
    )
end)
Adult_Zora_River:connect_one_way("Adult ZR Waterfall Red Rupee 3", function() 
    return Any(
        Can_use("IronBoots", "adult"),
        Has("logic_zora_river_rupees")
    )
end)
Adult_Zora_River:connect_one_way("Adult ZR Waterfall Red Rupee 4", function() 
    return Any(
        Can_use("IronBoots", "adult"),
        Has("logic_zora_river_rupees")
    )
end)
Adult_Zora_River:connect_one_way("Adult ZR GS Ladder", function() return false end)
Adult_Zora_River:connect_one_way("Adult ZR GS Near Raised Grottos", function() return Can_use("Hookshot", "adult") end)
Adult_Zora_River:connect_one_way("Adult ZR GS Above Bridge", function() return Can_use("Hookshot", "adult") end)

Child_Zora_River:connect_one_way_entrance("Child ZR Front", Child_ZR_Front)
Child_Zora_River:connect_one_way_entrance("Child ZR Open Grotto", Child_ZR_Open_Grotto)
Child_Zora_River:connect_one_way_entrance("Child ZR Fairy Grotto", Child_ZR_Fairy_Grotto, function() return Can_blast_or_smash("child") end)
Child_Zora_River:connect_one_way_entrance("Child LW Underwater Entrance", Child_LW_Underwater_Entrance, function() return Can_dive("child") or Can_use("IronBoots", "child") end)
Child_Zora_River:connect_one_way_entrance("Child ZR Storms Grotto", Child_ZR_Storms_Grotto, function() return Can_open_storm_grotto("child") end)
Child_Zora_River:connect_one_way_entrance("Child ZR Behind Waterfall", Child_ZR_Behind_Waterfall, function() 
    return Any(
        Can_play("ZeldasLullaby"),
        All(
            Can_use("HoverBoots", "child"),
            Has("logic_zora_with_hovers")
        ),
        All(
            true,
            Has("logic_zora_with_cucco")
        )
    )
end)

Adult_Zora_River:connect_one_way_entrance("Adult ZR Front", Adult_ZR_Front)
Adult_Zora_River:connect_one_way_entrance("Adult ZR Open Grotto", Adult_ZR_Open_Grotto)
Adult_Zora_River:connect_one_way_entrance("Adult ZR Fairy Grotto", Adult_ZR_Fairy_Grotto, function() return Can_blast_or_smash("adult") end)
Adult_Zora_River:connect_one_way_entrance("Adult LW Underwater Entrance", Adult_LW_Underwater_Entrance, function() return Can_dive("adult") or Can_use("IronBoots", "adult") end)
Adult_Zora_River:connect_one_way_entrance("Adult ZR Storms Grotto", Adult_ZR_Storms_Grotto, function() return Can_open_storm_grotto("adult") end)
Adult_Zora_River:connect_one_way_entrance("Adult ZR Behind Waterfall", Adult_ZR_Behind_Waterfall, function() 
    return Any(
        Can_play("ZeldasLullaby"),
        All(
            Can_use("HoverBoots", "adult"),
            Has("logic_zora_with_hovers")
        ),
        All(
            false,
            Has("logic_zora_with_cucco")
        )
    )
end)

-- Child_ZR_Behind_Waterfall:connect_one_way()
-- Adult_ZR_Behind_Waterfall:connect_one_way()

Child_ZR_Behind_Waterfall:connect_one_way_entrance("Child Zora River", Child_Zora_River)
Child_ZR_Behind_Waterfall:connect_one_way_entrance("Child Zoras Domain", Child_Zoras_Domain)

Adult_ZR_Behind_Waterfall:connect_one_way_entrance("Adult Zora River", Adult_Zora_River)
Adult_ZR_Behind_Waterfall:connect_one_way_entrance("Adult Zoras Domain", Adult_Zoras_Domain)

-- Child_ZR_Top_of_Waterfall:connect_one_way()
-- Adult_ZR_Top_of_Waterfall:connect_one_way()

Child_ZR_Top_of_Waterfall:connect_one_way_entrance("Child Zora River", Child_Zora_River)
Adult_ZR_Top_of_Waterfall:connect_one_way_entrance("Adult Zora River", Adult_Zora_River)

Child_ZR_Open_Grotto:connect_one_way("Child ZR Open Grotto Chest")
Child_ZR_Open_Grotto:connect_one_way("Child ZR Open Grotto Beehive 1", function() return Can_break_lower_beehive("child") end)
Child_ZR_Open_Grotto:connect_one_way("Child ZR Open Grotto Beehive 2", function() return Can_break_lower_beehive("child") end)
Child_ZR_Open_Grotto:connect_one_way("Child ZR Open Grotto Gossip Stone")

Adult_ZR_Open_Grotto:connect_one_way("Adult ZR Open Grotto Chest")
Adult_ZR_Open_Grotto:connect_one_way("Adult ZR Open Grotto Beehive 1", function() return Can_break_lower_beehive("adult") end)
Adult_ZR_Open_Grotto:connect_one_way("Adult ZR Open Grotto Beehive 2", function() return Can_break_lower_beehive("adult") end)
Adult_ZR_Open_Grotto:connect_one_way("Adult ZR Open Grotto Gossip Stone")

Child_ZR_Open_Grotto:connect_one_way_entrance("Child Zora River", Child_Zora_River)
Adult_ZR_Open_Grotto:connect_one_way_entrance("Adult Zora River", Adult_Zora_River)

-- Child_ZR_Fairy_Grotto:connect_one_way()
-- Adult_ZR_Fairy_Grotto:connect_one_way()

Child_ZR_Fairy_Grotto:connect_one_way_entrance("Child Zora River", Child_Zora_River)
Adult_ZR_Fairy_Grotto:connect_one_way_entrance("Adult Zora River", Adult_Zora_River)

Child_ZR_Storms_Grotto:connect_one_way("Child ZR Deku Scrub Grotto Rear", function() return Can_stun_deku("child") end)
Child_ZR_Storms_Grotto:connect_one_way("Child ZR Deku Scrub Grotto Front", function() return Can_stun_deku("child") end)
Child_ZR_Storms_Grotto:connect_one_way("Child ZR Storms Grotto Beehive", function() return Can_break_upper_beehive("child") end)

Adult_ZR_Storms_Grotto:connect_one_way("Adult ZR Deku Scrub Grotto Rear", function() return Can_stun_deku("adult") end)
Adult_ZR_Storms_Grotto:connect_one_way("Adult ZR Deku Scrub Grotto Front", function() return Can_stun_deku("adult") end)
Adult_ZR_Storms_Grotto:connect_one_way("Adult ZR Storms Grotto Beehive", function() return Can_break_upper_beehive("adult") end)


Child_ZR_Storms_Grotto:connect_one_way_entrance("Child Zora River", Child_Zora_River)
Adult_ZR_Storms_Grotto:connect_one_way_entrance("Adult Zora River", Adult_Zora_River)


-- -- {
--     "region_name": "ZR Front",
--     "scene": "Zora River",
--     "hint": "ZORA_RIVER",
--     "time_passes": true,
--     "locations": {
--         "ZR GS Tree": "is_child and can_child_attack and can_bonk"
--     },
--     "exits": {
--         "Zora River": "is_adult or has_explosives",
--         "Hyrule Field": "True"
--     }
-- },
-- {
--     "region_name": "Zora River",
--     "scene": "Zora River",
--     "hint": "ZORA_RIVER",
--     "time_passes": true,
--     "locations": {
--         "ZR Magic Bean Salesman": "is_child",
--         "ZR Frogs Ocarina Game": "
--             is_child and Ocarina and Zeldas_Lullaby and Eponas_Song and
--             Sarias_Song and Suns_Song and Song_of_Time and Song_of_Storms",
--         "ZR Frogs Zeldas Lullaby": "is_child and can_play(Zeldas_Lullaby)",
--         "ZR Frogs Eponas Song": "is_child and can_play(Eponas_Song)",
--         "ZR Frogs Sarias Song": "is_child and can_play(Sarias_Song)",
--         "ZR Frogs Suns Song": "is_child and can_play(Suns_Song)",
--         "ZR Frogs Song of Time": "is_child and can_play(Song_of_Time)",
--         "ZR Frogs in the Rain": "is_child and can_play(Song_of_Storms)",
--         "ZR Near Open Grotto Freestanding PoH": "
--             is_child or here(can_plant_bean) or Hover_Boots or logic_zora_river_lower",
--         "ZR Near Domain Freestanding PoH": "is_child or Hover_Boots or logic_zora_river_upper",
--         "ZR Waterfall Red Rupee 1": "is_adult and (Iron_Boots or logic_zora_river_rupees)",
--         "ZR Waterfall Red Rupee 2": "is_adult and (Iron_Boots or logic_zora_river_rupees)",
--         "ZR Waterfall Red Rupee 3": "is_adult and (Iron_Boots or logic_zora_river_rupees)",
--         "ZR Waterfall Red Rupee 4": "is_adult and (Iron_Boots or logic_zora_river_rupees)",
--         "ZR GS Ladder": "is_child and at_night and can_child_attack",
--         "ZR GS Near Raised Grottos": "can_use(Hookshot) and at_night",
--         "ZR GS Above Bridge": "can_use(Hookshot) and at_night",
--         "ZR Near Grottos Gossip Stone": "True",
--         "ZR Near Domain Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
--         "Bean Plant Fairy": "is_child and can_plant_bean and can_play(Song_of_Storms) and has_bottle",
--         "Butterfly Fairy": "can_use(Sticks) and has_bottle",
--         "Bug Shrub": "
--             (is_child or here(can_plant_bean) or Hover_Boots or logic_zora_river_lower) and
--             can_cut_shrubs and has_bottle"
--     },
--     "exits": {
--         "ZR Front": "True",
--         "ZR Open Grotto": "True",
--         "ZR Fairy Grotto": "here(can_blast_or_smash)",
--         "LW Underwater Entrance": "can_dive or can_use(Iron_Boots)",
--         "ZR Storms Grotto": "can_open_storm_grotto",
--         "ZR Behind Waterfall": "
--             can_play(Zeldas_Lullaby) or
--             (can_use(Hover_Boots) and logic_zora_with_hovers) or
--             (is_child and logic_zora_with_cucco)"
--     }
-- },
-- {
--     "region_name": "ZR Behind Waterfall",
--     "scene": "Zora River",
--     "hint": "ZORA_RIVER",
--     "exits": {
--         "Zora River": "True",
--         "Zoras Domain": "True"
--     }
-- },
-- {
--     "region_name": "ZR Top of Waterfall",
--     "scene": "Zora River",
--     "hint": "ZORA_RIVER",
--     "exits": {
--         "Zora River": "True"
--     }
-- },
-- {
--     "region_name": "ZR Open Grotto",
--     "scene": "ZR Open Grotto",
--     "locations": {
--         "ZR Open Grotto Chest": "True",
--         "ZR Open Grotto Beehive 1": "can_break_lower_beehive",
--         "ZR Open Grotto Beehive 2": "can_break_lower_beehive",
--         "ZR Open Grotto Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
--         "Butterfly Fairy": "can_use(Sticks) and has_bottle",
--         "Bug Shrub": "can_cut_shrubs and has_bottle",
--         "Lone Fish": "has_bottle"
--     },
--     "exits": {
--         "Zora River": "True"
--     }
-- },
-- {
--     "region_name": "ZR Fairy Grotto",
--     "scene": "ZR Fairy Grotto",
--     "locations": {
--         "Free Fairies": "has_bottle"
--     },
--     "exits": {
--         "Zora River": "True"
--     }
-- },
-- {
--     "region_name": "ZR Storms Grotto",
--     "scene": "ZR Storms Grotto",
--     "locations": {
--         "ZR Deku Scrub Grotto Rear": "can_stun_deku",
--         "ZR Deku Scrub Grotto Front": "can_stun_deku",
--         "ZR Storms Grotto Beehive": "can_break_upper_beehive"
--     },
--     "exits": {
--         "Zora River": "True"
--     }
-- },