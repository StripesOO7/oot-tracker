Child_Kokiri_Forest = OOTLocation.new("Child_Kokiri_Forest")
Adult_Kokiri_Forest = OOTLocation.new("Adult_Kokiri_Forest")

Child_Links_House = OOTLocation.new("Child_Links_House")
Child_Midos_House = OOTLocation.new("Child_Midos_House")
Child_Sarias_House = OOTLocation.new("Child_Sarias_House")
Child_House_Of_Twins = OOTLocation.new("Child_House_Of_Twins")
Child_Know_It_All_House = OOTLocation.new("Child_Know_It_All_House")
Child_Kokiri_Shop = OOTLocation.new("Child_Kokiri_Shop")
Child_Outside_Deku_Tree = OOTLocation.new("Child_Outside_Deku_Tree")
Child_KF_Storms_Grotto = OOTLocation.new("Child_KF_Storms_Grotto")

Adult_Links_House = OOTLocation.new("Adult_Links_House")
Adult_Midos_House = OOTLocation.new("Adult_Midos_House")
Adult_Sarias_House = OOTLocation.new("Adult_Sarias_House")
Adult_House_Of_Twins = OOTLocation.new("Adult_House_Of_Twins")
Adult_Know_It_All_House = OOTLocation.new("Adult_Know_It_All_House")
Adult_Kokiri_Shop = OOTLocation.new("Adult_Kokiri_Shop")
Adult_Outside_Deku_Tree = OOTLocation.new("Adult_Outside_Deku_Tree")
Adult_KF_Storms_Grotto = OOTLocation.new("Adult_KF_Storms_Grotto")

Child_Kokiri_Forest:connect_one_way_entrance("Child Links House" , Child_Links_House)
Child_Kokiri_Forest:connect_one_way_entrance("Child Midos House" , Child_Midos_House)
Child_Kokiri_Forest:connect_one_way_entrance("Child Sarias House" , Child_Sarias_House)
Child_Kokiri_Forest:connect_one_way_entrance("Child House of Twins" , Child_House_Of_Twins)
Child_Kokiri_Forest:connect_one_way_entrance("Child Know it all House" , Child_Know_It_All_House)
Child_Kokiri_Forest:connect_one_way_entrance("Child Kokiri Shop" , Child_Kokiri_Shop)
Child_Kokiri_Forest:connect_one_way_entrance("Child Kokiri Storms Grotto" , Child_KF_Storms_Grotto, function() return CanOpenStormsGrotto() end)
-- Child_Kokiri_Forest:connect_one_way_entrance("Child Lost Woods" , Child_lost_woods)
Child_Kokiri_Forest:connect_one_way_entrance("Child Outside Deku Tree" , Child_Outside_Deku_Tree)
Child_Kokiri_Forest:connect_one_way_entrance("Child LW Bridge From Forest" , Child_LW_Bridge_From_Forest, function() return CanLeaveForest() end)
-- Child_Kokiri_Forest:connect_one_way_entrance(Child_sacret_forest_maedow, function()
--     return Any(
--         All(
--             Has("KokiriSword"),
--             Has("DekuShield")
--         ),
--         OpenForest()
--     )
-- end)



Child_Kokiri_Forest:connect_one_way("Child KF Grass Near Ramp Green Rupee 1")
Child_Kokiri_Forest:connect_one_way("Child KF Grass Near Ramp Green Rupee 2")
Child_Kokiri_Forest:connect_one_way("Child KF Grass Near Midos Green Rupee 1")
Child_Kokiri_Forest:connect_one_way("Child KF Grass Near Midos Green Rupee 2")
Child_Kokiri_Forest:connect_one_way("Child KF Behind Midos Blue Rupee")
Child_Kokiri_Forest:connect_one_way("Child KF Top of Sarias Recovery Heart 1")
Child_Kokiri_Forest:connect_one_way("Child KF Top of Sarias Recovery Heart 2")
Child_Kokiri_Forest:connect_one_way("Child KF Top of Sarias Recovery Heart 3")
Child_Kokiri_Forest:connect_one_way("Child KF End of Bridge Blue Rupee")
Child_Kokiri_Forest:connect_one_way("Child KF Boulder Maze Blue Rupee 1")
Child_Kokiri_Forest:connect_one_way("Child KF Boulder Maze Blue Rupee 2")
Child_Kokiri_Forest:connect_one_way("Child KF Kokiri Sword Chest")
Child_Kokiri_Forest:connect_one_way("Child KF GS Know It All House")
Child_Kokiri_Forest:connect_one_way("Child KF GS Bean Patch")
Child_Kokiri_Forest:connect_one_way("Child Bean Plant Fairy")
-- Child_Kokiri_Forest:connect_one_way()

Adult_Kokiri_Forest:connect_one_way_entrance("Adult Links House", Adult_Links_House)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult Midos House", Adult_Midos_House)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult Sarias House", Adult_Sarias_House)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult House of Twins", Adult_House_Of_Twins)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult Know it all House", Adult_Know_It_All_House)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult Kokiri Shop", Adult_Kokiri_Shop)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult Kokiri Storms Grotto", Adult_KF_Storms_Grotto, function() return CanOpenStormsGrotto() end)
-- Adult_Kokiri_Forest:connect_one_way_entrance("Adult Lost Woods", Adult_lost_woods)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult Outside Deku Tree", Adult_Outside_Deku_Tree)
Adult_Kokiri_Forest:connect_one_way_entrance("Adult LW Bridge From Forest", Adult_LW_Bridge_From_Forest, function() return CanLeaveForest() end)
-- Adult_Kokiri_Forest:connect_one_way_entrance(Adult_sacret_forest_maedow)


Adult_Kokiri_Forest:connect_one_way("KF Bean Platform Green Rupee 1", function()
    return Any(
        Has("HoverBoots"),
        Has("MagicBean")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Bean Platform Green Rupee 2", function()
    return Any(
        Has("HoverBoots"),
        Has("MagicBean")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Bean Platform Green Rupee 3", function()
    return Any(
        Has("HoverBoots"),
        Has("MagicBean")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Bean Platform Green Rupee 4", function()
    return Any(
        Has("HoverBoots"),
        Has("MagicBean")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Bean Platform Green Rupee 5", function()
    return Any(
        Has("HoverBoots"),
        Has("MagicBean")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Bean Platform Green Rupee 6", function()
    return Any(
        Has("HoverBoots"),
        Has("MagicBean")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF Bean Platform Red Rupee", function()
    return Any(
        Has("HoverBoots"),
        Has("MagicBean")
    )
end)
Adult_Kokiri_Forest:connect_one_way("Adult KF GS House of Twins")
-- Adult_Kokiri_Forest:connect_one_way()

Child_Outside_Deku_Tree:connect_one_way_entrance("Child Deku Tree Loby", Child_Deku_Tree_Lobby)
Child_Outside_Deku_Tree:connect_one_way_entrance("Child Kokiri Forest", Child_Kokiri_Forest, function()
    return Any(
        openForest("open"),
        ShowedMido()
    )
end)

-- Adult_Outside_Deku_Tree:connect_one_way_entrance("Adult ", Adult, function()
--     return All(
--         Any(
--             openForest("open"),
--             ShowedMido()
--         ),
--         dungeonshuffle("on")
--     )
-- end) -- dungeon shuffle
Adult_Outside_Deku_Tree:connect_one_way_entrance("Adult Kokiri Forest", Adult_Kokiri_Forest)

Child_Links_House:connect_one_way("Adult KF Links House Pot")
Adult_Links_House:connect_one_way("Adult KF Links House Cow", function ()
    return All(
        CanPlay("EponasSong"),
        Has("Links Cow")
    )
end)


Child_Midos_House:connect_one_way("Child KF Midos Top Left Chest")
Child_Midos_House:connect_one_way("Child KF Midos Top Right Chest")
Child_Midos_House:connect_one_way("Child KF Midos Bottom Left Chest")
Child_Midos_House:connect_one_way("Child KF Midos Bottom Right Chest")
Adult_Midos_House:connect_one_way("Adult KF Midos Top Left Chest")
Adult_Midos_House:connect_one_way("Adult KF Midos Top Right Chest")
Adult_Midos_House:connect_one_way("Adult KF Midos Bottom Left Chest")
Adult_Midos_House:connect_one_way("Adult KF Midos Bottom Right Chest")


Child_Sarias_House:connect_one_way("Child KF Sarias House Recovery Heart 1")
Child_Sarias_House:connect_one_way("Child KF Sarias House Recovery Heart 2")
Child_Sarias_House:connect_one_way("Child KF Sarias House Recovery Heart 3")
Child_Sarias_House:connect_one_way("Child KF Sarias House Recovery Heart 4")
Adult_Sarias_House:connect_one_way("Adult KF Sarias House Recovery Heart 1")
Adult_Sarias_House:connect_one_way("Adult KF Sarias House Recovery Heart 2")
Adult_Sarias_House:connect_one_way("Adult KF Sarias House Recovery Heart 3")
Adult_Sarias_House:connect_one_way("Adult KF Sarias House Recovery Heart 4")

Child_House_Of_Twins:connect_one_way("Child KF House of Twins Pot 1")
Child_House_Of_Twins:connect_one_way("Child KF House of Twins Pot 2")
Adult_House_Of_Twins:connect_one_way("Adult KF House of Twins Pot 1")
Adult_House_Of_Twins:connect_one_way("Adult KF House of Twins Pot 2")

Child_Know_It_All_House:connect_one_way("Child KF Know it All House Pot 1")
Child_Know_It_All_House:connect_one_way("Child KF Know it All House Pot 2")
Adult_Know_It_All_House:connect_one_way("Adult KF Know it All House Pot 1")
Adult_Know_It_All_House:connect_one_way("Adult KF Know it All House Pot 2")

Child_Kokiri_Shop:connect_one_way("Child KF Shop Blue Rupee")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 1")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 2")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 3")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 4")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 5")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 6")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 7")
Child_Kokiri_Shop:connect_one_way("Child KF Shop Item 8")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Blue Rupee")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 1")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 2")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 3")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 4")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 5")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 6")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 7")
Adult_Kokiri_Shop:connect_one_way("Adult KF Shop Item 8")

Child_KF_Storms_Grotto:connect_one_way("Child KF Storms Grotto Chest")
Child_KF_Storms_Grotto:connect_one_way("Child KF Storms Grotto Beehive 1", function() return CanBreakLowerBeehive() end)
Child_KF_Storms_Grotto:connect_one_way("Child KF Storms Grotto Beehive 2", function() return CanBreakLowerBeehive() end)
Child_KF_Storms_Grotto:connect_one_way("Child KF Storms Grotto Gossip Stone")
Adult_KF_Storms_Grotto:connect_one_way("Adult KF Storms Grotto Chest")
Adult_KF_Storms_Grotto:connect_one_way("Adult KF Storms Grotto Beehive 1", function() return CanBreakLowerBeehive() end)
Adult_KF_Storms_Grotto:connect_one_way("Adult KF Storms Grotto Beehive 2", function() return CanBreakLowerBeehive() end)
Adult_KF_Storms_Grotto:connect_one_way("Adult KF Storms Grotto Gossip Stone")

Child_Midos_House:connect_one_way_entrance("Kokiri Forest", Adult_Kokiri_Forest)
Child_Sarias_House:connect_one_way_entrance("Kokiri Forest", Adult_Kokiri_Forest)
Child_House_Of_Twins:connect_one_way_entrance("Kokiri Forest", Adult_Kokiri_Forest)
Child_Know_It_All_House:connect_one_way_entrance("Kokiri Forest", Adult_Kokiri_Forest)
Child_Kokiri_Shop:connect_one_way_entrance("Kokiri Forest", Adult_Kokiri_Forest)
Child_KF_Storms_Grotto:connect_one_way_entrance("Kokiri Forest", Adult_Kokiri_Forest)


Adult_Midos_House:connect_one_way_entrance("Kokiri Forest", Adult_Kokiri_Forest)
Adult_Sarias_House:connect_one_way_entrance("Kokiri Forest", Adult_Kokiri_Forest)
Adult_House_Of_Twins:connect_one_way_entrance("Kokiri Forest", Adult_Kokiri_Forest)
Adult_Know_It_All_House:connect_one_way_entrance("Kokiri Forest", Adult_Kokiri_Forest)
Adult_Kokiri_Shop:connect_one_way_entrance("Kokiri Forest", Adult_Kokiri_Forest)
Adult_KF_Storms_Grotto:connect_one_way_entrance("Kokiri Forest", Adult_Kokiri_Forest)


-- logic left to do

"KF GS Know It All House": "
    is_child and can_Child_attack and at_night and
    (had_night_start or can_leave_forest or can_play(Suns_Song))",
"KF GS Bean Patch": "
    can_plant_bugs and can_Child_attack",
"KF GS House of Twins": "
    is_Adult and at_night and
    (Hookshot or (logic_Adult_Kokiri_gs and Hover_Boots))",
"KF Gossip Stone": "True",
"Gossip Stone Fairy": "can_summon_gossip_fairy_without_suns and has_bottle",
"Bean Plant Fairy": "is_child and can_plant_bean and can_play(Song_of_Storms) and has_bottle"
},


"exits": {
"KF Outside Deku Tree": "is_Adult or open_forest == 'open' or 'Showed Mido Sword & Shield'",