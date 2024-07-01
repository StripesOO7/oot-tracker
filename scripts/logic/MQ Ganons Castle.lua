Child_Castle_Grounds_From_Ganons_Castle = OOTLocation.new("Child_Castle_Grounds_From_Ganons_Castle")
Child_Ganons_Castle_Grounds = OOTLocation.new("Child_Ganons_Castle_Grounds")
Child_OGC_Great_Fairy_Fountain = OOTLocation.new("Child_OGC_Great_Fairy_Fountain")

Adult_Castle_Grounds_From_Ganons_Castle = OOTLocation.new("Adult_Castle_Grounds_From_Ganons_Castle")
Adult_Ganons_Castle_Grounds = OOTLocation.new("Adult_Ganons_Castle_Grounds")
Adult_OGC_Great_Fairy_Fountain = OOTLocation.new("Adult_OGC_Great_Fairy_Fountain")

-- Child_Castle_Grounds_From_Ganons_Castle:connect_one_way()
-- Adult_Castle_Grounds_From_Ganons_Castle:connect_one_way()

Child_Castle_Grounds_From_Ganons_Castle:connect_one_way_entrance("Child Ganons Castle Grounds", Child_Ganons_Castle_Grounds, function() 
    return All(
        false, 
        Tracker:FindObjectForCode("bridge").CurrentStage == 0
    ) 
end)
Adult_Castle_Grounds_From_Ganons_Castle:connect_one_way_entrance("Adult Ganons Castle Grounds", Adult_Ganons_Castle_Grounds, function() 
    return All(
        true, 
        Tracker:FindObjectForCode("bridge").CurrentStage == 0
    ) 
end)

Child_Ganons_Castle_Grounds:connect_one_way("Child OGC GS")
Adult_Ganons_Castle_Grounds:connect_one_way("Adult OGC GS")

Child_Ganons_Castle_Grounds:connect_one_way_entrance("Child Castle Grounds", Child_Castle_Grounds)
Child_Ganons_Castle_Grounds:connect_one_way_entrance("Child OGC Great Fairy Fountain", Child_OGC_Great_Fairy_Fountain, function() 
    return All(
        Can_use("GoldenGauntlets")--,
        -- at_dampe_time
    ) 
end)
Child_Ganons_Castle_Grounds:connect_one_way_entrance("Child Ganons Castle Lobby", Child_Ganons_Castle_Lobby, function() 
    return All(
        Can_build_rainbow_bridge()--,
        -- at_dampe_time
    ) 
end)

Adult_Ganons_Castle_Grounds:connect_one_way_entrance("Adult Castle Grounds", Adult_Castle_Grounds)
Adult_Ganons_Castle_Grounds:connect_one_way_entrance("Adult OGC Great Fairy Fountain", Adult_OGC_Great_Fairy_Fountain, function() 
    return All(
        Can_use("GoldenGauntlets")--,
        -- at_dampe_time
    ) 
end)
Adult_Ganons_Castle_Grounds:connect_one_way_entrance("Adult Ganons Castle Lobby", Adult_Ganons_Castle_Lobby, function() 
    return All(
        Can_build_rainbow_bridge()--,
        -- at_dampe_time
    ) 
end)


Child_OGC_Great_Fairy_Fountain:connect_one_way("Child OGC Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)
Adult_OGC_Great_Fairy_Fountain:connect_one_way("Adult OGC Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)

Child_OGC_Great_Fairy_Fountain:connect_one_way_entrance("Child Castle Grounds", Child_Castle_Grounds)
Adult_OGC_Great_Fairy_Fountain:connect_one_way_entrance("Adult Castle Grounds", Adult_Castle_Grounds)




-- {
--     "region_name": "Castle Grounds From Ganons Castle",
--     "scene": "Castle Grounds",
--     "hint": "OUTSIDE_GANONS_CASTLE",
--     "exits": {
--         # The rainbow bridge cutscene trigger doesn't extend to the castle entrance
--         "Ganons Castle Grounds": "is_adult and bridge == 'open'"
--         # No exit back into the castle because the entrance places Link in midair if the bridge isn't spawned
--     }
-- },
-- {
--     "region_name": "Ganons Castle Grounds",
--     "scene": "Castle Grounds",
--     "hint": "OUTSIDE_GANONS_CASTLE",
--     "locations": {
--         "OGC GS": "True"
--     },
--     "exits": {
--         "Castle Grounds": "True",
--         "OGC Great Fairy Fountain": "can_use(Golden_Gauntlets) and at_dampe_time",
--         "Ganons Castle Lobby": "can_build_rainbow_bridge and at_dampe_time"
--     }
-- },
-- {
--     "region_name": "OGC Great Fairy Fountain",
--     "scene": "OGC Great Fairy Fountain",
--     "locations": {
--         "OGC Great Fairy Reward": "can_play(Zeldas_Lullaby)"
--     },
--     "exits": {
--         "Castle Grounds": "True"
--     }
-- },