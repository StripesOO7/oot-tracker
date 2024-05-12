Child_Haunted_Wasteland = OOTLocation.new("Child_Haunted_Wastelands")
Child_Wastelands_Near_Fortress = OOTLocation.new("Child_Wastelands_Near_Fortress")
Child_Wasteland_Near_Crate = OOTLocation.new("Child_Wasteland_Near_Crate")
Child_Wasteland_Near_Colossus = OOTLocation.new("Child_Wasteland_Near_Colossus")

Adult_Haunted_Wasteland = OOTLocation.new("Adult_Haunted_Wastelands")
Adult_Wastelands_Near_Fortress = OOTLocation.new("Adult_Wastelands_Near_Fortress")
Adult_Wasteland_Near_Crate = OOTLocation.new("Adult_Wasteland_Near_Crate")
Adult_Wasteland_Near_Colossus = OOTLocation.new("Adult_Wasteland_Near_Colossus")

Child_Wastelands_Near_Fortress:connect_one_way("Child Wasteland Crate Before Quicksand", function() return CanBreakCrates() end)
Adult_Wastelands_Near_Fortress:connect_one_way("AdultWasteland Crate Before Quicksand", function() return CanBreakCrates() end)

Child_Wastelands_Near_Fortress:connect_one_way_entrance("Child GF Outside Gate", Child_GF_Outside_Gate)
Child_Wastelands_Near_Fortress:connect_one_way_entrance("Child Haunted Wasteland", Child_Haunted_Wasteland, function() return logic_wasteland_crossing end)
Adult_Wastelands_Near_Fortress:connect_one_way_entrance("Adult GF Outside Gate", Adult_GF_Outside_Gate)
Adult_Wastelands_Near_Fortress:connect_one_way_entrance("Adult Haunted Wasteland", Adult_Haunted_Wasteland, function()
    return Any(
        Has("HoverBoots"),
        Has("Longshot"),
        logic_wasteland_crossing
    )
end)

Child_Haunted_Wasteland:connect_one_way("Child Wasteland Chest", function() return Has("Firesource") end)
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Bombchu Salesman", function()
    return Any(
        Has("ProgressiveWallet"),
        can_jumpslash
    )
end)
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Near GS Pot 1")
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Near GS Pot 2")
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Near GS Pot 3")
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Crate After Quicksand 1", function() return CanBreakCrates() end)
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Crate After Quicksand 2", function() return CanBreakCrates() end)
Child_Haunted_Wasteland:connect_one_way("Child Wasteland Crate After Quicksand 3", function() return CanBreakCrates() end)
Child_Haunted_Wasteland:connect_one_way("Child Fairy Pot", function() return Has("Bottle") end)
Child_Haunted_Wasteland:connect_one_way("Child Nut Pot")

Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Chest", function() return Has("Firesource") end)
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Bombchu Salesman", function()
    return Any(
        Has("ProgressiveWallet"),
        can_jumpslash
    )
end)
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Near GS Pot 1")
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Near GS Pot 2")
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Near GS Pot 3")
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Crate After Quicksand 1", function() return CanBreakCrates() end)
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Crate After Quicksand 2", function() return CanBreakCrates() end)
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland Crate After Quicksand 3", function() return CanBreakCrates() end)
Adult_Haunted_Wasteland:connect_one_way("Adult Wasteland GS", function()
    return Any(
        Has("Hookshot"),
        Has("Boomerang")
    )
end)
Adult_Haunted_Wasteland:connect_one_way("Adult Fairy Pot", function() return Has("Bottle") end)
Adult_Haunted_Wasteland:connect_one_way("Adult Nut Pot")

Child_Haunted_Wasteland:connect_one_way_entrance("Child Wasteland Near Crate", Child_Wasteland_Near_Crate, function()
    return Any(
        logic_lens_wasteland,
        Has("LensOfTruth")
    )
end)
Child_Haunted_Wasteland:connect_one_way_entrance("Child Wasteland Near Fortress", Child_Wastelands_Near_Fortress, function() return logic_wasteland_crossing end)

Adult_Haunted_Wasteland:connect_one_way_entrance("Adult Wasteland Near Crate", Adult_Wasteland_Near_Crate, function()
    return Any(
        logic_lens_wasteland,
        Has("LensOfTruth")
    )
end)
Adult_Haunted_Wasteland:connect_one_way_entrance("Adult Wasteland Near Fortress", Adult_Wastelands_Near_Fortress, function()
    return Any(
        Has("HoverBoots"),
        Has("Longshot"),
        logic_wasteland_crossing
    )
end)

Child_Wasteland_Near_Crate:connect_one_way("Child Wasteland Crate Near Colossus", function() return CanBreakCrates() end)

Adult_Wasteland_Near_Crate:connect_one_way("Adult Wasteland Crate Near Colossus", function() return CanBreakCrates() end)

Child_Wasteland_Near_Crate:connect_one_way_entrance("Child Haunted Wasteland", Child_Haunted_Wasteland)
Child_Wasteland_Near_Crate:connect_one_way_entrance("Child Wasteland Near Colossus", Child_Wasteland_Near_Colossus)

Adult_Wasteland_Near_Crate:connect_one_way_entrance("Adult Haunted Wasteland", Adult_Haunted_Wasteland)
Adult_Wasteland_Near_Crate:connect_one_way_entrance("Adult Wasteland Near Colossus", Adult_Wasteland_Near_Colossus)


Child_Wasteland_Near_Colossus:connect_one_way_entrance("Child Desert Colossus", Child_Dessert_Colossus)
Child_Wasteland_Near_Colossus:connect_one_way_entrance("Child Wasteland Near Crate", Child_Wasteland_Near_Crate, function() return logic_reverse_wasteland() end)

Adult_Wasteland_Near_Colossus:connect_one_way_entrance("Adult Desert Colossus", Adult_Dessert_Colossus)
Adult_Wasteland_Near_Colossus:connect_one_way_entrance("Adult Wasteland Near Crate", Adult_Wasteland_Near_Crate, function() return logic_reverse_wasteland() end)

