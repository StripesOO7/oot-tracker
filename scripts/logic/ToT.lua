-- Child_ToT_Entrance = OOTLocation.new("Child_ToT_Entrance")
-- Child_Temple_of_Time = OOTLocation.new("Child_Temple_of_Time")
-- Child_Beyond_Door_of_Time = OOTLocation.new("Child_Beyond_Door_of_Time")

-- Adult_ToT_Entrance = OOTLocation.new("Adult_ToT_Entrance")
-- Adult_Temple_of_Time = OOTLocation.new("Adult_Temple_of_Time")
-- Adult_Beyond_Door_of_Time = OOTLocation.new("Adult_Beyond_Door_of_Time")


Child_ToT_Entrance:connect_one_way("Child ToT Gossip Stone (Left)")
Child_ToT_Entrance:connect_one_way("Child ToT Gossip Stone (Left-Center)")
Child_ToT_Entrance:connect_one_way("Child ToT Gossip Stone (Right)")
Child_ToT_Entrance:connect_one_way("Child ToT Gossip Stone (Right-Center)")
Child_ToT_Entrance:connect_one_way("Child Gossip Stone Fairy", function()
    return All(
        Has("can_summon_gossip_fairy_without_suns"),
        Has("Bottle")
    )
end)

Adult_ToT_Entrance:connect_one_way("Adult ToT Gossip Stone (Left)")
Adult_ToT_Entrance:connect_one_way("Adult ToT Gossip Stone (Left-Center)")
Adult_ToT_Entrance:connect_one_way("Adult ToT Gossip Stone (Right)")
Adult_ToT_Entrance:connect_one_way("Adult ToT Gossip Stone (Right-Center)")
Adult_ToT_Entrance:connect_one_way("Adult Gossip Stone Fairy", function()
    return All(
        Any(
            Has("can_summon_gossip_fairy_without_suns"),
            Can_play("SunsSong")
        ),
        Has("Bottle")
    )
end)

Child_ToT_Entrance:connect_one_way_entrance("Child Market", Child_Market)
Child_ToT_Entrance:connect_one_way_entrance("Child Temple of Time", Child_Temple_of_Time)

Adult_ToT_Entrance:connect_one_way_entrance("Adult Market", Adult_Market)
Adult_ToT_Entrance:connect_one_way_entrance("Adult Temple of Time", Adult_Temple_of_Time)


Child_Temple_of_Time:connect_one_way("Child ToT Child Altar Hint")
Child_Temple_of_Time:connect_one_way("Child ToT Light Arrows Cutscene", function() return Can_trigger_lacs() end)
Child_Temple_of_Time:connect_one_way("Child ToT Adult Altar Hint")

Adult_Temple_of_Time:connect_one_way("Adult ToT Child Altar Hint")
Adult_Temple_of_Time:connect_one_way("Adult ToT Light Arrows Cutscene", function() return Can_trigger_lacs() end)
Adult_Temple_of_Time:connect_one_way("Adult ToT Adult Altar Hint")

Child_Temple_of_Time:connect_one_way_entrance("Child ToT Entrance", Child_ToT_Entrance)
Child_Temple_of_Time:connect_one_way_entrance("Child Beyond Door of Time", Child_Beyond_Door_of_Time, function()
    return Any(
        Can_play("SongofTime"),
        Has("open_door_of_time")
    )
end)

Adult_Temple_of_Time:connect_one_way_entrance("Adult ToT Entrance", Adult_ToT_Entrance)
Adult_Temple_of_Time:connect_one_way_entrance("Adult Beyond Door of Time", Adult_Beyond_Door_of_Time, function()
    return Any(
        Can_play("SongofTime"),
        Has("open_door_of_time")
    )
end)


Child_Beyond_Door_of_Time:connect_one_way("Child Master Sword Pedestal")
Child_Beyond_Door_of_Time:connect_one_way("Child Sheik at Temple", function() return Has("forest_medallion") end)
Child_Beyond_Door_of_Time:connect_one_way("Child Master Sword Pedestal")

Adult_Beyond_Door_of_Time:connect_one_way("Adult Master Sword Pedestal")
Adult_Beyond_Door_of_Time:connect_one_way("Adult Sheik at Temple", function() return Has("forest_medallion") end)
Adult_Beyond_Door_of_Time:connect_one_way("Adult Master Sword Pedestal")

Child_Beyond_Door_of_Time:connect_one_way_entrance("Child Time Change", Adult_Temple_of_Time)
Adult_Beyond_Door_of_Time:connect_one_way_entrance("Adult Time Change", Child_Temple_of_Time)


-- {
--     "region_name": "ToT Entrance",
--     "scene": "ToT Entrance",
--     "hint": "MARKET",
--     "locations": {
--         "ToT Gossip Stone (Left)": "True",
--         "ToT Gossip Stone (Left-Center)": "True",
--         "ToT Gossip Stone (Right)": "True",
--         "ToT Gossip Stone (Right-Center)": "True",
--         "Gossip Stone Fairy": "
--             (Has("can_summon_gossip_fairy_without_suns") or (is_adult and can_play(Suns_Song))) and
--             Has_bottle"
--     },
--     "exits": {
--         "Market": "True",
--         "Temple of Time": "True"
--     }
-- },
-- {
--     "region_name": "Temple of Time",
--     "scene": "Temple of Time",
--     "hint": "TEMPLE_OF_TIME",
--     "locations": {
--         "ToT Light Arrows Cutscene": "is_adult and Can_trigger_lacs",
--         "ToT Child Altar Hint": "is_child",
--         "ToT Adult Altar Hint": "is_adult"
--     },
--     "exits": {
--         "ToT Entrance": "True",
--         "Beyond Door of Time": "can_play(Song_of_Time) or Has("open_door_of_time")"
--     }
-- },
-- {
--     "region_name": "Beyond Door of Time",
--     "scene": "Temple of Time",
--     "hint": "TEMPLE_OF_TIME",
--     "locations": {
--         "Sheik at Temple": "Forest_Medallion and is_adult",
--         "Master Sword Pedestal": "True"
--     },
--     "exits": {
--         "Temple of Time": "True"
--     }
-- },