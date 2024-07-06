-- Child_Desert_Colossus = OOTLocation.new("Child_Desert_Colossus")
-- Child_Colossus_Great_Fairy_Fountain = OOTLocation.new("Child_Colossus_Great_Fairy_Fountain")
-- Child_Colossus_Grotto = OOTLocation.new("Child_Colossus_Grotto")
-- Child_Desert_Colossus_From_Spirit_Lobby = OOTLocation.new("Child_Desert_Colossus_From_Spirit_Lobby")

-- Adult_Desert_Colossus = OOTLocation.new("Adult_Desert_Colossus")
-- Adult_Colossus_Great_Fairy_Fountain = OOTLocation.new("Adult_Colossus_Great_Fairy_Fountain")
-- Adult_Colossus_Grotto = OOTLocation.new("Adult_Colossus_Grotto")
-- Adult_Desert_Colossus_From_Spirit_Lobby = OOTLocation.new("Adult_Desert_Colossus_From_Spirit_Lobby")

Child_Desert_Colossus:connect_one_way("Child Colossus GS Bean Patch", function()
    return All(
        Can_plant_bugs("child"),
        Can_child_attack("child")
    )
end)
Child_Desert_Colossus:connect_one_way("Child Colossus Freestanding PoH", function() return false end)
Child_Desert_Colossus:connect_one_way("Child Colossus GS Tree", function() return false end)
Child_Desert_Colossus:connect_one_way("Child Colossus GS Hill", function() return false end)
Child_Desert_Colossus:connect_one_way("Child Colossus Gossip Stone")

Adult_Desert_Colossus:connect_one_way("Adult Colossus GS Bean Patch", function() return false end)
Adult_Desert_Colossus:connect_one_way("Adult Colossus Freestanding PoH", function() return Has("MagicBean") end)
Adult_Desert_Colossus:connect_one_way("Adult Colossus GS Tree", function() 
    return All(
        Can_use("Hookshot", "adult")
         --atnight
        )
end)
Adult_Desert_Colossus:connect_one_way("Adult Colossus GS Hill", function()
    return All(
        --atnight,
        Any(
            Can_plant_bean("adult"),
            Can_use("Longshot", "adult"),
            All(
                Can_use("Hookshot", "adult"),
                Has("logic_collous_gs")
            )
        )
    )
end)
Adult_Desert_Colossus:connect_one_way("Adult Colossus Gossip Stone")

Child_Desert_Colossus:connect_one_way_entrance("Child Colossus Great Fairy Fountain", Child_Colossus_Great_Fairy_Fountain, function() return Has_explosives() end)
Child_Desert_Colossus:connect_one_way_entrance("Child Spirit Temple Lobby", Child_Spirit_Temple_Lobby)
Child_Desert_Colossus:connect_one_way_entrance("Child Wasteland Near Colossus", Child_Wasteland_Near_Colossus)
Child_Desert_Colossus:connect_one_way_entrance("Child Colossus Grotto", Child_Colossus_Grotto, function() return Can_use("SilverGauntlets", "child") end)

Adult_Desert_Colossus:connect_one_way_entrance("Adult Colossus Great Fairy Fountain", Adult_Colossus_Great_Fairy_Fountain, function() return Has_explosives() end)
Adult_Desert_Colossus:connect_one_way_entrance("Adult Spirit Temple Lobby", Adult_Spirit_Temple_Lobby)
Adult_Desert_Colossus:connect_one_way_entrance("Adult Wasteland Near Colossus", Adult_Wasteland_Near_Colossus)
Adult_Desert_Colossus:connect_one_way_entrance("Adult Colossus Grotto", Adult_Colossus_Grotto, function() return Can_use("SilverGauntlets", "adult") end)


Child_Desert_Colossus_From_Spirit_Lobby:connect_one_way("Child Sheik at Colossus")

Adult_Desert_Colossus_From_Spirit_Lobby:connect_one_way("Adult Sheik at Colossus")


Child_Desert_Colossus_From_Spirit_Lobby:connect_one_way_entrance("Child Desert Colossus", Child_Desert_Colossus)

Adult_Desert_Colossus_From_Spirit_Lobby:connect_one_way_entrance("Adult Desert Colossus", Adult_Desert_Colossus)

Child_Colossus_Great_Fairy_Fountain:connect_one_way("Child Colossus Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)

Adult_Colossus_Great_Fairy_Fountain:connect_one_way("Adult Colossus Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)

Child_Colossus_Great_Fairy_Fountain:connect_one_way_entrance("Child Desert Colossus", Child_Desert_Colossus)

Adult_Colossus_Great_Fairy_Fountain:connect_one_way_entrance("Adult Desert Colossus", Adult_Desert_Colossus)


Child_Colossus_Grotto:connect_one_way("Child Colossus Deku Scrub Grotto Rear", function() return Can_stun_deku("child") end)
Child_Colossus_Grotto:connect_one_way("Child Colossus Deku Scrub Grotto Front", function() return Can_stun_deku("child") end)
Child_Colossus_Grotto:connect_one_way("Child Colossus Grotto Beehive", function() return Can_break_upper_beehive("child") end)
Adult_Colossus_Grotto:connect_one_way("Adult Colossus Deku Scrub Grotto Rear", function() return Can_stun_deku("adult") end)
Adult_Colossus_Grotto:connect_one_way("Adult Colossus Deku Scrub Grotto Front", function() return Can_stun_deku("adult") end)
Adult_Colossus_Grotto:connect_one_way("Adult Colossus Grotto Beehive", function() return Can_break_upper_beehive("adult") end)

Child_Colossus_Grotto:connect_one_way_entrance("Child Desert Colossus", Child_Desert_Colossus)

Adult_Colossus_Grotto:connect_one_way_entrance("Adult Desert Colossus", Adult_Desert_Colossus)

-- {
--     "region_name": "Desert Colossus",
--     "scene": "Desert Colossus",
--     "hint": "DESERT_COLOSSUS",
--     "time_passes": true,
--     "locations": {
--         "Colossus Freestanding PoH": "is_adult and here(Can_plant_bean)",
--         "Colossus GS Bean Patch": "Can_plant_bugs and Can_child_attack",
--         "Colossus GS Tree": "can_use(Hookshot) and at_night",
--         "Colossus GS Hill": "
--             is_adult and at_night and
--             (here(Can_plant_bean) or Longshot or (logic_colossus_gs and Hookshot))",
--         "Colossus Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy and Has_bottle",
--         "Fairy Pond": "can_play(Song_of_Storms) and Has_bottle",
--         "Bug Rock": "Has_bottle"
--     },
--     "exits": {
--         "Colossus Great Fairy Fountain": "Has_explosives",
--         "Spirit Temple Lobby": "True",
--         "Wasteland Near Colossus": "True",
--         "Colossus Grotto": "can_use(Silver_Gauntlets)"
--     }
-- },
-- {
--     "region_name": "Desert Colossus From Spirit Lobby",
--     "scene": "Desert Colossus",
--     "hint": "DESERT_COLOSSUS",
--     "locations": {
--         "Sheik at Colossus": "True"
--     },
--     "exits": {
--         "Desert Colossus": "True"
--     }
-- },
-- {
--     "region_name": "Colossus Great Fairy Fountain",
--     "scene": "Colossus Great Fairy Fountain",
--     "locations": {
--         "Colossus Great Fairy Reward": "can_play(Zeldas_Lullaby)"
--     },
--     "exits": {
--         "Desert Colossus": "True"
--     }
-- },
-- {
--     "region_name": "Colossus Grotto",
--     "scene": "Colossus Grotto",
--     "locations": {
--         "Colossus Deku Scrub Grotto Rear": "Can_stun_deku",
--         "Colossus Deku Scrub Grotto Front": "Can_stun_deku",
--         "Colossus Grotto Beehive": "Can_break_upper_beehive"
--     },
--     "exits": {
--         "Desert Colossus": "True"
--     }
-- },