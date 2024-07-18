-- Child_Shadow_Temple_Entryway = OOTLocation.new("Child_Shadow_Temple_Entryway")
-- Child_Shadow_Temple_Beginning = OOTLocation.new("Child_Shadow_Temple_Beginning")
-- Child_Shadow_Temple_First_Beamos = OOTLocation.new("Child_Shadow_Temple_First_Beamos")
-- Child_Shadow_Temple_Huge_Pit = OOTLocation.new("Child_Shadow_Temple_Huge_Pit")
-- Child_Shadow_Temple_Invisible_Spikes = OOTLocation.new("Child_Shadow_Temple_Invisible_Spikes")
-- Child_Shadow_Temple_Wind_Tunnel = OOTLocation.new("Child_Shadow_Temple_Wind_Tunnel")
-- Child_Shadow_Temple_After_Wind = OOTLocation.new("Child_Shadow_Temple_After_Wind")
-- Child_Shadow_Temple_Boat = OOTLocation.new("Child_Shadow_Temple_Boat")
-- Child_Shadow_Temple_Beyond_Boat = OOTLocation.new("Child_Shadow_Temple_Beyond_Boat")
-- Child_Shadow_Temple_3_Spinning_Pots_Rupees = OOTLocation.new("Child_Shadow_Temple_3_Spinning_Pots_Rupees")
-- Child_Shadow_Temple_Beyond_Boat_Scarecrow = OOTLocation.new("Child_Shadow_Temple_Beyond_Boat_Scarecrow")
-- Child_Shadow_Temple_Beyond_Boat_SoT_Block = OOTLocation.new("Child_Shadow_Temple_Beyond_Boat_SoT_Block")
-- Child_Shadow_Temple_Before_Boss = OOTLocation.new("Child_Shadow_Temple_Before_Boss")

-- Adult_Shadow_Temple_Entryway = OOTLocation.new("Adult_Shadow_Temple_Entryway")
-- Adult_Shadow_Temple_Beginning = OOTLocation.new("Adult_Shadow_Temple_Beginning")
-- Adult_Shadow_Temple_First_Beamos = OOTLocation.new("Adult_Shadow_Temple_First_Beamos")
-- Adult_Shadow_Temple_Huge_Pit = OOTLocation.new("Adult_Shadow_Temple_Huge_Pit")
-- Adult_Shadow_Temple_Invisible_Spikes = OOTLocation.new("Adult_Shadow_Temple_Invisible_Spikes")
-- Adult_Shadow_Temple_Wind_Tunnel = OOTLocation.new("Adult_Shadow_Temple_Wind_Tunnel")
-- Adult_Shadow_Temple_After_Wind = OOTLocation.new("Adult_Shadow_Temple_After_Wind")
-- Adult_Shadow_Temple_Boat = OOTLocation.new("Adult_Shadow_Temple_Boat")
-- Adult_Shadow_Temple_Beyond_Boat = OOTLocation.new("Adult_Shadow_Temple_Beyond_Boat")
-- Adult_Shadow_Temple_3_Spinning_Pots_Rupees = OOTLocation.new("Adult_Shadow_Temple_3_Spinning_Pots_Rupees")
-- Adult_Shadow_Temple_Beyond_Boat_Scarecrow = OOTLocation.new("Adult_Shadow_Temple_Beyond_Boat_Scarecrow")
-- Adult_Shadow_Temple_Beyond_Boat_SoT_Block = OOTLocation.new("Adult_Shadow_Temple_Beyond_Boat_SoT_Block")
-- Adult_Shadow_Temple_Before_Boss = OOTLocation.new("Adult_Shadow_Temple_Before_Boss")

-- Child_Shadow_Temple_Entryway:connect_one_way()
-- Adult_Shadow_Temple_Entryway:connect_one_way()

Child_Shadow_Temple_Entryway:connect_one_way_entrance("Child Graveyard Warp Pad Region", Child_Graveyard_Warp_Pad_Region)
Child_Shadow_Temple_Entryway:connect_one_way_entrance("Child Shadow Temple Beginning", Child_Shadow_Temple_Beginning, function()
    return All(
        Any(
            Has("logic_lens_shadow"),
            Can_use("LensofTruth", "child")
        ),
        Any(
            Can_use("HoverBoots", "child"),
            Can_use("Hookshot", "child")
        )
    )
end)

Adult_Shadow_Temple_Entryway:connect_one_way_entrance("Adult Graveyard Warp Pad Region", Adult_Graveyard_Warp_Pad_Region)
Adult_Shadow_Temple_Entryway:connect_one_way_entrance("Adult Shadow Temple Beginning", Adult_Shadow_Temple_Beginning, function()
    return All(
        Any(
            Has("logic_lens_shadow"),
            Can_use("LensofTruth", "adult")
        ),
        Any(
            Can_use("HoverBoots", "adult"),
            Can_use("Hookshot", "adult")
        )
    )
end)


Child_Shadow_Temple_Beginning:connect_one_way("Child Shadow Temple Map Chest")
Child_Shadow_Temple_Beginning:connect_one_way("Child Shadow Temple Hover Boots Chest")
Child_Shadow_Temple_Beginning:connect_one_way("Child Shadow Temple Whispering Walls Front Pot 1")
Child_Shadow_Temple_Beginning:connect_one_way("Child Shadow Temple Whispering Walls Front Pot 2")
Child_Shadow_Temple_Beginning:connect_one_way("Child Shadow Temple Whispering Walls Left Pot 1")
Child_Shadow_Temple_Beginning:connect_one_way("Child Shadow Temple Whispering Walls Left Pot 2")
Child_Shadow_Temple_Beginning:connect_one_way("Child Shadow Temple Whispering Walls Left Pot 3")
Child_Shadow_Temple_Beginning:connect_one_way("Child Shadow Temple Whispering Walls Flying Pot")
Child_Shadow_Temple_Beginning:connect_one_way("Child Shadow Temple Whispering Walls Near Dead Hand Pot")
Child_Shadow_Temple_Beginning:connect_one_way("Child Shadow Temple Map Chest Room Pot 1")
Child_Shadow_Temple_Beginning:connect_one_way("Child Shadow Temple Map Chest Room Pot 2")
Child_Shadow_Temple_Beginning:connect_one_way("Child Nut Pot")

Adult_Shadow_Temple_Beginning:connect_one_way("Adult Shadow Temple Map Chest")
Adult_Shadow_Temple_Beginning:connect_one_way("Adult Shadow Temple Hover Boots Chest")
Adult_Shadow_Temple_Beginning:connect_one_way("Adult Shadow Temple Whispering Walls Front Pot 1")
Adult_Shadow_Temple_Beginning:connect_one_way("Adult Shadow Temple Whispering Walls Front Pot 2")
Adult_Shadow_Temple_Beginning:connect_one_way("Adult Shadow Temple Whispering Walls Left Pot 1")
Adult_Shadow_Temple_Beginning:connect_one_way("Adult Shadow Temple Whispering Walls Left Pot 2")
Adult_Shadow_Temple_Beginning:connect_one_way("Adult Shadow Temple Whispering Walls Left Pot 3")
Adult_Shadow_Temple_Beginning:connect_one_way("Adult Shadow Temple Whispering Walls Flying Pot")
Adult_Shadow_Temple_Beginning:connect_one_way("Adult Shadow Temple Whispering Walls Near Dead Hand Pot")
Adult_Shadow_Temple_Beginning:connect_one_way("Adult Shadow Temple Map Chest Room Pot 1")
Adult_Shadow_Temple_Beginning:connect_one_way("Adult Shadow Temple Map Chest Room Pot 2")
Adult_Shadow_Temple_Beginning:connect_one_way("Adult Nut Pot")


Child_Shadow_Temple_Beginning:connect_one_way_entrance("Child Shadow Temple First Beamos", Child_Shadow_Temple_First_Beamos, function() return Can_use("HoverBoots", "child") end)
Adult_Shadow_Temple_Beginning:connect_one_way_entrance("Adult Shadow Temple First Beamos", Adult_Shadow_Temple_First_Beamos, function() return Can_use("HoverBoots", "adult") end)

Child_Shadow_Temple_First_Beamos:connect_one_way("Child Shadow Temple Compass Chest")
Child_Shadow_Temple_First_Beamos:connect_one_way("Child Shadow Temple Early Silver Rupee Chest")

Adult_Shadow_Temple_First_Beamos:connect_one_way("Adult Shadow Temple Compass Chest")
Adult_Shadow_Temple_First_Beamos:connect_one_way("Adult Shadow Temple Early Silver Rupee Chest")

Child_Shadow_Temple_First_Beamos:connect_one_way_entrance("Child Shadow Temple Huge Pit", Child_Shadow_Temple_Huge_Pit, function(keys) 
    return All(
        Has_explosives(),
        Any(
            All(
                Has("SmallKey(ShadowTemple)", 1),
                not Has("shadow_temple_shortcuts")
            ),
            Has("SmallKey(ShadowTemple)", 5),
            All(
                Has("SmallKey(ShadowTemple)", 4),
                Any(
                    Has("logic_lens_shadow_platform"),
                    Can_use("LensofTruth", "child")
                )
            )
        )
    ), keys+1
end)
Child_Shadow_Temple_First_Beamos:connect_one_way_entrance("Child Shadow Temple Boat", Child_Shadow_Temple_Boat, function() return Has("shadow_temple_shortcuts") end)

Adult_Shadow_Temple_First_Beamos:connect_one_way_entrance("Adult Shadow Temple Huge Pit", Adult_Shadow_Temple_Huge_Pit, function(keys) 
    return All(
        Has_explosives(),
        Any(
            All(
                Has("SmallKey(ShadowTemple)", 1),
                not Has("shadow_temple_shortcuts")
            ),
            Has("SmallKey(ShadowTemple)", 5),
            All(
                Has("SmallKey(ShadowTemple)", 4),
                Any(
                    Has("logic_lens_shadow_platform"),
                    Can_use("LensofTruth", "adult")
                )
            )
        )
    ), keys+1
end)
Adult_Shadow_Temple_First_Beamos:connect_one_way_entrance("Adult Shadow Temple Boat", Adult_Shadow_Temple_Boat, function() return Has("shadow_temple_shortcuts") end)


Child_Shadow_Temple_Huge_Pit:connect_one_way("Child Shadow Temple Invisible Blades Visible Chest")
Child_Shadow_Temple_Huge_Pit:connect_one_way("Child Shadow Temple Invisible Blades Invisible Chest")
Child_Shadow_Temple_Huge_Pit:connect_one_way("Child Shadow Temple Falling Spikes Lower Chest")
Child_Shadow_Temple_Huge_Pit:connect_one_way("Child Shadow Temple Falling Spikes Upper Chest", function() 
    return Any(
        Has("logic_shadow_umbrella"),
        Can_use("GoronBracelet", "child")
    ) 
end)
Child_Shadow_Temple_Huge_Pit:connect_one_way("Child Shadow Temple Falling Spikes Switch Chest", function() 
    return Any(
        Has("logic_shadow_umbrella"),
        Can_use("GoronBracelet", "child")
    ) 
end)
Child_Shadow_Temple_Huge_Pit:connect_one_way("Child Shadow Temple Invisible Blades Recovery Heart 1", function() return Can_play("SongofTime") end)
Child_Shadow_Temple_Huge_Pit:connect_one_way("Child Shadow Temple Invisible Blades Recovery Heart 2", function() return Can_play("SongofTime") end)
Child_Shadow_Temple_Huge_Pit:connect_one_way("Child Shadow Temple Falling Spikes Lower Pot 1")
Child_Shadow_Temple_Huge_Pit:connect_one_way("Child Shadow Temple Falling Spikes Lower Pot 2")
Child_Shadow_Temple_Huge_Pit:connect_one_way("Child Shadow Temple Falling Spikes Upper Pot 1", function() 
    return Any(
        Has("logic_shadow_umbrella"),
        Can_use("GoronBracelet", "child")
    ) 
end)
Child_Shadow_Temple_Huge_Pit:connect_one_way("Child Shadow Temple Falling Spikes Upper Pot 2", function() 
    return Any(
        Has("logic_shadow_umbrella"),
        Can_use("GoronBracelet", "child")
    ) 
end)
Child_Shadow_Temple_Huge_Pit:connect_one_way("Child Shadow Temple GS Invisible Blades Room")
Child_Shadow_Temple_Huge_Pit:connect_one_way("Child Shadow Temple GS Falling Spikes Room", function() 
    return Any(
        Has("logic_shadow_umbrella_gs"),
        Can_use("Hookshot", "child")
    ) 
end)

Adult_Shadow_Temple_Huge_Pit:connect_one_way("Adult Shadow Temple Invisible Blades Visible Chest")
Adult_Shadow_Temple_Huge_Pit:connect_one_way("Adult Shadow Temple Invisible Blades Invisible Chest")
Adult_Shadow_Temple_Huge_Pit:connect_one_way("Adult Shadow Temple Falling Spikes Lower Chest")
Adult_Shadow_Temple_Huge_Pit:connect_one_way("Adult Shadow Temple Falling Spikes Upper Chest", function() 
    return Any(
        Has("logic_shadow_umbrella"),
        Can_use("GoronBracelet", "adult")
    ) 
end)
Adult_Shadow_Temple_Huge_Pit:connect_one_way("Adult Shadow Temple Falling Spikes Switch Chest", function() 
    return Any(
        Has("logic_shadow_umbrella"),
        Can_use("GoronBracelet", "adult")
    ) 
end)
Adult_Shadow_Temple_Huge_Pit:connect_one_way("Adult Shadow Temple Invisible Blades Recovery Heart 1", function() return Can_play("SongofTime") end)
Adult_Shadow_Temple_Huge_Pit:connect_one_way("Adult Shadow Temple Invisible Blades Recovery Heart 2", function() return Can_play("SongofTime") end)
Adult_Shadow_Temple_Huge_Pit:connect_one_way("Adult Shadow Temple Falling Spikes Lower Pot 1")
Adult_Shadow_Temple_Huge_Pit:connect_one_way("Adult Shadow Temple Falling Spikes Lower Pot 2")
Adult_Shadow_Temple_Huge_Pit:connect_one_way("Adult Shadow Temple Falling Spikes Upper Pot 1", function() 
    return Any(
        Has("logic_shadow_umbrella"),
        Can_use("GoronBracelet", "adult")
    ) 
end)
Adult_Shadow_Temple_Huge_Pit:connect_one_way("Adult Shadow Temple Falling Spikes Upper Pot 2", function() 
    return Any(
        Has("logic_shadow_umbrella"),
        Can_use("GoronBracelet", "adult")
    ) 
end)
Adult_Shadow_Temple_Huge_Pit:connect_one_way("Adult Shadow Temple GS Invisible Blades Room")
Adult_Shadow_Temple_Huge_Pit:connect_one_way("Adult Shadow Temple GS Falling Spikes Room", function() 
    return Any(
        Has("logic_shadow_umbrella_gs"),
        Can_use("Hookshot", "adult")
    ) 
end)


Child_Shadow_Temple_Huge_Pit:connect_one_way_entrance("Child Shadow Temple Invisible Spikes", Child_Shadow_Temple_Invisible_Spikes, function(keys)
    return All(
        Has("SmallKey(ShadowTemple)", 2),
        Any(
            Has("logic_lens_shadow_platform"),
            Can_use("LensofTruth", "child")
        )
    ), keys+1
end)
Adult_Shadow_Temple_Huge_Pit:connect_one_way_entrance("Adult Shadow Temple Invisible Spikes", Adult_Shadow_Temple_Invisible_Spikes, function(keys)
    return All(
        Has("SmallKey(ShadowTemple)", 2),
        Any(
            Has("logic_lens_shadow_platform"),
            Can_use("LensofTruth", "adult")
        )
    ), keys+1
end)

Child_Shadow_Temple_Invisible_Spikes:connect_one_way("Child Shadow Temple Invisible Spikes Chest")
Child_Shadow_Temple_Invisible_Spikes:connect_one_way("Child Shadow Temple Freestanding Key", function() 
    return All(
        Can_use("Hookshot", "child"),
        Any(
            Bombs(),
            Can_use("GoronBracelet", "child"),
            All(
                Has("logic_shadow_freestanding_key"),
                Has_bombchus()
            )
        )
    ) 
end)
Child_Shadow_Temple_Invisible_Spikes:connect_one_way("Child Shadow Temple GS Single Giant Pot", function() return Can_use("Hookshot", "child") end)

Adult_Shadow_Temple_Invisible_Spikes:connect_one_way("Adult Shadow Temple Invisible Spikes Chest")
Adult_Shadow_Temple_Invisible_Spikes:connect_one_way("Adult Shadow Temple Freestanding Key", function() 
    return All(
        Can_use("Hookshot", "adult"),
        Any(
            Bombs(),
            Can_use("GoronBracelet", "adult"),
            All(
                Has("logic_shadow_freestanding_key"),
                Has_bombchus()
            )
        )
    ) 
end)
Adult_Shadow_Temple_Invisible_Spikes:connect_one_way("Adult Shadow Temple GS Single Giant Pot", function() return Can_use("Hookshot", "adult") end)


Child_Shadow_Temple_Invisible_Spikes:connect_one_way_entrance("Child Shadow Temple Wind Tunnel", Child_Shadow_Temple_Wind_Tunnel, function(keys) 
    return All(
        Can_use("Hookshot", "child"),
        Has("SmallKey(ShadowTemple)", 3)
    ), keys+1
end)
Child_Shadow_Temple_Invisible_Spikes:connect_one_way_entrance("Child Shadow Temple Huge Pit", Child_Shadow_Temple_Huge_Pit, function() 
    return Any(
        Has("logic_lens_shadow_platform"),
        Can_use("LensofTruth", "child")
    ) 
end)

Adult_Shadow_Temple_Invisible_Spikes:connect_one_way_entrance("Adult Shadow Temple Wind Tunnel", Adult_Shadow_Temple_Wind_Tunnel, function(keys) 
    return All(
        Can_use("Hookshot", "adult"),
        Has("SmallKey(ShadowTemple)", 3)
    ), keys+1
end)
Adult_Shadow_Temple_Invisible_Spikes:connect_one_way_entrance("Adult Shadow Temple Huge Pit", Adult_Shadow_Temple_Huge_Pit, function() 
    return Any(
        Has("logic_lens_shadow_platform"),
        Can_use("LensofTruth", "adult")
    ) 
end)


Child_Shadow_Temple_Wind_Tunnel:connect_one_way("Child Shadow Temple Wind Hint Chest")
Adult_Shadow_Temple_Wind_Tunnel:connect_one_way("Adult Shadow Temple Wind Hint Chest")

Child_Shadow_Temple_Wind_Tunnel:connect_one_way_entrance("Child Shadow Temple After Wind", Child_Shadow_Temple_After_Wind)
Child_Shadow_Temple_Wind_Tunnel:connect_one_way_entrance("Child Shadow Temple Invisible Spikes", Child_Shadow_Temple_Invisible_Spikes, function() return Can_use("Hookshot", "child") end)

Adult_Shadow_Temple_Wind_Tunnel:connect_one_way_entrance("Adult Shadow Temple After Wind", Adult_Shadow_Temple_After_Wind)
Adult_Shadow_Temple_Wind_Tunnel:connect_one_way_entrance("Adult Shadow Temple Invisible Spikes", Adult_Shadow_Temple_Invisible_Spikes, function() return Can_use("Hookshot", "adult") end)


Child_Shadow_Temple_After_Wind:connect_one_way("Child Shadow Temple After Wind Enemy Chest")
Child_Shadow_Temple_After_Wind:connect_one_way("Child Shadow Temple After Wind Hidden Chest", function() return Has_explosives() end)
Child_Shadow_Temple_After_Wind:connect_one_way("Child Shadow Temple After Wind Pot 1")
Child_Shadow_Temple_After_Wind:connect_one_way("Child Shadow Temple After Wind Pot 2")
Child_Shadow_Temple_After_Wind:connect_one_way("Child Shadow Temple After Wind Flying Pot 1")
Child_Shadow_Temple_After_Wind:connect_one_way("Child Shadow Temple After Wind Flying Pot 2")

Adult_Shadow_Temple_After_Wind:connect_one_way("Adult Shadow Temple After Wind Enemy Chest")
Adult_Shadow_Temple_After_Wind:connect_one_way("Adult Shadow Temple After Wind Hidden Chest", function() return Has_explosives() end)
Adult_Shadow_Temple_After_Wind:connect_one_way("Adult Shadow Temple After Wind Pot 1")
Adult_Shadow_Temple_After_Wind:connect_one_way("Adult Shadow Temple After Wind Pot 2")
Adult_Shadow_Temple_After_Wind:connect_one_way("Adult Shadow Temple After Wind Flying Pot 1")
Adult_Shadow_Temple_After_Wind:connect_one_way("Adult Shadow Temple After Wind Flying Pot 2")


Child_Shadow_Temple_After_Wind:connect_one_way_entrance("Child Shadow Temple Boat", Child_Shadow_Temple_Boat, function(keys) return Has("SmallKey(ShadowTemple)", 4), keys+1 end)
Child_Shadow_Temple_After_Wind:connect_one_way_entrance("Child Shadow Temple Wind Tunnel", Child_Shadow_Temple_Wind_Tunnel)

Adult_Shadow_Temple_After_Wind:connect_one_way_entrance("Adult Shadow Temple Boat", Adult_Shadow_Temple_Boat, function(keys) return Has("SmallKey(ShadowTemple)", 4), keys+1 end)
Adult_Shadow_Temple_After_Wind:connect_one_way_entrance("Adult Shadow Temple Wind Tunnel", Adult_Shadow_Temple_Wind_Tunnel)


Child_Shadow_Temple_Boat:connect_one_way("Child Shadow Temple Before Boat Recovery Heart 1", function() return Distant_Scarecrow("child") end)
Child_Shadow_Temple_Boat:connect_one_way("Child Shadow Temple Before Boat Recovery Heart 2", function() return Distant_Scarecrow("child") end)
Child_Shadow_Temple_Boat:connect_one_way("Child Shadow Temple GS Near Ship", function() return Can_use("Longshot", "child") end)

Adult_Shadow_Temple_Boat:connect_one_way("Adult Shadow Temple Before Boat Recovery Heart 1", function() return Distant_Scarecrow("adult") end)
Adult_Shadow_Temple_Boat:connect_one_way("Adult Shadow Temple Before Boat Recovery Heart 2", function() return Distant_Scarecrow("adult") end)
Adult_Shadow_Temple_Boat:connect_one_way("Adult Shadow Temple GS Near Ship", function() return Can_use("Longshot", "adult") end)

Child_Shadow_Temple_Boat:connect_one_way_entrance("Child Shadow Temple After Wind", Child_Shadow_Temple_After_Wind, function(keys) return Has("SmallKey(ShadowTemple)", 4), keys+1 end)
Child_Shadow_Temple_Boat:connect_one_way_entrance("Child Shadow Temple Beyond Boat", Child_Shadow_Temple_Beyond_Boat, function() return Can_play("ZeldasLullaby") end)

Adult_Shadow_Temple_Boat:connect_one_way_entrance("Adult Shadow Temple After Wind", Adult_Shadow_Temple_After_Wind, function(keys) return Has("SmallKey(ShadowTemple)", 4), keys+1 end)
Adult_Shadow_Temple_Boat:connect_one_way_entrance("Adult Shadow Temple Beyond Boat", Adult_Shadow_Temple_Beyond_Boat, function() return Can_play("ZeldasLullaby") end)


Child_Shadow_Temple_Beyond_Boat:connect_one_way("Child Shadow Temple Invisible Floormaster Chest")
Child_Shadow_Temple_Beyond_Boat:connect_one_way("Child Shadow Temple Spike Walls Left Chest", function() return Can_use("DinsFire", "child") end)
Child_Shadow_Temple_Beyond_Boat:connect_one_way("Child Shadow Temple Boss Key Chest", function() return Can_use("DinsFire", "child") end)
Child_Shadow_Temple_Beyond_Boat:connect_one_way("Child Shadow Temple After Boat Pot")
Child_Shadow_Temple_Beyond_Boat:connect_one_way("Child Shadow Temple Invisible Floormaster Pot 1")
Child_Shadow_Temple_Beyond_Boat:connect_one_way("Child Shadow Temple Invisible Floormaster Pot 2")
Child_Shadow_Temple_Beyond_Boat:connect_one_way("Child Shadow Temple Spike Walls Pot")
Child_Shadow_Temple_Beyond_Boat:connect_one_way("Child Shadow Temple GS Triple Giant Pot")

Adult_Shadow_Temple_Beyond_Boat:connect_one_way("Adult Shadow Temple Invisible Floormaster Chest")
Adult_Shadow_Temple_Beyond_Boat:connect_one_way("Adult Shadow Temple Spike Walls Left Chest", function() return Can_use("DinsFire", "adult") end)
Adult_Shadow_Temple_Beyond_Boat:connect_one_way("Adult Shadow Temple Boss Key Chest", function() return Can_use("DinsFire", "adult") end)
Adult_Shadow_Temple_Beyond_Boat:connect_one_way("Adult Shadow Temple After Boat Pot")
Adult_Shadow_Temple_Beyond_Boat:connect_one_way("Adult Shadow Temple Invisible Floormaster Pot 1")
Adult_Shadow_Temple_Beyond_Boat:connect_one_way("Adult Shadow Temple Invisible Floormaster Pot 2")
Adult_Shadow_Temple_Beyond_Boat:connect_one_way("Adult Shadow Temple Spike Walls Pot")
Adult_Shadow_Temple_Beyond_Boat:connect_one_way("Adult Shadow Temple GS Triple Giant Pot")


Child_Shadow_Temple_Beyond_Boat:connect_one_way_entrance("Child Shadow Temple 3 Spinning Pots Rupees", Child_Shadow_Temple_3_Spinning_Pots_Rupees, function() 
    return Any(
        Bombs(),
        Can_use("GoronBracelet", "child")
    ) 
end)
Child_Shadow_Temple_Beyond_Boat:connect_one_way_entrance("Child Shadow Temple Beyond Boat Scarecrow", Child_Shadow_Temple_Beyond_Boat_Scarecrow, function() return Distant_Scarecrow("child") end)
Child_Shadow_Temple_Beyond_Boat:connect_one_way_entrance("Child Shadow Temple Before Boss", Child_Shadow_Temple_Before_Boss, function() 
    return Any(
        Can_use("Bow", "child"),
        All(
            Has("logic_shadow_statue"),
            Has_bombchus()
        ),
        Has("shadow_temple_shortcuts")
    ) 
end)

Adult_Shadow_Temple_Beyond_Boat:connect_one_way_entrance("Adult Shadow Temple 3 Spinning Pots Rupees", Adult_Shadow_Temple_3_Spinning_Pots_Rupees, function() 
    return Any(
        Bombs(),
        Can_use("GoronBracelet", "adult")
    ) 
end)
Adult_Shadow_Temple_Beyond_Boat:connect_one_way_entrance("Adult Shadow Temple Beyond Boat Scarecrow", Adult_Shadow_Temple_Beyond_Boat_Scarecrow, function() return Distant_Scarecrow("adult") end)
Adult_Shadow_Temple_Beyond_Boat:connect_one_way_entrance("Adult Shadow Temple Before Boss", Adult_Shadow_Temple_Before_Boss, function() 
    return Any(
        Can_use("Bow", "adult"),
        All(
            Has("logic_shadow_statue"),
            Has_bombchus()
        ),
        Has("shadow_temple_shortcuts")
    ) 
end)

Child_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Child Shadow Temple 3 Spinning Pots Rupee 1")
Child_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Child Shadow Temple 3 Spinning Pots Rupee 2")
Child_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Child Shadow Temple 3 Spinning Pots Rupee 3")
Child_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Child Shadow Temple 3 Spinning Pots Rupee 4")
Child_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Child Shadow Temple 3 Spinning Pots Rupee 5")
Child_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Child Shadow Temple 3 Spinning Pots Rupee 6")
Child_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Child Shadow Temple 3 Spinning Pots Rupee 7")
Child_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Child Shadow Temple 3 Spinning Pots Rupee 8")
Child_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Child Shadow Temple 3 Spinning Pots Rupee 9")

Adult_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Adult Shadow Temple 3 Spinning Pots Rupee 1")
Adult_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Adult Shadow Temple 3 Spinning Pots Rupee 2")
Adult_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Adult Shadow Temple 3 Spinning Pots Rupee 3")
Adult_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Adult Shadow Temple 3 Spinning Pots Rupee 4")
Adult_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Adult Shadow Temple 3 Spinning Pots Rupee 5")
Adult_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Adult Shadow Temple 3 Spinning Pots Rupee 6")
Adult_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Adult Shadow Temple 3 Spinning Pots Rupee 7")
Adult_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Adult Shadow Temple 3 Spinning Pots Rupee 8")
Adult_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way("Adult Shadow Temple 3 Spinning Pots Rupee 9")


-- Child_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way_entrance()
-- Adult_Shadow_Temple_3_Spinning_Pots_Rupees:connect_one_way_entrance()

Child_Shadow_Temple_Beyond_Boat_Scarecrow:connect_one_way("Child Shadow Temple After Boat Upper Recovery Heart 1")
Child_Shadow_Temple_Beyond_Boat_Scarecrow:connect_one_way("Child Shadow Temple After Boat Upper Recovery Heart 2")

Adult_Shadow_Temple_Beyond_Boat_Scarecrow:connect_one_way("Adult Shadow Temple After Boat Upper Recovery Heart 1")
Adult_Shadow_Temple_Beyond_Boat_Scarecrow:connect_one_way("Adult Shadow Temple After Boat Upper Recovery Heart 2")


Child_Shadow_Temple_Beyond_Boat_Scarecrow:connect_one_way_entrance("Child Shadow Temple Beyond Boat SoT Block", Child_Shadow_Temple_Beyond_Boat_SoT_Block)
Adult_Shadow_Temple_Beyond_Boat_Scarecrow:connect_one_way_entrance("Adult Shadow Temple Beyond Boat SoT Block", Adult_Shadow_Temple_Beyond_Boat_SoT_Block)

Child_Shadow_Temple_Beyond_Boat_SoT_Block:connect_one_way("Child Shadow Temple After Boat Lower Recovery Heart")
Adult_Shadow_Temple_Beyond_Boat_SoT_Block:connect_one_way("Adult Shadow Temple After Boat Lower Recovery Heart")

Child_Shadow_Temple_Beyond_Boat_SoT_Block:connect_one_way_entrance("Child Shadow Temple Beyond Boat Scarecrow", Child_Shadow_Temple_Beyond_Boat_Scarecrow, function() return Scarecrow("child") end)
Child_Shadow_Temple_Beyond_Boat_SoT_Block:connect_one_way_entrance("Child Shadow Temple Before Boss", Child_Shadow_Temple_Before_Boss)

Adult_Shadow_Temple_Beyond_Boat_SoT_Block:connect_one_way_entrance("Adult Shadow Temple Beyond Boat Scarecrow", Adult_Shadow_Temple_Beyond_Boat_Scarecrow, function() return Scarecrow("adult") end)
Adult_Shadow_Temple_Beyond_Boat_SoT_Block:connect_one_way_entrance("Adult Shadow Temple Before Boss", Adult_Shadow_Temple_Before_Boss)


Child_Shadow_Temple_Before_Boss:connect_one_way("Child Shadow Temple Near Boss Pot 1")
Child_Shadow_Temple_Before_Boss:connect_one_way("Child Shadow Temple Near Boss Pot 2")

Adult_Shadow_Temple_Before_Boss:connect_one_way("Adult Shadow Temple Near Boss Pot 1")
Adult_Shadow_Temple_Before_Boss:connect_one_way("Adult Shadow Temple Near Boss Pot 2")


Child_Shadow_Temple_Before_Boss:connect_one_way_entrance("Child Shadow Temple Beyond Boat SoT Block", Child_Shadow_Temple_Beyond_Boat_SoT_Block, function() return Can_play("SongofTime") end)
Child_Shadow_Temple_Before_Boss:connect_one_way_entrance("Child Shadow Temple Boss Door", Child_Shadow_Temple_Boss_Door, function(keys) return Has("SmallKey(ShadowTemple)", 5), keys+1 end)

Adult_Shadow_Temple_Before_Boss:connect_one_way_entrance("Adult Shadow Temple Beyond Boat SoT Block", Adult_Shadow_Temple_Beyond_Boat_SoT_Block, function() return Can_play("SongofTime") end)
Adult_Shadow_Temple_Before_Boss:connect_one_way_entrance("Adult Shadow Temple Boss Door", Adult_Shadow_Temple_Boss_Door, function(keys) return Has("SmallKey(ShadowTemple)", 5), keys+1 end)









-- --    {
--     "region_name": "Shadow Temple Entryway",
--     "dungeon": "Shadow Temple",
--     "exits": {
--         "Graveyard Warp Pad Region": "True",
--         "Shadow Temple Beginning": "
--             (logic_lens_shadow or can_use(Lens_of_Truth)) and
--             (can_use(Hover_Boots) or can_use(Hookshot))"
--     }
-- },
-- {
--     "region_name": "Shadow Temple Beginning",
--     "dungeon": "Shadow Temple",
--     "locations": {
--         "Shadow Temple Map Chest": "True",
--         "Shadow Temple Hover Boots Chest": "True",
--         "Shadow Temple Whispering Walls Front Pot 1": "True",
--         "Shadow Temple Whispering Walls Front Pot 2": "True",
--         "Shadow Temple Whispering Walls Left Pot 1": "True",
--         "Shadow Temple Whispering Walls Left Pot 2": "True",
--         "Shadow Temple Whispering Walls Left Pot 3": "True",
--         "Shadow Temple Whispering Walls Flying Pot": "True",
--         "Shadow Temple Whispering Walls Near Dead Hand Pot": "True",
--         "Shadow Temple Map Chest Room Pot 1": "True",
--         "Shadow Temple Map Chest Room Pot 2": "True",
--         "Nut Pot": "True"
--     },
--     "exits": {
--         "Shadow Temple First Beamos": "Hover_Boots"
--     }
-- },
-- {
--     "region_name": "Shadow Temple First Beamos",
--     "dungeon": "Shadow Temple",
--     "locations": {
--         "Shadow Temple Compass Chest": "True",
--         "Shadow Temple Early Silver Rupee Chest": "True"
--     },
--     "exits": {
--         # If the shortcut is open, reverse shadow becomes an option, so we need to check for 4 keys with Lens/trick
--         # or all 5 keys. If the moving platform lens trick is off, forward shadow is the only way to access
--         # the huge pit checks without Lens of Truth. Getting to the invisible blades room in reverse uses the falling
--         # elevator near the Beamos.
--         # Also, we only need to check shortcut keys here and at boat, since key requirements are always the same.
--         "Shadow Temple Huge Pit": "
--             has_explosives and
--                 (((Small_Key_Shadow_Temple, 1) and not shadow_temple_shortcuts) or
--                 (Small_Key_Shadow_Temple, 5) or
--                 ((Small_Key_Shadow_Temple, 4) and (logic_lens_shadow_platform or can_use(Lens_of_Truth))))",
--         "Shadow Temple Boat": "shadow_temple_shortcuts"
--     }
-- },
-- {
--     "region_name": "Shadow Temple Huge Pit",
--     "dungeon": "Shadow Temple",
--     "locations": {
--         "Shadow Temple Invisible Blades Visible Chest": "True",
--         "Shadow Temple Invisible Blades Invisible Chest": "True",
--         "Shadow Temple Falling Spikes Lower Chest": "True",
--         "Shadow Temple Falling Spikes Upper Chest": "logic_shadow_umbrella or Progressive_Strength_Upgrade",
--         "Shadow Temple Falling Spikes Switch Chest": "logic_shadow_umbrella or Progressive_Strength_Upgrade",
--         "Shadow Temple Invisible Blades Recovery Heart 1": "can_play(Song_of_Time)",
--         "Shadow Temple Invisible Blades Recovery Heart 2": "can_play(Song_of_Time)",
--         "Shadow Temple Falling Spikes Lower Pot 1": "True",
--         "Shadow Temple Falling Spikes Lower Pot 2": "True",
--         "Shadow Temple Falling Spikes Upper Pot 1": "logic_shadow_umbrella or Progressive_Strength_Upgrade",
--         "Shadow Temple Falling Spikes Upper Pot 2": "logic_shadow_umbrella or Progressive_Strength_Upgrade",
--         "Shadow Temple GS Invisible Blades Room": "True",
--         "Shadow Temple GS Falling Spikes Room": "logic_shadow_umbrella_gs or Hookshot"
--     },
--     "exits": {
--         "Shadow Temple Invisible Spikes": "
--             (Small_Key_Shadow_Temple, 2) and (logic_lens_shadow_platform or can_use(Lens_of_Truth))"
--     }
-- },
-- {
--     "region_name": "Shadow Temple Invisible Spikes",
--     "dungeon": "Shadow Temple",
--     "locations": {
--         "Shadow Temple Invisible Spikes Chest": "True",
--         "Shadow Temple Freestanding Key": "
--             Hookshot and
--             (Bombs or Progressive_Strength_Upgrade or
--                 (logic_shadow_freestanding_key and has_bombchus))",
--         "Shadow Temple GS Single Giant Pot": "Hookshot"
--     },
--     "exits": {
--         "Shadow Temple Wind Tunnel": "Hookshot and (Small_Key_Shadow_Temple, 3)",
--         "Shadow Temple Huge Pit": "logic_lens_shadow_platform or can_use(Lens_of_Truth)"
--     }
-- },
-- {
--     "region_name": "Shadow Temple Wind Tunnel",
--     "dungeon": "Shadow Temple",
--     "locations": {
--         "Shadow Temple Wind Hint Chest": "True"
--     },
--     "exits": {
--         "Shadow Temple After Wind": "True",
--         # Reverse Shadow assumes 4 keys at both ends, so no need to check keys here
--         "Shadow Temple Invisible Spikes": "Hookshot"
--     }
-- },
-- {
--     "region_name": "Shadow Temple After Wind",
--     "dungeon": "Shadow Temple",
--     "locations": {
--         "Shadow Temple After Wind Enemy Chest": "True",
--         "Shadow Temple After Wind Hidden Chest": "has_explosives",
--         "Shadow Temple After Wind Pot 1": "True",
--         "Shadow Temple After Wind Pot 2": "True",
--         "Shadow Temple After Wind Flying Pot 1": "True",
--         "Shadow Temple After Wind Flying Pot 2": "True"
--     },
--     "exits": {
--         "Shadow Temple Boat": "(Small_Key_Shadow_Temple, 4)",
--         "Shadow Temple Wind Tunnel": "True"
--     }
-- },
-- {
--     "region_name": "Shadow Temple Boat",
--     "dungeon": "Shadow Temple",
--     "locations": {
--         "Shadow Temple Before Boat Recovery Heart 1": "can_use(Distant_Scarecrow)",
--         "Shadow Temple Before Boat Recovery Heart 2": "can_use(Distant_Scarecrow)",
--         "Shadow Temple GS Near Ship": "Longshot"
--     },
--     "exits": {
--         "Shadow Temple After Wind": "(Small_Key_Shadow_Temple, 4)",
--         "Shadow Temple Beyond Boat": "can_play(Zeldas_Lullaby)"
--     }
-- },
-- {
--     "region_name": "Shadow Temple Beyond Boat",
--     "dungeon": "Shadow Temple",
--     "locations": {
--         "Shadow Temple Invisible Floormaster Chest": "True",
--         "Shadow Temple Spike Walls Left Chest": "can_use(Dins_Fire)",
--         "Shadow Temple Boss Key Chest": "can_use(Dins_Fire)",
--         "Shadow Temple After Boat Pot": "True",
--         "Shadow Temple Invisible Floormaster Pot 1": "True",
--         "Shadow Temple Invisible Floormaster Pot 2": "True",
--         "Shadow Temple Spike Walls Pot": "True",
--         "Shadow Temple GS Triple Giant Pot": "True"
--     },
--     "exits": {
--         "Shadow Temple 3 Spinning Pots Rupees": "Bombs or Progressive_Strength_Upgrade",
--         "Shadow Temple Beyond Boat Scarecrow": "can_use(Distant_Scarecrow)",
--         "Shadow Temple Before Boss": "
--             Bow or (logic_shadow_statue and has_bombchus) or shadow_temple_shortcuts"
--     }
-- },
-- {
--     "region_name": "Shadow Temple 3 Spinning Pots Rupees",
--     "dungeon": "Shadow Temple",
--     "locations": {
--         "Shadow Temple 3 Spinning Pots Rupee 1": "True",
--         "Shadow Temple 3 Spinning Pots Rupee 2": "True",
--         "Shadow Temple 3 Spinning Pots Rupee 3": "True",
--         "Shadow Temple 3 Spinning Pots Rupee 4": "True",
--         "Shadow Temple 3 Spinning Pots Rupee 5": "True",
--         "Shadow Temple 3 Spinning Pots Rupee 6": "True",
--         "Shadow Temple 3 Spinning Pots Rupee 7": "True",
--         "Shadow Temple 3 Spinning Pots Rupee 8": "True",
--         "Shadow Temple 3 Spinning Pots Rupee 9": "True"
--     }
-- },
-- {
--     "region_name": "Shadow Temple Beyond Boat Scarecrow",
--     "dungeon": "Shadow Temple",
--     "locations": {
--         "Shadow Temple After Boat Upper Recovery Heart 1": "True",
--         "Shadow Temple After Boat Upper Recovery Heart 2": "True"
--     },
--     "exits": {
--         "Shadow Temple Beyond Boat SoT Block": "True"
--     }
-- },
-- {
--     "region_name": "Shadow Temple Beyond Boat SoT Block",
--     "dungeon": "Shadow Temple",
--     "locations": {
--         "Shadow Temple After Boat Lower Recovery Heart": "True"
--     },
--     "exits": {
--         "Shadow Temple Beyond Boat Scarecrow": "can_use(Scarecrow)",
--         "Shadow Temple Before Boss": "True"
--     }
-- },
-- {
--     "region_name": "Shadow Temple Before Boss",
--     "dungeon": "Shadow Temple",
--     "locations": {
--         "Shadow Temple Near Boss Pot 1": "True",
--         "Shadow Temple Near Boss Pot 2": "True"
--     },
--     "exits": {
--         "Shadow Temple Beyond Boat SoT Block": "can_play(Song_of_Time)",
--         "Shadow Temple Boss Door": "(Small_Key_Shadow_Temple, 5)"
--     }
-- }