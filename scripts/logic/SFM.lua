-- Child_Sacret_Forest_Meadow_Entryway = OOTLocation.new("Child_Sacret_Forest_Meadow_Entryway")
-- Child_Sacret_Forest_Meadow = OOTLocation.new("Child_Sacret_Forest_Meadow")
-- Child_SFM_Wolfos_Grotto = OOTLocation.new("Child_SFM_Wolfos_Grotto")
-- Child_SFM_Forest_Temple_Entrance_Ledge = OOTLocation.new("Child_SFM_Forest_Temple_Entrance_Ledge")
-- Child_SFM_Fairy_Grotto = OOTLocation.new("Child_SFM_Fairy_Grotto")
-- Child_SFM_Storms_Grotto = OOTLocation.new("Child_SFM_Storms_Grotto")

-- Adult_Sacret_Forest_Meadow_Entryway = OOTLocation.new("Adult_Sacret_Forest_Meadow_Entryway")
-- Adult_Sacret_Forest_Meadow = OOTLocation.new("Adult_Sacret_Forest_Meadow")
-- Adult_SFM_Wolfos_Grotto = OOTLocation.new("Adult_SFM_Wolfos_Grotto")
-- Adult_SFM_Forest_Temple_Entrance_Ledge = OOTLocation.new("Adult_SFM_Forest_Temple_Entrance_Ledge")
-- Adult_SFM_Fairy_Grotto = OOTLocation.new("Adult_SFM_Fairy_Grotto")
-- Adult_SFM_Storms_Grotto = OOTLocation.new("Adult_SFM_Storms_Grotto")

Child_Sacret_Forest_Meadow_Entryway:connect_one_way_entrance("Child LW Beyond Mido", Child_LW_Beyond_Mido)
Child_Sacret_Forest_Meadow_Entryway:connect_one_way_entrance("Child Sacret Forest Meadow", Child_Sacret_Forest_Meadow, function()
    return Any(
        Can_use("Slingshot", "child"),
        Can_use("DekuStick", "child"),
        Can_use("KokiriSword", "child"),
        Can_use("DinsFire", "child")
    )
end)
Child_Sacret_Forest_Meadow_Entryway:connect_one_way_entrance("Child SFM Wolfos Grotto", Child_SFM_Wolfos_Grotto, function() return Can_open_bomb_grotto("child") end)

Adult_Sacret_Forest_Meadow_Entryway:connect_one_way_entrance("Adult LW Beyond Mido", Adult_LW_Beyond_Mido)
Adult_Sacret_Forest_Meadow_Entryway:connect_one_way_entrance("Adult Sacret Forest Meadow", Adult_Sacret_Forest_Meadow)
Adult_Sacret_Forest_Meadow_Entryway:connect_one_way_entrance("Adult SFM Wolfos Grotto", Adult_SFM_Wolfos_Grotto, function() return Can_open_bomb_grotto("adult") end)


Child_Sacret_Forest_Meadow:connect_one_way("Child Song from Saria", function() return All(true, Has("ZeldasLetter")) end)
Child_Sacret_Forest_Meadow:connect_one_way("Child Sheik in Forest", function() return false end)
Child_Sacret_Forest_Meadow:connect_one_way("Child SFM GS", function() return Can_use("Hookshot", "child") end) -- At Night
-- Child_Sacret_Forest_Meadow:connect_one_way("Child SFM Maze Gossip Stone (Lower)")
-- Child_Sacret_Forest_Meadow:connect_one_way("Child SFM Maze Gossip Stone (Upper)")
-- Child_Sacret_Forest_Meadow:connect_one_way("Child SFM Saria Gossip Stone")

Adult_Sacret_Forest_Meadow:connect_one_way("Adult Song from Saria", function() return All(false, Has("ZeldasLetter")) end)
Adult_Sacret_Forest_Meadow:connect_one_way("Adult Sheik in Forest")
Adult_Sacret_Forest_Meadow:connect_one_way("Adult SFM GS", function() return Can_use("Hookshot", "adult") end) -- At Night
-- Adult_Sacret_Forest_Meadow:connect_one_way("Adult SFM Maze Gossip Stone (Lower)")
-- Adult_Sacret_Forest_Meadow:connect_one_way("Adult SFM Maze Gossip Stone (Upper)")
-- Adult_Sacret_Forest_Meadow:connect_one_way("Adult SFM Saria Gossip Stone")


Child_Sacret_Forest_Meadow:connect_one_way_entrance("Child SFM Entryway", Child_Sacret_Forest_Meadow_Entryway)
Child_Sacret_Forest_Meadow:connect_one_way_entrance("Child SFM Forest Temple Entrance Ledge", Child_SFM_Forest_Temple_Entrance_Ledge, function() return Can_use("Hookshot", "child") end)
Child_Sacret_Forest_Meadow:connect_one_way_entrance("Child SFM Fairy Grotto", Child_SFM_Fairy_Grotto)
Child_Sacret_Forest_Meadow:connect_one_way_entrance("Child SFM Storms Grotto", Child_SFM_Storms_Grotto, function() return Can_open_storm_grotto("child") end)

Adult_Sacret_Forest_Meadow:connect_one_way_entrance("Adult SFM Entryway", Adult_Sacret_Forest_Meadow_Entryway)
Adult_Sacret_Forest_Meadow:connect_one_way_entrance("Adult SFM Forest Temple Entrance Ledge", Adult_SFM_Forest_Temple_Entrance_Ledge, function() return Can_use("Hookshot", "adult") end)
Adult_Sacret_Forest_Meadow:connect_one_way_entrance("Adult SFM Fairy Grotto", Adult_SFM_Fairy_Grotto)
Adult_Sacret_Forest_Meadow:connect_one_way_entrance("Adult SFM Storms Grotto", Adult_SFM_Storms_Grotto, function() return Can_open_storm_grotto("adult") end)

Child_SFM_Forest_Temple_Entrance_Ledge:connect_one_way_entrance("Child Sacret Forest Meadow", Child_Sacret_Forest_Meadow)
Child_SFM_Forest_Temple_Entrance_Ledge:connect_one_way_entrance("Child Forest Temple Lobby", Child_Forest_Temple_Lobby)

Adult_SFM_Forest_Temple_Entrance_Ledge:connect_one_way_entrance("Adult Sacret Forest Meadow", Adult_Sacret_Forest_Meadow)
Adult_SFM_Forest_Temple_Entrance_Ledge:connect_one_way_entrance("Adult Forest Temple Lobby", Adult_Forest_Temple_Lobby)

Child_SFM_Wolfos_Grotto:connect_one_way("Child SFM Wolfos Grotto Chest", function() 
    return Any(
        false,
        Can_use("Slingshot", "child"),
        Can_use("DekuStick", "child"),
        Can_use("KokiriSword", "child"),
        Can_use("DinsFire", "child")
    )
end)
Adult_SFM_Wolfos_Grotto:connect_one_way("Adult SFM Wolfos Grotto Chest", function() 
    return Any(
        true,
        Can_use("Slingshot", "adult"),
        Can_use("DekuStick", "adult"),
        Can_use("KokiriSword", "adult"),
        Can_use("DinsFire", "adult")
    )
end)

Child_SFM_Wolfos_Grotto:connect_one_way_entrance("Child SFM Entryway", Child_Sacret_Forest_Meadow_Entryway)
Adult_SFM_Wolfos_Grotto:connect_one_way_entrance("Adult SFM Entryway", Adult_Sacret_Forest_Meadow_Entryway)

-- Child_SFM_Fairy_Grotto:connect_one_way()
-- Adult_SFM_Fairy_Grotto:connect_one_way()

Child_SFM_Fairy_Grotto:connect_one_way_entrance("Child Sacret Forest Meadow", Child_Sacret_Forest_Meadow)
Adult_SFM_Fairy_Grotto:connect_one_way_entrance("Adult Sacret Forest Meadow", Adult_Sacret_Forest_Meadow)

Child_SFM_Storms_Grotto:connect_one_way("Child SFM Deku Scrub Grotto Rear", function() return Can_stun_deku("child") end)
Child_SFM_Storms_Grotto:connect_one_way("Child SFM Deku Scrub Grotto Front", function() return Can_stun_deku("child") end)
Child_SFM_Storms_Grotto:connect_one_way("Child SFM Storms Grotto Beehive", function() return Can_break_upper_beehive("child") end)

Adult_SFM_Storms_Grotto:connect_one_way("Adult SFM Deku Scrub Grotto Rear", function() return Can_stun_deku("adult") end)
Adult_SFM_Storms_Grotto:connect_one_way("Adult SFM Deku Scrub Grotto Front", function() return Can_stun_deku("adult") end)
Adult_SFM_Storms_Grotto:connect_one_way("Adult SFM Storms Grotto Beehive", function() return Can_break_upper_beehive("adult") end)


Child_SFM_Storms_Grotto:connect_one_way_entrance("Child Sacret Forest Meadow", Child_Sacret_Forest_Meadow)
Adult_SFM_Storms_Grotto:connect_one_way_entrance("Adult Sacret Forest Meadow", Adult_Sacret_Forest_Meadow)

-- -- {
--     "region_name": "SFM Entryway",
--     "scene": "Sacred Forest Meadow",
--     "hint": "SACRED_FOREST_MEADOW",
--     "exits": {
--         "LW Beyond Mido": "True",
--         "Sacred Forest Meadow": "
--             is_adult or Slingshot or Sticks or Kokiri_Sword or can_use(Dins_Fire)",
--         "SFM Wolfos Grotto": "can_open_bomb_grotto"
--     }
-- },
-- {
--     "region_name": "Sacred Forest Meadow",
--     "scene": "Sacred Forest Meadow",
--     "hint": "SACRED_FOREST_MEADOW",
--     "locations": {
--         "Song from Saria": "is_child and Zeldas_Letter",
--         "Sheik in Forest": "is_adult",
--         "SFM GS": "can_use(Hookshot) and at_night",
--         "SFM Maze Gossip Stone (Lower)": "True",
--         "SFM Maze Gossip Stone (Upper)": "True",
--         "SFM Saria Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy_without_suns and has_bottle"
--     },
--     "exits": {
--         "SFM Entryway": "True",
--         "SFM Forest Temple Entrance Ledge": "can_use(Hookshot)",
--         "SFM Fairy Grotto": "True",
--         "SFM Storms Grotto": "can_open_storm_grotto"
--     }
-- },
-- {
--     "region_name": "SFM Forest Temple Entrance Ledge",
--     "scene": "Sacred Forest Meadow",
--     "hint": "SACRED_FOREST_MEADOW",
--     "exits": {
--         "Sacred Forest Meadow": "True",
--         "Forest Temple Lobby": "True"
--     }
-- },
-- {
--     "region_name": "SFM Fairy Grotto",
--     "scene": "SFM Fairy Grotto",
--     "locations": {
--         "Free Fairies": "has_bottle"
--     },
--     "exits": {
--         "Sacred Forest Meadow": "True"
--     }
-- },
-- {
--     "region_name": "SFM Storms Grotto",
--     "scene": "SFM Storms Grotto",
--     "locations": {
--         "SFM Deku Scrub Grotto Rear": "can_stun_deku",
--         "SFM Deku Scrub Grotto Front": "can_stun_deku",
--         "SFM Storms Grotto Beehive": "can_break_upper_beehive"
--     },
--     "exits": {
--         "Sacred Forest Meadow": "True"
--     }
-- },
-- {
--     "region_name": "SFM Wolfos Grotto",
--     "scene": "SFM Wolfos Grotto",
--     "locations": {
--         "SFM Wolfos Grotto Chest": "
--             is_adult or Slingshot or Sticks or Kokiri_Sword or can_use(Dins_Fire)"
--     },
--     "exits": {
--         "SFM Entryway": "True"
--     }
-- },