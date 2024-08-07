-- Child_Castle_Grounds = OOTLocation.new("Child_Castle_Grounds")
-- Child_Hyrule_Castle_Grounds = OOTLocation.new("Child_Hyrule_Castle_Grounds")
-- Child_HC_Garden = OOTLocation.new("Child_HC_Garden")
-- Child_HC_Garden_Locations = OOTLocation.new("Child_HC_Garden_Locations")
-- Child_HC_Great_Fairy_Fountain = OOTLocation.new("Child_HC_Great_Fairy_Fountain")
-- Child_Castle_Grounds_From_Ganons_Castle = OOTLocation.new("Child_Castle_Grounds_From_Ganons_Castle")
-- Child_Ganons_Castle_Grounds = OOTLocation.new("Child_Ganons_Castle_Grounds")
-- Child_OGC_Great_Fairy_Fountain = OOTLocation.new("Child_OGC_Great_Fairy_Fountain")
-- Child_HC_Storms_Grotto = OOTLocation.new("Child_HC_Storms_Grotto")

-- Adult_Castle_Grounds = OOTLocation.new("Adult_Castle_Grounds")
-- Adult_Hyrule_Castle_Grounds = OOTLocation.new("Adult_Hyrule_Castle_Grounds")
-- Adult_HC_Garden = OOTLocation.new("Adult_HC_Garden")
-- Adult_HC_Garden_Locations = OOTLocation.new("Adult_HC_Garden_Locations")
-- Adult_HC_Great_Fairy_Fountain = OOTLocation.new("Adult_HC_Great_Fairy_Fountain")
-- Adult_Castle_Grounds_From_Ganons_Castle = OOTLocation.new("Adult_Castle_Grounds_From_Ganons_Castle")
-- Adult_Ganons_Castle_Grounds = OOTLocation.new("Adult_Ganons_Castle_Grounds")
-- Adult_OGC_Great_Fairy_Fountain = OOTLocation.new("Adult_OGC_Great_Fairy_Fountain")
-- Adult_HC_Storms_Grotto = OOTLocation.new("Adult_HC_Storms_Grotto")

-- Child_Castle_Grounds:connect_one_way()
-- Adult_Castle_Grounds:connect_one_way()

Child_Castle_Grounds:connect_one_way_entrance("Child Market", Child_Market)
Child_Castle_Grounds:connect_one_way_entrance("Child Hyrule Castle Grounds", Child_Hyrule_Castle_Grounds)
Child_Castle_Grounds:connect_one_way_entrance("Child Ganons Castle Grounds", Child_Ganons_Castle_Grounds, function() return false end)

Adult_Castle_Grounds:connect_one_way_entrance("Adult Market", Adult_Market, function() return false end)
Adult_Castle_Grounds:connect_one_way_entrance("Adult Hyrule Castle Grounds", Adult_Hyrule_Castle_Grounds, function() return false end)
Adult_Castle_Grounds:connect_one_way_entrance("Adult Ganons Castle Grounds", Adult_Ganons_Castle_Grounds)

Child_Hyrule_Castle_Grounds:connect_one_way("Child HC Malon Egg")
Child_Hyrule_Castle_Grounds:connect_one_way("Child HC GS Tree", function()
    return All(
        Can_child_attack("child"),
        Can_bonk("child")
    )
end)
-- Child_Hyrule_Castle_Grounds:connect_one_way("Child HC Malon Gossip Stone")
-- Child_Hyrule_Castle_Grounds:connect_one_way("Child HC Rock Wall Gossip Stone")

Adult_Hyrule_Castle_Grounds:connect_one_way("Adult HC Malon Egg")
Adult_Hyrule_Castle_Grounds:connect_one_way("Adult HC GS Tree", function()
    return All(
        Can_child_attack("adult"),
        Can_bonk("adult")
    )
end)
-- Adult_Hyrule_Castle_Grounds:connect_one_way("Adult HC Malon Gossip Stone")
-- Adult_Hyrule_Castle_Grounds:connect_one_way("Adult HC Rock Wall Gossip Stone")

Child_Hyrule_Castle_Grounds:connect_one_way_entrance("Child Castle Grounds", Child_Castle_Grounds)
Child_Hyrule_Castle_Grounds:connect_one_way_entrance("Child HC Garden", Child_HC_Garden, function() return Tracker:ProviderCountForCode("WeirdEgg") > 0 end)
Child_Hyrule_Castle_Grounds:connect_one_way_entrance("Child HC Great Fairy Fountain", Child_HC_Great_Fairy_Fountain, function() return Has_explosives() end)
Child_Hyrule_Castle_Grounds:connect_one_way_entrance("Child HC Storms Grotto", Child_HC_Storms_Grotto, function() return Can_open_storm_grotto("child") end)

Adult_Hyrule_Castle_Grounds:connect_one_way_entrance("Adult Castle Grounds", Adult_Castle_Grounds)
Adult_Hyrule_Castle_Grounds:connect_one_way_entrance("Adult HC Garden", Adult_HC_Garden, function() return Tracker:ProviderCountForCode("WeirdEgg") > 0 end)
Adult_Hyrule_Castle_Grounds:connect_one_way_entrance("Adult HC Great Fairy Fountain", Adult_HC_Great_Fairy_Fountain, function() return Has_explosives() end)
Adult_Hyrule_Castle_Grounds:connect_one_way_entrance("Adult HC Storms Grotto", Adult_HC_Storms_Grotto, function() return Can_open_storm_grotto("adult") end)

-- Child_HC_Garden:connect_one_way()
-- Adult_HC_Garden:connect_one_way()

Child_HC_Garden:connect_one_way_entrance("Child HC Garden Locations", Child_HC_Garden_Locations)
Child_HC_Garden:connect_one_way_entrance("Child Hyrule Castle Grounds", Child_Hyrule_Castle_Grounds)

Adult_HC_Garden:connect_one_way_entrance("Adult HC Garden Locations", Adult_HC_Garden_Locations)
Adult_HC_Garden:connect_one_way_entrance("Adult Hyrule Castle Grounds", Adult_Hyrule_Castle_Grounds)

Child_HC_Garden_Locations:connect_one_way("Child HC Zeldas Letter")
Child_HC_Garden_Locations:connect_one_way("Child Song from Impa")

Adult_HC_Garden_Locations:connect_one_way("Adult HC Zeldas Letter")
Adult_HC_Garden_Locations:connect_one_way("Adult Song from Impa")


-- Child_HC_Garden_Locations:connect_one_way_entrance()
-- Adult_HC_Garden_Locations:connect_one_way_entrance()

Child_HC_Great_Fairy_Fountain:connect_one_way("Child HC Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)
Adult_HC_Great_Fairy_Fountain:connect_one_way("Adult HC Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)

Child_HC_Great_Fairy_Fountain:connect_one_way_entrance("Child Castle Grounds", Child_Castle_Grounds)
Adult_HC_Great_Fairy_Fountain:connect_one_way_entrance("Adult Castle Grounds", Adult_Castle_Grounds)

-- Child_Castle_Grounds_From_Ganons_Castle:connect_one_way()
-- Adult_Castle_Grounds_From_Ganons_Castle:connect_one_way()

-- Child_Castle_Grounds_From_Ganons_Castle:connect_one_way_entrance("Child Ganons Castle Grounds", Child_Ganons_Castle_Grounds, function()  print("child2", Tracker:FindObjectForCode("bridge").CurrentStage == 0) return false end)
-- Adult_Castle_Grounds_From_Ganons_Castle:connect_one_way_entrance("Adult Ganons Castle Grounds", Adult_Ganons_Castle_Grounds, function()  print("adult2", Tracker:FindObjectForCode("bridge").CurrentStage == 0) return Tracker:FindObjectForCode("bridge").CurrentStage == 0 end)

-- Child_Ganons_Castle_Grounds:connect_one_way("Child OGC GS")
-- Adult_Ganons_Castle_Grounds:connect_one_way("Adult OGC GS")

-- Child_Ganons_Castle_Grounds:connect_one_way_entrance("Child Castle Grounds", Child_Castle_Grounds)
-- Child_Ganons_Castle_Grounds:connect_one_way_entrance("Child OGC Great Fairy Fountain", Child_OGC_Great_Fairy_Fountain, function()  print("HC to Ganons castle lobby")return Can_use("GoldenGauntlets", "child") end)--and at_dampe_time end)
-- Child_Ganons_Castle_Grounds:connect_one_way_entrance("Child Ganons Castle Lobby", Child_Ganons_Castle_Lobby, function() return Can_build_rainbow_bridge() end)-- and at_dampe_time end)

-- Adult_Ganons_Castle_Grounds:connect_one_way_entrance("Adult Castle Grounds", Adult_Castle_Grounds)
-- Adult_Ganons_Castle_Grounds:connect_one_way_entrance("Adult OGC Great Fairy Fountain", Adult_OGC_Great_Fairy_Fountain, function() print("test") return Can_use("GoldenGauntlets", "adult") end)-- and at_dampe_time end)
-- Adult_Ganons_Castle_Grounds:connect_one_way_entrance("Adult Ganons Castle Lobby", Adult_Ganons_Castle_Lobby, function()  print("HC to Ganons castle lobby") return Can_build_rainbow_bridge() end)-- and at_dampe_time end)


-- Child_OGC_Great_Fairy_Fountain:connect_one_way("Child OGC Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)
-- Adult_OGC_Great_Fairy_Fountain:connect_one_way("Adult OGC Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)

-- Child_OGC_Great_Fairy_Fountain:connect_one_way_entrance("Child Castle Grounds", Child_Castle_Grounds)
-- Adult_OGC_Great_Fairy_Fountain:connect_one_way_entrance("Adult Castle Grounds", Adult_Castle_Grounds)

Child_HC_Storms_Grotto:connect_one_way("Child HC GS Storms Grotto", function()
    return All(
        Any(
            Can_blast_or_smash("child"),
            All(
                true, --is_child,
                Has("logic_castle_storms_gs")
            )
        ),
        Any(
            Can_use("Boomerang", "child"),
            Can_use("Hookshot", "child")
        )
    )
end)
Child_HC_Storms_Grotto:connect_one_way("Child HC Storms Grotto Pot 1", function() return Can_blast_or_smash("child") end)
Child_HC_Storms_Grotto:connect_one_way("Child HC Storms Grotto Pot 2", function() return Can_blast_or_smash("child") end)
Child_HC_Storms_Grotto:connect_one_way("Child HC Storms Grotto Pot 3", function() return Can_blast_or_smash("child") end)
Child_HC_Storms_Grotto:connect_one_way("Child HC Storms Grotto Pot 4", function() return Can_blast_or_smash("child") end)
Child_HC_Storms_Grotto:connect_one_way("Child HC Storms Grotto Gossip Stone", function() return Can_blast_or_smash("child") end)

Adult_HC_Storms_Grotto:connect_one_way("Adult HC GS Storms Grotto", function() 
    return All(
        Any(
            Can_blast_or_smash("adult"),
            All(
                false, --is_child,
                Has("logic_castle_storms_gs")
            )
        ),
        Any(
            Can_use("Boomerang", "adult"),
            Can_use("Hookshot", "adult")
        )
    )
end)
Adult_HC_Storms_Grotto:connect_one_way("Adult HC Storms Grotto Pot 1", function() return Can_blast_or_smash("adult") end)
Adult_HC_Storms_Grotto:connect_one_way("Adult HC Storms Grotto Pot 2", function() return Can_blast_or_smash("adult") end)
Adult_HC_Storms_Grotto:connect_one_way("Adult HC Storms Grotto Pot 3", function() return Can_blast_or_smash("adult") end)
Adult_HC_Storms_Grotto:connect_one_way("Adult HC Storms Grotto Pot 4", function() return Can_blast_or_smash("adult") end)
Adult_HC_Storms_Grotto:connect_one_way("Adult HC Storms Grotto Gossip Stone", function() return Can_blast_or_smash("adult") end)


Child_HC_Storms_Grotto:connect_one_way_entrance("Child Castle Grounds", Child_Castle_Grounds)
Adult_HC_Storms_Grotto:connect_one_way_entrance("Adult Castle Grounds", Adult_Castle_Grounds)




-- -- {
--     "region_name": "Castle Grounds",
--     "scene": "Castle Grounds",
--     "hint": "CASTLE_GROUNDS",
--     "exits": {
--         "Market": "is_child or at_dampe_time",
--         "Hyrule Castle Grounds": "is_child",
--         "Ganons Castle Grounds": "is_adult"
--     }
-- },
-- {
--     "region_name": "Hyrule Castle Grounds",
--     "scene": "Castle Grounds",
--     "hint": "HYRULE_CASTLE",
--     "time_passes": true,
--     "locations": {
--         "HC Malon Egg": "True",
--         "HC GS Tree": "can_child_attack and can_bonk",
--         "HC Malon Gossip Stone": "True",
--         "HC Rock Wall Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
--         "Butterfly Fairy": "can_use(Sticks) and has_bottle",
--         "Bug Rock": "has_bottle"
--     },
--     "exits": {
--         "Castle Grounds": "True",
--         "HC Garden": "Weird_Egg",
--         "HC Great Fairy Fountain": "has_explosives",
--         "HC Storms Grotto": "can_open_storm_grotto"
--     }
-- },
-- {
--     "region_name": "HC Garden",
--     "scene": "Castle Grounds",
--     "hint": "HYRULE_CASTLE",
--     "exits": {
--         "HC Garden Locations": "True",
--         "Hyrule Castle Grounds": "True"
--     }
-- },
-- {
--     # Directly reachable from Root in "Free Zelda"
--     "region_name": "HC Garden Locations",
--     "scene": "Castle Grounds",
--     "hint": "HYRULE_CASTLE",
--     "locations": {
--         "HC Zeldas Letter": "True",
--         "Song from Impa": "True"
--     }
-- },
-- {
--     "region_name": "HC Great Fairy Fountain",
--     "scene": "HC Great Fairy Fountain",
--     "locations": {
--         "HC Great Fairy Reward": "can_play(Zeldas_Lullaby)"
--     },
--     "exits": {
--         "Castle Grounds": "True"
--     }
-- },
-- {
--     "region_name": "HC Storms Grotto",
--     "scene": "HC Storms Grotto",
--     "locations": {
--         "HC GS Storms Grotto": "
--             (can_blast_or_smash or (is_child and logic_castle_storms_gs)) and
--             (can_use(Boomerang) or can_use(Hookshot))",
--         "HC Storms Grotto Pot 1": "can_blast_or_smash",
--         "HC Storms Grotto Pot 2": "can_blast_or_smash",
--         "HC Storms Grotto Pot 3": "can_blast_or_smash",
--         "HC Storms Grotto Pot 4": "can_blast_or_smash",
--         "HC Storms Grotto Gossip Stone": "can_blast_or_smash",
--         "Gossip Stone Fairy": "can_blast_or_smash and can_summon_gossip_fairy and has_bottle",
--         "Wandering Bugs": "can_blast_or_smash and has_bottle",
--         "Nut Pot": "can_blast_or_smash"
--     },
--     "exits": {
--         "Castle Grounds": "True"
--     }
-- },