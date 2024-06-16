Child_ToT_Entrance = OOTLocation.new("Child_ToT_Entrance")
Child_Temple_of_Time = OOTLocation.new("Child_Temple_of_Time")
Child_Beyond_Door_of_Time = OOTLocation.new("Child_Beyond_Door_of_Time")

Adult_ToT_Entrance = OOTLocation.new("Adult_ToT_Entrance")
Adult_Temple_of_Time = OOTLocation.new("Adult_Temple_of_Time")
Adult_Beyond_Door_of_Time = OOTLocation.new("Adult_Beyond_Door_of_Time")


Child_ToT_Entrance:connect_one_way("ToT Gossip Stone (Left)")
Child_ToT_Entrance:connect_one_way("ToT Gossip Stone (Left-Center)")
Child_ToT_Entrance:connect_one_way("ToT Gossip Stone (Right)")
Child_ToT_Entrance:connect_one_way("ToT Gossip Stone (Right-Center)")
Child_ToT_Entrance:connect_one_way("Gossip Stone Fairy", function()
    return All(
        can_summon_gossip_fairy_without_suns,
        Has("Bottle")
    )
end)

Adult_ToT_Entrance:connect_one_way("ToT Gossip Stone (Left)")
Adult_ToT_Entrance:connect_one_way("ToT Gossip Stone (Left-Center)")
Adult_ToT_Entrance:connect_one_way("ToT Gossip Stone (Right)")
Adult_ToT_Entrance:connect_one_way("ToT Gossip Stone (Right-Center)")
Adult_ToT_Entrance:connect_one_way("Gossip Stone Fairy", function()
    return All(
        Any(
            can_summon_gossip_fairy_without_suns,
            CanPlay("SunsSong")
        ),
        Has("Bottle")
    )
end)

Child_ToT_Entrance:connect_one_way_entrance("Child Market", Child_Market)
Child_ToT_Entrance:connect_one_way_entrance("Child Temple of Time", Child_Temple_of_Time)

Adult_ToT_Entrance:connect_one_way_entrance("Adult Market", Adult_Market)
Adult_ToT_Entrance:connect_one_way_entrance("Adult Temple of Time", Adult_Temple_of_Time)


Child_Temple_of_Time:connect_one_way("ToT Child Altar Hint")

Adult_Temple_of_Time:connect_one_way("ToT Light Arrows Cutscene", function() return can_trigger_lacs end)
Adult_Temple_of_Time:connect_one_way("ToT Adult Altar Hint")

Child_Temple_of_Time:connect_one_way_entrance("Child ToT Entrance", Child_ToT_Entrance)
Child_Temple_of_Time:connect_one_way_entrance("Child Beyond Door of Time", Child_Beyond_Door_of_Time, function()
    return Any(
        CanPlay("SongOfTime"),
        open_door_of_time
    )
end)

Adult_Temple_of_Time:connect_one_way_entrance("Adult ToT Entrance", Adult_ToT_Entrance)
Adult_Temple_of_Time:connect_one_way_entrance("Adult Beyond Door of Time", Adult_Beyond_Door_of_Time, function()
    return Any(
        CanPlay("SongOfTime"),
        open_door_of_time
    )
end)


Child_Beyond_Door_of_Time:connect_one_way("Child Master Sword Pedestal")

Adult_Beyond_Door_of_Time:connect_one_way("Adult Sheik at Temple", function() return Has("ForestMedallion") end)
Adult_Beyond_Door_of_Time:connect_one_way("Adult Master Sword Pedestal")

Child_Beyond_Door_of_Time:connect_one_way_entrance("Child Temple of Time", Child_Temple_of_Time)
Adult_Beyond_Door_of_Time:connect_one_way_entrance("Adult Temple of Time", Adult_Temple_of_Time)


