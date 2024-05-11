Child_Hyrule_Fields = OOTLocation.new("Child_Hyrule_Fields")
Child_HF_Southeast_Grotto = OOTLocation.new("Child_HF_Southeast_Grotto")
Child_HF_Open_Grotto = OOTLocation.new("Child_HF_Open_Grotto")
Child_HF_Inside_Fence_Grotto = OOTLocation.new("Child_HF_Inside_Fence_Grotto")
Child_HF_Cow_Grotto = OOTLocation.new("Child_HF_Cow_Grotto")
Child_HF_Near_Market_Grotto = OOTLocation.new("Child_HF_Near_Market_Grotto")
Child_HF_Fairy_Grotto = OOTLocation.new("Child_HF_Fairy_Grotto")
Child_HF_Near_Kak_Grotto = OOTLocation.new("Child_HF_Near_Kak_Grotto")
Child_HF_Tektite_Grotto = OOTLocation.new("Child_HF_Tektite_Grotto")

Adult_Hyrule_Fields = OOTLocation.new("Adult_Hyrule_Fields")
Adult_HF_Southeast_Grotto = OOTLocation.new("Adult_HF_Southeast_Grotto")
Adult_HF_Open_Grotto = OOTLocation.new("Adult_HF_Open_Grotto")
Adult_HF_Inside_Fence_Grotto = OOTLocation.new("Adult_HF_Inside_Fence_Grotto")
Adult_HF_Cow_Grotto = OOTLocation.new("Adult_HF_Cow_Grotto")
Adult_HF_Near_Market_Grotto = OOTLocation.new("Adult_HF_Near_Market_Grotto")
Adult_HF_Fairy_Grotto = OOTLocation.new("Adult_HF_Fairy_Grotto")
Adult_HF_Near_Kak_Grotto = OOTLocation.new("Adult_HF_Near_Kak_Grotto")
Adult_HF_Tektite_Grotto = OOTLocation.new("Adult_HF_Tektite_Grotto")

Child_Hyrule_Fields:connect_one_way("HF Ocarina of Time Item", function()
    return All(
        Has("GoronsRuby"),
        Has("KokirisEmerald"),
        Has("ZorasSapphire")
    )
end)
Child_Hyrule_Fields:connect_one_way("Song from Ocarina of Time", function()
    return All(
        Has("GoronsRuby"),
        Has("KokirisEmerald"),
        Has("ZorasSapphire")
    )
end)

Adult_Hyrule_Fields:connect_one_way("Big Poe Kill", function()
    return All(
        Has("Bottle"),
        Has("Bow"),
        canRideEpona()
    )
end)


Child_Hyrule_Fields:connect_one_way_entrance("Child LW Bridge", Child_LW_Bridge)
Child_Hyrule_Fields:connect_one_way_entrance("Child Lake Hylia", Child_Lake_Hylia)
Child_Hyrule_Fields:connect_one_way_entrance("Child Gerudo Valley", Child_Gerudo_Valley)
Child_Hyrule_Fields:connect_one_way_entrance("Child Market Entrance", Child_Market_Entrance)
Child_Hyrule_Fields:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)
Child_Hyrule_Fields:connect_one_way_entrance("Child ZR Front", Child_ZR_Front)
Child_Hyrule_Fields:connect_one_way_entrance("Child Lon Lon Ranch", Child_Lon_Lon_Ranch)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Southeast Grotto", Child_HF_Southeast_Grotto, function() return CanBlastOrSmash() end)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Open Grotto", Child_HF_Open_Grotto)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Inside Fence Grotto", Child_HF_Inside_Fence_Grotto, function() return CanOpenBombGrotto() end)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Cow Grotto", Child_HF_Cow_Grotto, function() return CanOpenBombGrotto() end)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Near Market Grotto", Child_HF_Near_Market_Grotto, function() return CanBlastOrSmash() end)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Fairy Grotto", Child_HF_Fairy_Grotto, function() return CanBlastOrSmash() end)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Near Kak Grotto", Child_HF_Near_Kak_Grotto, function() return CanOpenBombGrotto() end)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Tektite Grotto", Child_HF_Tektite_Grotto, function() return CanOpenBombGrotto() end)

Adult_Hyrule_Fields:connect_one_way_entrance("Adult LW Bridge", Adult_LW_Bridge)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult Lake Hylia", Adult_Lake_Hylia)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult Gerudo Valley", Adult_Gerudo_Valley)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult Market Entrance", Adult_Market_Entrance)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult ZR Front", Adult_ZR_Front)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult Lon Lon Ranch", Adult_Lon_Lon_Ranch)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Southeast Grotto", Adult_HF_Southeast_Grotto, function() return CanBlastOrSmash() end)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Open Grotto", Adult_HF_Open_Grotto)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Inside Fence Grotto", Adult_HF_Inside_Fence_Grotto, function() return CanOpenBombGrotto() end)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Cow Grotto", Adult_HF_Cow_Grotto, function()
    return Any(
        Has("MegatonHammer"),
        CanBlastOrSmash()
    )
end)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Near Market Grotto", Adult_HF_Near_Market_Grotto, function() return CanBlastOrSmash() end)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Fairy Grotto", Adult_HF_Fairy_Grotto, function() return CanBlastOrSmash() end)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Near Kak Grotto", Adult_HF_Near_Kak_Grotto, function() return CanOpenBombGrotto() end)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Tektite Grotto", Adult_HF_Tektite_Grotto, function() return CanOpenBombGrotto() end)

