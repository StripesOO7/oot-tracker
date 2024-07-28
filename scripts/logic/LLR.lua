-- Child_Lon_Lon_Ranch = OOTLocation.new("Child_Lon_Lon_Ranch")
-- Child_LLR_Talons_House = OOTLocation.new("Child_LLR_Talons_House")
-- Child_LLR_Stables = OOTLocation.new("Child_LLR_Stables")
-- Child_LLR_Tower = OOTLocation.new("Child_LLR_Tower")
-- Child_LLR_Grotto = OOTLocation.new("Child_LLR_Grotto")

-- Adult_Lon_Lon_Ranch = OOTLocation.new("Adult_Lon_Lon_Ranch")
-- Adult_LLR_Talons_House = OOTLocation.new("Adult_LLR_Talons_House")
-- Adult_LLR_Stables = OOTLocation.new("Adult_LLR_Stables")
-- Adult_LLR_Tower = OOTLocation.new("Adult_LLR_Tower")
-- Adult_LLR_Grotto = OOTLocation.new("Adult_LLR_Grotto")

Child_Lon_Lon_Ranch:connect_one_way("Child Song from Malon", function()
    return All(
        Has("ZeldasLetter"),
        Tracker:FindObjectForCode("Ocarina").Active
    )
end)
Child_Lon_Lon_Ranch:connect_one_way("Child LLR Front Pot 1")
Child_Lon_Lon_Ranch:connect_one_way("Child LLR Front Pot 2")
Child_Lon_Lon_Ranch:connect_one_way("Child LLR Front Pot 3")
Child_Lon_Lon_Ranch:connect_one_way("Child LLR Front Pot 4")
Child_Lon_Lon_Ranch:connect_one_way("Child LLR Rain Shed Pot 1")
Child_Lon_Lon_Ranch:connect_one_way("Child LLR Rain Shed Pot 2")
Child_Lon_Lon_Ranch:connect_one_way("Child LLR Rain Shed Pot 3")
Child_Lon_Lon_Ranch:connect_one_way("Child LLR Child Crate")
Child_Lon_Lon_Ranch:connect_one_way("Child LLR GS Tree", function() return Can_break_crate("child") end)
Child_Lon_Lon_Ranch:connect_one_way("Child LLR GS Rain Shed", function() return Can_bonk("child") end)
Child_Lon_Lon_Ranch:connect_one_way("Child LLR GS House Window", function() return Can_use("Boomerang", "child") end)
Child_Lon_Lon_Ranch:connect_one_way("Child LLR GS Back Wall", function() return Can_use("Boomerang", "child") end)

Adult_Lon_Lon_Ranch:connect_one_way("Adult Song from Malon", function() return false end)
Adult_Lon_Lon_Ranch:connect_one_way("Adult LLR Front Pot 1", function() return false end)
Adult_Lon_Lon_Ranch:connect_one_way("Adult LLR Front Pot 2", function() return false end)
Adult_Lon_Lon_Ranch:connect_one_way("Adult LLR Front Pot 3", function() return false end)
Adult_Lon_Lon_Ranch:connect_one_way("Adult LLR Front Pot 4", function() return false end)
Adult_Lon_Lon_Ranch:connect_one_way("Adult LLR Rain Shed Pot 1", function() return false end)
Adult_Lon_Lon_Ranch:connect_one_way("Adult LLR Rain Shed Pot 2", function() return false end)
Adult_Lon_Lon_Ranch:connect_one_way("Adult LLR Rain Shed Pot 3", function() return false end)
Adult_Lon_Lon_Ranch:connect_one_way("Adult LLR Child Crate", function() return false end)
Adult_Lon_Lon_Ranch:connect_one_way("Adult LLR GS Tree", function() return Can_break_crate("adult") end)
Adult_Lon_Lon_Ranch:connect_one_way("Adult LLR GS Rain Shed", function() return Can_bonk("adult") end)
Adult_Lon_Lon_Ranch:connect_one_way("Adult LLR GS House Window", function() return Can_use("Boomerang", "adult") end)
Adult_Lon_Lon_Ranch:connect_one_way("Adult LLR GS Back Wall", function() return Can_use("Boomerang", "adult") end)


Child_Lon_Lon_Ranch:connect_one_way_entrance("Child Hyrule Field", Child_Hyrule_Fields)
Child_Lon_Lon_Ranch:connect_one_way_entrance("Child LLR Talons House", Child_LLR_Talons_House) --at day
Child_Lon_Lon_Ranch:connect_one_way_entrance("Child LLR Stables", Child_LLR_Stables)
Child_Lon_Lon_Ranch:connect_one_way_entrance("Child LLR Tower", Child_LLR_Tower)
Child_Lon_Lon_Ranch:connect_one_way_entrance("Child LLR Grotto", Child_LLR_Grotto)

Adult_Lon_Lon_Ranch:connect_one_way_entrance("Adult Hyrule Field", Adult_Hyrule_Fields)
Adult_Lon_Lon_Ranch:connect_one_way_entrance("Adult LLR Talons House", Adult_LLR_Talons_House)
Adult_Lon_Lon_Ranch:connect_one_way_entrance("Adult LLR Stables", Adult_LLR_Stables)
Adult_Lon_Lon_Ranch:connect_one_way_entrance("Adult LLR Tower", Adult_LLR_Tower)
Adult_Lon_Lon_Ranch:connect_one_way_entrance("Adult LLR Grotto", Adult_LLR_Grotto, function() return false end)

Child_LLR_Talons_House:connect_one_way("Child LLR Talons Chickens", function() return Has("ZeldasLetter") end)--at_day
Child_LLR_Talons_House:connect_one_way("Child LLR Talons House Pot 1")
Child_LLR_Talons_House:connect_one_way("Child LLR Talons House Pot 2")
Child_LLR_Talons_House:connect_one_way("Child LLR Talons House Pot 3")

Adult_LLR_Talons_House:connect_one_way("Adult LLR Talons Chickens", function() return false end)
Adult_LLR_Talons_House:connect_one_way("Adult LLR Talons House Pot 1")
Adult_LLR_Talons_House:connect_one_way("Adult LLR Talons House Pot 2")
Adult_LLR_Talons_House:connect_one_way("Adult LLR Talons House Pot 3")

Child_LLR_Talons_House:connect_one_way_entrance("Child Lon Lon Ranch", Child_Lon_Lon_Ranch)
Adult_LLR_Talons_House:connect_one_way_entrance("Adult Lon Lon Ranch", Adult_Lon_Lon_Ranch)

Child_LLR_Stables:connect_one_way("Child LLR Stables Left Cow", function() return Can_play("EponasSong") end)
Child_LLR_Stables:connect_one_way("Child LLR Stables Right Cow", function() return Can_play("EponasSong") end)

Adult_LLR_Stables:connect_one_way("Adult LLR Stables Left Cow", function() return Can_play("EponasSong") end)
Adult_LLR_Stables:connect_one_way("Adult LLR Stables Right Cow", function() return Can_play("EponasSong") end)

Child_LLR_Stables:connect_one_way_entrance("Child Lon Lon Ranch", Child_Lon_Lon_Ranch)
Adult_LLR_Stables:connect_one_way_entrance("Adult Lon Lon Ranch", Adult_Lon_Lon_Ranch)

Child_LLR_Tower:connect_one_way("Child LLR Freestanding PoH")
Child_LLR_Tower:connect_one_way("Child LLR Tower Left Cow", function() return Can_play("EponasSong") end)
Child_LLR_Tower:connect_one_way("Child LLR Tower Right Cow", function() return Can_play("EponasSong") end)

Adult_LLR_Tower:connect_one_way("Adult LLR Freestanding PoH", function() return false end)
Adult_LLR_Tower:connect_one_way("Adult LLR Tower Left Cow", function() return Can_play("EponasSong") end)
Adult_LLR_Tower:connect_one_way("Adult LLR Tower Right Cow", function() return Can_play("EponasSong") end)

Child_LLR_Tower:connect_one_way_entrance("Child Lon Lon Ranch", Child_Lon_Lon_Ranch)
Adult_LLR_Tower:connect_one_way_entrance("Adult Lon Lon Ranch", Adult_Lon_Lon_Ranch)

Child_LLR_Grotto:connect_one_way("Child LLR Deku Scrub Grotto Left", function() return Can_stun_deku("child") end)
Child_LLR_Grotto:connect_one_way("Child LLR Deku Scrub Grotto Right", function() return Can_stun_deku("child") end)
Child_LLR_Grotto:connect_one_way("Child LLR Deku Scrub Grotto Center", function() return Can_stun_deku("child") end)
Child_LLR_Grotto:connect_one_way("Child LLR Grotto Beehive", function() return Can_break_upper_beehive("child") end )

Adult_LLR_Grotto:connect_one_way("Adult LLR Deku Scrub Grotto Left", function() return Can_stun_deku("adult") end)
Adult_LLR_Grotto:connect_one_way("Adult LLR Deku Scrub Grotto Right", function() return Can_stun_deku("adult") end)
Adult_LLR_Grotto:connect_one_way("Adult LLR Deku Scrub Grotto Center", function() return Can_stun_deku("adult") end)
Adult_LLR_Grotto:connect_one_way("Adult LLR Grotto Beehive", function() return Can_break_upper_beehive("adult") end )

Child_LLR_Grotto:connect_one_way_entrance("Child Lon Lon Ranch", Child_Lon_Lon_Ranch)
Adult_LLR_Grotto:connect_one_way_entrance("Adult Lon Lon Ranch", Adult_Lon_Lon_Ranch)

-- -- {
--     "region_name": "Lon Lon Ranch",
--     "scene": "Lon Lon Ranch",
--     "hint": "LON_LON_RANCH",
--     "events": {
--         "Epona": "can_play(Eponas_Song) and is_adult and at_day",
--         "Links Cow": "can_play(Eponas_Song) and is_adult and at_day"
--     },
--     "locations": {
--         "Song from Malon": "is_child and Zeldas_Letter and Ocarina and at_day",
--         "LLR Front Pot 1": "is_child",
--         "LLR Front Pot 2": "is_child",
--         "LLR Front Pot 3": "is_child",
--         "LLR Front Pot 4": "is_child",
--         "LLR Rain Shed Pot 1": "is_child",
--         "LLR Rain Shed Pot 2": "is_child",
--         "LLR Rain Shed Pot 3": "is_child",
--         "LLR Child Crate": "is_child and can_break_crate",
--         "LLR GS Tree": "is_child and can_bonk",
--         "LLR GS Rain Shed": "is_child and at_night",
--         "LLR GS House Window": "can_use(Boomerang) and at_night",
--         "LLR GS Back Wall": "can_use(Boomerang) and at_night"
--     },
--     "exits": {
--         "Hyrule Field": "True",
--         "LLR Talons House": "is_adult or at_day",
--         "LLR Stables": "True",
--         "LLR Tower": "True",
--         "LLR Grotto": "is_child"
--     }
-- },
-- {
--     "region_name": "LLR Talons House",
--     "scene": "LLR Talons House",
--     "locations": {
--         "LLR Talons Chickens": "is_child and at_day and Zeldas_Letter",
--         "LLR Talons House Pot 1": "True",
--         "LLR Talons House Pot 2": "True",
--         "LLR Talons House Pot 3": "True"
--     },
--     "exits": {
--         "Lon Lon Ranch": "True"
--     }
-- },
-- {
--     "region_name": "LLR Stables",
--     "scene": "LLR Stables",
--     "locations": {
--         "LLR Stables Left Cow": "can_play(Eponas_Song)",
--         "LLR Stables Right Cow": "can_play(Eponas_Song)"
--     },
--     "exits": {
--         "Lon Lon Ranch": "True"
--     }
-- },
-- {
--     "region_name": "LLR Tower",
--     "scene": "LLR Tower",
--     "locations": {
--         "LLR Freestanding PoH": "is_child",
--         "LLR Tower Left Cow": "can_play(Eponas_Song)",
--         "LLR Tower Right Cow": "can_play(Eponas_Song)"
--     },
--     "exits": {
--         "Lon Lon Ranch": "True"
--     }
-- },
-- {
--     "region_name": "LLR Grotto",
--     "scene": "LLR Grotto",
--     "locations": {
--         "LLR Deku Scrub Grotto Left": "can_stun_deku",
--         "LLR Deku Scrub Grotto Right": "can_stun_deku",
--         "LLR Deku Scrub Grotto Center": "can_stun_deku",
--         "LLR Grotto Beehive": "can_break_upper_beehive"
--     },
--     "exits": {
--         "Lon Lon Ranch": "True"
--     }
-- },