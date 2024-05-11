Child_Sacret_Forest_Meadow_Entryway = OOTLocation.new("Child_Sacret_Forest_Meadow_Entryway")
Child_Sacret_Forest_Meadow = OOTLocation.new("Child_Sacret_Forest_Meadow")
Child_SFM_Wolfos_Grotto = OOTLocation.new("Child_SFM_Wolfos_Grotto")
Child_SFM_Fairy_Grotto = OOTLocation.new("Child_SFM_Fairy_Grotto")
Child_SFM_Storms_Grotto = OOTLocation.new("Child_SFM_Storms_Grotto")

Adult_Sacret_Forest_Meadow_Entryway = OOTLocation.new("Adult_Sacret_Forest_Meadow_Entryway")
Adult_Sacret_Forest_Meadow = OOTLocation.new("Adult_Sacret_Forest_Meadow")
Adult_SFM_Wolfos_Grotto = OOTLocation.new("Adult_SFM_Wolfos_Grotto")
Adult_SFM_Forest_Temple_Entrance_Ledge = OOTLocation.new("Adult_SFM_Forest_Temple_Entrance_Ledge")
Adult_SFM_Fairy_Grotto = OOTLocation.new("Adult_SFM_Fairy_Grotto")
Adult_SFM_Storms_Grotto = OOTLocation.new("Adult_SFM_Storms_Grotto")

Child_Sacret_Forest_Meadow_Entryway:connect_one_way_entrance("Child LW Beyond Mido", Child_LW_Beyond_Mido)
Child_Sacret_Forest_Meadow_Entryway:connect_one_way_entrance("Child Sacret Forest Meadow", Child_Sacret_Forest_Meadow, function()
    return Any(
        Has("Slingshot"),
        Has("DekuSticks"),
        Has("KokiriSword"),
        CanUse("DinsFire")
    )
end)
Child_Sacret_Forest_Meadow_Entryway:connect_one_way_entrance("Child SFM Wolfos Grotto", Child_SFM_Wolfos_Grotto, function() return CanOpenBombGrotto() end)

Adult_Sacret_Forest_Meadow_Entryway:connect_one_way_entrance("Adult LW Beyond Mido", Adult_LW_Beyond_Mido)
Adult_Sacret_Forest_Meadow_Entryway:connect_one_way_entrance("Adult Sacret Forest Meadow", Adult_Sacret_Forest_Meadow)
Adult_Sacret_Forest_Meadow_Entryway:connect_one_way_entrance("Adult SFM Wolfos Grotto", Adult_SFM_Wolfos_Grotto, function() return CanOpenBombGrotto() end)


Child_Sacret_Forest_Meadow:connect_one_way("Child Song from Saria", function() return Has("ZeldasLetter") end)
Child_Sacret_Forest_Meadow:connect_one_way("Child SFM Maze Gossip Stone (Lower)")
Child_Sacret_Forest_Meadow:connect_one_way("Child SFM Maze Gossip Stone (Upper)")
Child_Sacret_Forest_Meadow:connect_one_way("Child SFM Saria Gossip Stone")

Adult_Sacret_Forest_Meadow:connect_one_way("Adult Sheik in Forest")
Adult_Sacret_Forest_Meadow:connect_one_way("Adult SFM GS", function() return Has("Hookshot") end) -- At Night
Adult_Sacret_Forest_Meadow:connect_one_way("Adult SFM Maze Gossip Stone (Lower)")
Adult_Sacret_Forest_Meadow:connect_one_way("Adult SFM Maze Gossip Stone (Upper)")
Adult_Sacret_Forest_Meadow:connect_one_way("Adult SFM Saria Gossip Stone")


Child_Sacret_Forest_Meadow:connect_one_way_entrance("Child SFM Entryway", Child_Sacret_Forest_Meadow_Entryway)
Child_Sacret_Forest_Meadow:connect_one_way_entrance("Child SFM Fairy Grotto", Child_SFM_Fairy_Grotto)
Child_Sacret_Forest_Meadow:connect_one_way_entrance("Child SFM Storms Grotto", Child_SFM_Storms_Grotto, function() return CanOpenStormsGrott() end)

Adult_Sacret_Forest_Meadow:connect_one_way_entrance("Adult SFM Entryway", Adult_Sacret_Forest_Meadow_Entryway)
Adult_Sacret_Forest_Meadow:connect_one_way_entrance("SFM Forest Temple Entrance Ledge", Adult_SFM_Forest_Temple_Entrance_Ledge, function() return Has("Hookshot") end)
Adult_Sacret_Forest_Meadow:connect_one_way_entrance("Adult SFM Fairy Grotto", Adult_SFM_Fairy_Grotto)
Adult_Sacret_Forest_Meadow:connect_one_way_entrance("Adult SFM Storms Grotto", Adult_SFM_Storms_Grotto, function() return CanOpenStormsGrott() end)

Adult_SFM_Forest_Temple_Entrance_Ledge:connect_one_way_entrance("Adult Sacret Forest Meadow", Adult_Sacret_Forest_Meadow)
Adult_SFM_Forest_Temple_Entrance_Ledge:connect_one_way_entrance("Adult Forest Temple Lobby", Adult_Forest_Temple_Lobby)