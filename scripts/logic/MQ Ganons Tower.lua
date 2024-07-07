-- Child_Ganons_Castle_Lobby = OOTLocation.new("Child_Ganons_Castle_Lobby")
-- Child_Ganons_Castle_Forest_Trial = OOTLocation.new("Child_Ganons_Castle_Forest_Trial")
-- Child_Ganons_Castle_Forest_Trial_Ending = OOTLocation.new("Child_Ganons_Castle_Forest_Trial_Ending")
-- Child_Ganons_Castle_Water_Trial = OOTLocation.new("Child_Ganons_Castle_Water_Trial")
-- Child_Ganons_Castle_Water_Trial_Ending = OOTLocation.new("Child_Ganons_Castle_Water_Trial_Ending")
-- Child_Ganons_Castle_Shadow_Trial = OOTLocation.new("Child_Ganons_Castle_Shadow_Trial")
-- Child_Ganons_Castle_Shadow_Trial_First_Gap = OOTLocation.new("Child_Ganons_Castle_Shadow_Trial_First_Gap")
-- Child_Ganons_Castle_Shadow_Trial_Second_Gap = OOTLocation.new("Child_Ganons_Castle_Shadow_Trial_Second_Gap")
-- Child_Ganons_Castle_Shadow_Trial_Ending = OOTLocation.new("Child_Ganons_Castle_Shadow_Trial_Ending")
-- Child_Ganons_Castle_Fire_Trial = OOTLocation.new("Child_Ganons_Castle_Fire_Trial")
-- Child_Ganons_Castle_Fire_Trial_Ending = OOTLocation.new("Child_Ganons_Castle_Fire_Trial_Ending")
-- Child_Ganons_Castle_Light_Trial = OOTLocation.new("Child_Ganons_Castle_Light_Trial")
-- Child_Ganons_Castle_Light_Trial_Boulder_Room = OOTLocation.new("Child_Ganons_Castle_Light_Trial_Boulder_Room")
-- Child_Ganons_Castle_Light_Trial_Ending = OOTLocation.new("Child_Ganons_Castle_Light_Trial_Ending")
-- Child_Ganons_Castle_Spirit_Trial = OOTLocation.new("Child_Ganons_Castle_Spirit_Trial")
-- Child_Ganons_Castle_Spirit_Trial_Second_Room_Front = OOTLocation.new("Child_Ganons_Castle_Spirit_Trial_Second_Room_Front")
-- Child_Ganons_Castle_Spirit_Trial_Second_Room_Back = OOTLocation.new("Child_Ganons_Castle_Spirit_Trial_Second_Room_Back")
-- Child_Ganons_Castle_Spirit_Trial_Ending = OOTLocation.new("Child_Ganons_Castle_Spirit_Trial_Ending")
-- Child_Ganons_Castle_Deku_Scrubs = OOTLocation.new("Child_Ganons_Castle_Deku_Scrubs")

-- Adult_Ganons_Castle_Lobby = OOTLocation.new("Adult_Ganons_Castle_Lobby")
-- Adult_Ganons_Castle_Forest_Trial = OOTLocation.new("Adult_Ganons_Castle_Forest_Trial")
-- Adult_Ganons_Castle_Forest_Trial_Ending = OOTLocation.new("Adult_Ganons_Castle_Forest_Trial_Ending")
-- Adult_Ganons_Castle_Water_Trial = OOTLocation.new("Adult_Ganons_Castle_Water_Trial")
-- Adult_Ganons_Castle_Water_Trial_Ending = OOTLocation.new("Adult_Ganons_Castle_Water_Trial_Ending")
-- Adult_Ganons_Castle_Shadow_Trial = OOTLocation.new("Adult_Ganons_Castle_Shadow_Trial")
-- Adult_Ganons_Castle_Shadow_Trial_First_Gap = OOTLocation.new("Adult_Ganons_Castle_Shadow_Trial_First_Gap")
-- Adult_Ganons_Castle_Shadow_Trial_Second_Gap = OOTLocation.new("Adult_Ganons_Castle_Shadow_Trial_Second_Gap")
-- Adult_Ganons_Castle_Shadow_Trial_Ending = OOTLocation.new("Adult_Ganons_Castle_Shadow_Trial_Ending")
-- Adult_Ganons_Castle_Fire_Trial = OOTLocation.new("Adult_Ganons_Castle_Fire_Trial")
-- Adult_Ganons_Castle_Fire_Trial_Ending = OOTLocation.new("Adult_Ganons_Castle_Fire_Trial_Ending")
-- Adult_Ganons_Castle_Light_Trial = OOTLocation.new("Adult_Ganons_Castle_Light_Trial")
-- Adult_Ganons_Castle_Light_Trial_Boulder_Room = OOTLocation.new("Adult_Ganons_Castle_Light_Trial_Boulder_Room")
-- Adult_Ganons_Castle_Light_Trial_Ending = OOTLocation.new("Adult_Ganons_Castle_Light_Trial_Ending")
-- Adult_Ganons_Castle_Spirit_Trial = OOTLocation.new("Adult_Ganons_Castle_Spirit_Trial")
-- Adult_Ganons_Castle_Spirit_Trial_Second_Room_Front = OOTLocation.new("Adult_Ganons_Castle_Spirit_Trial_Second_Room_Front")
-- Adult_Ganons_Castle_Spirit_Trial_Second_Room_Back = OOTLocation.new("Adult_Ganons_Castle_Spirit_Trial_Second_Room_Back")
-- Adult_Ganons_Castle_Spirit_Trial_Ending = OOTLocation.new("Adult_Ganons_Castle_Spirit_Trial_Ending")
-- Adult_Ganons_Castle_Deku_Scrubs = OOTLocation.new("Adult_Ganons_Castle_Deku_Scrubs")

-- Child_Ganons_Castle_Lobby:connect_one_way()
-- Adult_Ganons_Castle_Lobby:connect_one_way()

Child_Ganons_Castle_Lobby:connect_one_way_entrance("Child Castle Grounds From Ganons Castle", Child_Castle_Grounds_From_Ganons_Castle)
Child_Ganons_Castle_Lobby:connect_one_way_entrance("Child Ganons Castle Forest Trial", Child_Ganons_Castle_Forest_Trial)
Child_Ganons_Castle_Lobby:connect_one_way_entrance("Child Ganons Castle Water Trial", Child_Ganons_Castle_Water_Trial)
Child_Ganons_Castle_Lobby:connect_one_way_entrance("Child Ganons Castle Shadow Trial", Child_Ganons_Castle_Shadow_Trial)
Child_Ganons_Castle_Lobby:connect_one_way_entrance("Child Ganons Castle Fire Trial", Child_Ganons_Castle_Fire_Trial)
Child_Ganons_Castle_Lobby:connect_one_way_entrance("Child Ganons Castle Light Trial", Child_Ganons_Castle_Light_Trial, function() return Can_use("GoldenGauntlets", "child") end)
Child_Ganons_Castle_Lobby:connect_one_way_entrance("Child Ganons Castle Spirit Trial", Child_Ganons_Castle_Spirit_Trial)
Child_Ganons_Castle_Lobby:connect_one_way_entrance("Child Ganons Castle Deku Scrubs", Child_Ganons_Castle_Deku_Scrubs, function() 
    return Any(
        Has("logic_lens_castle"),
        Can_use("LensofTruth", "child")
    ) 
end)
Child_Ganons_Castle_Lobby:connect_one_way_entrance("Child Ganons Castle Tower", Child_Ganons_Castle_Tower, function() return end)

Adult_Ganons_Castle_Lobby:connect_one_way_entrance("Adult Castle Grounds From Ganons Castle", Adult_Castle_Grounds_From_Ganons_Castle)
Adult_Ganons_Castle_Lobby:connect_one_way_entrance("Adult Ganons Castle Forest Trial", Adult_Ganons_Castle_Forest_Trial)
Adult_Ganons_Castle_Lobby:connect_one_way_entrance("Adult Ganons Castle Water Trial", Adult_Ganons_Castle_Water_Trial)
Adult_Ganons_Castle_Lobby:connect_one_way_entrance("Adult Ganons Castle Shadow Trial", Adult_Ganons_Castle_Shadow_Trial)
Adult_Ganons_Castle_Lobby:connect_one_way_entrance("Adult Ganons Castle Fire Trial", Adult_Ganons_Castle_Fire_Trial)
Adult_Ganons_Castle_Lobby:connect_one_way_entrance("Adult Ganons Castle Light Trial", Adult_Ganons_Castle_Light_Trial, function() return Can_use("GoldenGauntlets", "adult") end)
Adult_Ganons_Castle_Lobby:connect_one_way_entrance("Adult Ganons Castle Spirit Trial", Adult_Ganons_Castle_Spirit_Trial)
Adult_Ganons_Castle_Lobby:connect_one_way_entrance("Adult Ganons Castle Deku Scrubs", Adult_Ganons_Castle_Deku_Scrubs, function() 
    return Any(
        Has("logic_lens_castle"),
        Can_use("LensofTruth", "adult")
    ) 
end)
Adult_Ganons_Castle_Lobby:connect_one_way_entrance("Adult Ganons Castle Tower", Adult_Ganons_Castle_Tower, function() return end)
-- (skipped_trials[Forest] or 'Forest Trial Clear') and
--                 (skipped_trials[Fire] or 'Fire Trial Clear') and
--                 (skipped_trials[Water] or 'Water Trial Clear') and
--                 (skipped_trials[Shadow] or 'Shadow Trial Clear') and
--                 (skipped_trials[Spirit] or 'Spirit Trial Clear') and
--                 (skipped_trials[Light] or 'Light Trial Clear')

Child_Ganons_Castle_Forest_Trial:connect_one_way("Child Ganons Castle Forest Trial Chest", function() 
    return Any(
        false,
        Can_use("Slingshot", "child"),
        Can_use("DekuStick", "child"),
        Can_use("KokiriSword", "child"),
        Can_use("DinsFire", "child")
    ) 
end)
Adult_Ganons_Castle_Forest_Trial:connect_one_way("Adult Ganons Castle Forest Trial Chest", function() 
    return Any(
        true,
        Can_use("Slingshot", "adult"),
        Can_use("DekuStick", "adult"),
        Can_use("KokiriSword", "adult"),
        Can_use("DinsFire", "adult")
    ) 
end)

Child_Ganons_Castle_Forest_Trial:connect_one_way_entrance("Child Ganons Castle Forest Trial Ending", Child_Ganons_Castle_Forest_Trial_Ending, function() 
    return Any(
        Can_use("FireArrows", "child"),
        All(
            Can_use("DinsFire", "child"),
            Any(
                Can_use("Bow", "child"),
                Can_use("Hookshot", "child")
            )
        )
    ) 
end)
Adult_Ganons_Castle_Forest_Trial:connect_one_way_entrance("Adult Ganons Castle Forest Trial Ending", Adult_Ganons_Castle_Forest_Trial_Ending, function() 
    return Any(
        Can_use("FireArrows", "adult"),
        All(
            Can_use("DinsFire", "adult"),
            Any(
                Can_use("Bow", "adult"),
                Can_use("Hookshot", "adult")
            )
        )
    ) 
end)

Child_Ganons_Castle_Forest_Trial_Ending:connect_one_way("Child Ganons Castle Forest Trial Pot 1")
Child_Ganons_Castle_Forest_Trial_Ending:connect_one_way("Child Ganons Castle Forest Trial Pot 2")

Adult_Ganons_Castle_Forest_Trial_Ending:connect_one_way("Adult Ganons Castle Forest Trial Pot 1")
Adult_Ganons_Castle_Forest_Trial_Ending:connect_one_way("Adult Ganons Castle Forest Trial Pot 2")


-- Child_Ganons_Castle_Forest_Trial_Ending:connect_one_way_entrance()
-- Adult_Ganons_Castle_Forest_Trial_Ending:connect_one_way_entrance()

Child_Ganons_Castle_Water_Trial:connect_one_way("Child Ganons Castle Water Trial Left Chest")
Child_Ganons_Castle_Water_Trial:connect_one_way("Child Ganons Castle Water Trial Right Chest")
Child_Ganons_Castle_Water_Trial:connect_one_way("Child Blue Fire", function() 
    return All(
        Has("Bottle"),
        Any(
            false,
            Can_use("DekuStick", "child"),
            Can_use("KokiriSword", "child"),
            Has_explosives()
        )
    )
end)

Adult_Ganons_Castle_Water_Trial:connect_one_way("Adult Ganons Castle Water Trial Left Chest")
Adult_Ganons_Castle_Water_Trial:connect_one_way("Adult Ganons Castle Water Trial Right Chest")
Adult_Ganons_Castle_Water_Trial:connect_one_way("Adult Blue Fire", function() 
    return All(
        Has("Bottle"),
        Any(
            true,
            Can_use("DekuStick", "adult"),
            Can_use("KokiriSword", "adult"),
            Has_explosives()
        )
    )
end)


Child_Ganons_Castle_Water_Trial:connect_one_way_entrance("Child Ganons Castle Water Trial Ending", Child_Ganons_Castle_Water_Trial_Ending, function() 
    return All(
        Blue_Fire(), 
        Can_use("MegatonHammer", "child")
    ) 
end)
Adult_Ganons_Castle_Water_Trial:connect_one_way_entrance("Adult Ganons Castle Water Trial Ending", Adult_Ganons_Castle_Water_Trial_Ending, function() 
    return All(
        Blue_Fire(), 
        Can_use("MegatonHammer", "adult")
    ) 
end)

Child_Ganons_Castle_Water_Trial_Ending:connect_one_way("Child Ganons Castle Water Trial Pot 1")
Child_Ganons_Castle_Water_Trial_Ending:connect_one_way("Child Ganons Castle Water Trial Pot 2")

Adult_Ganons_Castle_Water_Trial_Ending:connect_one_way("Adult Ganons Castle Water Trial Pot 1")
Adult_Ganons_Castle_Water_Trial_Ending:connect_one_way("Adult Ganons Castle Water Trial Pot 2")


-- Child_Ganons_Castle_Water_Trial_Ending:connect_one_way_entrance()
-- Adult_Ganons_Castle_Water_Trial_Ending:connect_one_way_entrance()

Child_Ganons_Castle_Shadow_Trial:connect_one_way("Child Ganons Castle Shadow Trial Front Chest", function() 
    return Any(
        true,
        Can_use("FireArrows", "child"),
        Can_use("Hookshot", "child"),
        Can_use("HoverBoots", "child"),
        Can_play("SongofTime")
    )
end)
Adult_Ganons_Castle_Shadow_Trial:connect_one_way("Adult Ganons Castle Shadow Trial Front Chest", function() 
    return Any(
        false,
        Can_use("FireArrows", "adult"),
        Can_use("Hookshot", "adult"),
        Can_use("HoverBoots", "adult"),
        Can_play("SongofTime")
    )
end)

Child_Ganons_Castle_Shadow_Trial:connect_one_way_entrance("Child Ganons Castle Shadow Trial First Gap", Child_Ganons_Castle_Shadow_Trial_First_Gap, function() 
    return Any(
        Can_use("Longshot", "child"),
        Can_use("FireArrows", "child")
    ) 
end)
Adult_Ganons_Castle_Shadow_Trial:connect_one_way_entrance("Adult Ganons Castle Shadow Trial First Gap", Adult_Ganons_Castle_Shadow_Trial_First_Gap, function() 
    return Any(
        Can_use("Longshot", "adult"),
        Can_use("FireArrows", "adult")
    ) 
end)

Child_Ganons_Castle_Shadow_Trial_First_Gap:connect_one_way("Child Ganons Castle Shadow Trial Like Like Pot 1")
Child_Ganons_Castle_Shadow_Trial_First_Gap:connect_one_way("Child Ganons Castle Shadow Trial Like Like Pot 2")

Adult_Ganons_Castle_Shadow_Trial_First_Gap:connect_one_way("Adult Ganons Castle Shadow Trial Like Like Pot 1")
Adult_Ganons_Castle_Shadow_Trial_First_Gap:connect_one_way("Adult Ganons Castle Shadow Trial Like Like Pot 2")


Child_Ganons_Castle_Shadow_Trial_First_Gap:connect_one_way_entrance("Child Ganons Castle Shadow Trial Second Gap", Child_Ganons_Castle_Shadow_Trial_Second_Gap, function() 
    return Any(
        Can_use("HoverBoots", "child"),
        Has_fire_source("child")
    ) 
end)
Adult_Ganons_Castle_Shadow_Trial_First_Gap:connect_one_way_entrance("Adult Ganons Castle Shadow Trial Second Gap", Adult_Ganons_Castle_Shadow_Trial_Second_Gap, function() 
    return Any(
        Can_use("HoverBoots", "adult"),
        Has_fire_source("adult")
    ) 
end)

Child_Ganons_Castle_Shadow_Trial_Second_Gap:connect_one_way("Child Ganons Castle Shadow Trial Golden Gauntlets Chest")
Child_Ganons_Castle_Shadow_Trial_Second_Gap:connect_one_way("Child Ganons Castle Shadow Trial Recovery Heart 1", function() 
    return Any(
        Has("logic_lens_castle"),
        Can_use("LensofTruth", "child"),
        Can_use("HoverBoots", "child")
    ) 
end)
Child_Ganons_Castle_Shadow_Trial_Second_Gap:connect_one_way("Child Ganons Castle Shadow Trial Recovery Heart 2", function() 
    return Any(
        Has("logic_lens_castle"),
        Can_use("LensofTruth", "child"),
        Can_use("HoverBoots", "child")
    ) 
end)
Child_Ganons_Castle_Shadow_Trial_Second_Gap:connect_one_way("Child Ganons Castle Shadow Trial Recovery Heart 3", function() 
    return Any(
        Has("logic_lens_castle"),
        Can_use("LensofTruth", "child"),
        Can_use("HoverBoots", "child")
    ) 
end)

Adult_Ganons_Castle_Shadow_Trial_Second_Gap:connect_one_way("Adult Ganons Castle Shadow Trial Golden Gauntlets Chest")
Adult_Ganons_Castle_Shadow_Trial_Second_Gap:connect_one_way("Adult Ganons Castle Shadow Trial Recovery Heart 1", function() 
    return Any(
        Has("logic_lens_castle"),
        Can_use("LensofTruth", "adult"),
        Can_use("HoverBoots", "adult")
    ) 
end)
Adult_Ganons_Castle_Shadow_Trial_Second_Gap:connect_one_way("Adult Ganons Castle Shadow Trial Recovery Heart 2", function() 
    return Any(
        Has("logic_lens_castle"),
        Can_use("LensofTruth", "adult"),
        Can_use("HoverBoots", "adult")
    ) 
end)
Adult_Ganons_Castle_Shadow_Trial_Second_Gap:connect_one_way("Adult Ganons Castle Shadow Trial Recovery Heart 3", function() 
    return Any(
        Has("logic_lens_castle"),
        Can_use("LensofTruth", "adult"),
        Can_use("HoverBoots", "adult")
    ) 
end)


Child_Ganons_Castle_Shadow_Trial_Second_Gap:connect_one_way_entrance("Child Ganons Castle Shadow Trial Ending", Child_Ganons_Castle_Shadow_Trial_Ending, function()
    return All(
        Can_use("MegatonHammer", "child"),
        Any(
            Has("logic_lens_castle"),
            Can_use("LensofTruth", "child"),
            All(
                Can_use("Longshot", "child"),
                Can_use("HoverBoots", "child")
            )
        )
    )
end)
Adult_Ganons_Castle_Shadow_Trial_Second_Gap:connect_one_way_entrance("Adult Ganons Castle Shadow Trial Ending", Adult_Ganons_Castle_Shadow_Trial_Ending, function()
    return All(
        Can_use("MegatonHammer", "adult"),
        Any(
            Has("logic_lens_castle"),
            Can_use("LensofTruth", "adult"),
            All(
                Can_use("Longshot", "adult"),
                Can_use("HoverBoots", "adult")
            )
        )
    )
end)

Child_Ganons_Castle_Shadow_Trial_Ending:connect_one_way("Child Ganons Castle Shadow Trial Pot 1")
Child_Ganons_Castle_Shadow_Trial_Ending:connect_one_way("Child Ganons Castle Shadow Trial Pot 2")

Adult_Ganons_Castle_Shadow_Trial_Ending:connect_one_way("Adult Ganons Castle Shadow Trial Pot 1")
Adult_Ganons_Castle_Shadow_Trial_Ending:connect_one_way("Adult Ganons Castle Shadow Trial Pot 2")


-- Child_Ganons_Castle_Shadow_Trial_Ending:connect_one_way_entrance()
-- Adult_Ganons_Castle_Shadow_Trial_Ending:connect_one_way_entrance()

Child_Ganons_Castle_Fire_Trial:connect_one_way("Child Ganons Castle Fire Trial Recovery Heart")
Adult_Ganons_Castle_Fire_Trial:connect_one_way("Adult Ganons Castle Fire Trial Recovery Heart")

Child_Ganons_Castle_Fire_Trial:connect_one_way_entrance("Child Ganons Castle Fire Trial Ending", Child_Ganons_Castle_Fire_Trial_Ending, function() 
    return All(
        false,
        Can_use("GoronTunic", "child"),
        Can_use("GoldenGauntlets", "child"),
        Can_use("Longshot", "child")
    ) 
end)
Adult_Ganons_Castle_Fire_Trial:connect_one_way_entrance("Adult Ganons Castle Fire Trial Ending", Adult_Ganons_Castle_Fire_Trial_Ending, function() 
    return All(
        true,
        Can_use("GoronTunic", "adult"),
        Can_use("GoldenGauntlets", "adult"),
        Can_use("Longshot", "adult")
    ) 
end)

Child_Ganons_Castle_Fire_Trial_Ending:connect_one_way("Child Ganons Castle Fire Trial Pot 1")
Child_Ganons_Castle_Fire_Trial_Ending:connect_one_way("Child Ganons Castle Fire Trial Pot 2")

Adult_Ganons_Castle_Fire_Trial_Ending:connect_one_way("Adult Ganons Castle Fire Trial Pot 1")
Adult_Ganons_Castle_Fire_Trial_Ending:connect_one_way("Adult Ganons Castle Fire Trial Pot 2")


-- Child_Ganons_Castle_Fire_Trial_Ending:connect_one_way_entrance()
-- Adult_Ganons_Castle_Fire_Trial_Ending:connect_one_way_entrance()

Child_Ganons_Castle_Light_Trial:connect_one_way("Child Ganons Castle Light Trial First Left Chest")
Child_Ganons_Castle_Light_Trial:connect_one_way("Child Ganons Castle Light Trial Second Left Chest")
Child_Ganons_Castle_Light_Trial:connect_one_way("Child Ganons Castle Light Trial Third Left Chest")
Child_Ganons_Castle_Light_Trial:connect_one_way("Child Ganons Castle Light Trial First Right Chest")
Child_Ganons_Castle_Light_Trial:connect_one_way("Child Ganons Castle Light Trial Second Right Chest")
Child_Ganons_Castle_Light_Trial:connect_one_way("Child Ganons Castle Light Trial Third Right Chest")
Child_Ganons_Castle_Light_Trial:connect_one_way("Child Ganons Castle Light Trial Invisible Enemies Chest", function() 
    return Any(
        Has("logic_lens_castle"),
        Can_use("LensofTruth", "child")
    )
end)
Child_Ganons_Castle_Light_Trial:connect_one_way("Child Ganons Castle Light Trial Lullaby Chest", function() 
    return All(
        Has("SmallKey(GanonsCastle)", 1),
        Can_play("ZeldasLullaby")
    )
end)

Adult_Ganons_Castle_Light_Trial:connect_one_way("Adult Ganons Castle Light Trial First Left Chest")
Adult_Ganons_Castle_Light_Trial:connect_one_way("Adult Ganons Castle Light Trial Second Left Chest")
Adult_Ganons_Castle_Light_Trial:connect_one_way("Adult Ganons Castle Light Trial Third Left Chest")
Adult_Ganons_Castle_Light_Trial:connect_one_way("Adult Ganons Castle Light Trial First Right Chest")
Adult_Ganons_Castle_Light_Trial:connect_one_way("Adult Ganons Castle Light Trial Second Right Chest")
Adult_Ganons_Castle_Light_Trial:connect_one_way("Adult Ganons Castle Light Trial Third Right Chest")
Adult_Ganons_Castle_Light_Trial:connect_one_way("Adult Ganons Castle Light Trial Invisible Enemies Chest", function() 
    return Any(
        Has("logic_lens_castle"),
        Can_use("LensofTruth", "adult")
    )
end)
Adult_Ganons_Castle_Light_Trial:connect_one_way("Adult Ganons Castle Light Trial Lullaby Chest", function() 
    return All(
        Has("SmallKey(GanonsCastle)", 1),
        Can_play("ZeldasLullaby")
    )
end)


Child_Ganons_Castle_Light_Trial:connect_one_way_entrance("Child Ganons Castle Light Trial Boulder Room", Child_Ganons_Castle_Light_Trial_Boulder_Room, function() return Has("SmallKey(GanonsCastle)", 2) end)
Adult_Ganons_Castle_Light_Trial:connect_one_way_entrance("Adult Ganons Castle Light Trial Boulder Room", Child_Ganons_Castle_Light_Trial_Boulder_Room, function() return Has("SmallKey(GanonsCastle)", 2) end)

Child_Ganons_Castle_Light_Trial_Boulder_Room:connect_one_way("Child Ganons Castle Light Trial Boulder Pot")
Adult_Ganons_Castle_Light_Trial_Boulder_Room:connect_one_way("Adult Ganons Castle Light Trial Boulder Pot")

Child_Ganons_Castle_Light_Trial_Boulder_Room:connect_one_way_entrance("Child Ganons Castle Light Trial Ending", Child_Ganons_Castle_Light_Trial_Ending, function() 
    return All(
        Can_use("Hookshot", "child"),
        Any(
            Has("logic_lens_castle"),
            Can_use("LensofTruth", "child")
        )
    ) 
end)
Adult_Ganons_Castle_Light_Trial_Boulder_Room:connect_one_way_entrance("Adult Ganons Castle Light Trial Ending", Adult_Ganons_Castle_Light_Trial_Ending, function() 
    return All(
        Can_use("Hookshot", "adult"),
        Any(
            Has("logic_lens_castle"),
            Can_use("LensofTruth", "adult")
        )
    ) 
end)

Child_Ganons_Castle_Light_Trial_Ending:connect_one_way("Child Ganons Castle Light Trial Pot 1")
Child_Ganons_Castle_Light_Trial_Ending:connect_one_way("Child Ganons Castle Light Trial Pot 2")

Adult_Ganons_Castle_Light_Trial_Ending:connect_one_way("Adult Ganons Castle Light Trial Pot 1")
Adult_Ganons_Castle_Light_Trial_Ending:connect_one_way("Adult Ganons Castle Light Trial Pot 2")


-- Child_Ganons_Castle_Light_Trial_Ending_Ganons_Castle_Spirit_Trial:connect_one_way_entrance()
-- Adult_Ganons_Castle_Light_Trial_Ending_Ganons_Castle_Spirit_Trial:connect_one_way_entrance()

Child_Ganons_Castle_Spirit_Trial:connect_one_way("Child Ganons Castle Spirit Trial Recovery Heart")
Adult_Ganons_Castle_Spirit_Trial:connect_one_way("Adult Ganons Castle Spirit Trial Recovery Heart")

Child_Ganons_Castle_Spirit_Trial:connect_one_way_entrance("Child Ganons Castle Spirit Trial Second Room Front", Child_Ganons_Castle_Spirit_Trial_Second_Room_Front, function() 
    return Any(
        Can_use("Hookshot", "child"),
        All(
            Has("logic_spirit_trial_hookshot"),
            Can_jumpslash("child")
        )
    )
end)
Adult_Ganons_Castle_Spirit_Trial:connect_one_way_entrance("Adult Ganons Castle Spirit Trial Second Room Front", Adult_Ganons_Castle_Spirit_Trial_Second_Room_Front, function() 
    return Any(
        Can_use("Hookshot", "adult"),
        All(
            Has("logic_spirit_trial_hookshot"),
            Can_jumpslash("adult")
        )
    )
end)

Child_Ganons_Castle_Spirit_Trial_Second_Room_Front:connect_one_way("Child Ganons Castle Spirit Trial Crystal Switch Chest")
Adult_Ganons_Castle_Spirit_Trial_Second_Room_Front:connect_one_way("Adult Ganons Castle Spirit Trial Crystal Switch Chest")

Child_Ganons_Castle_Spirit_Trial_Second_Room_Front:connect_one_way_entrance("Child Ganons Castle Spirit Trial Second Room Back", Child_Ganons_Castle_Spirit_Trial_Second_Room_Back, function() return Has_bombchus() end)
Adult_Ganons_Castle_Spirit_Trial_Second_Room_Front:connect_one_way_entrance("Adult Ganons Castle Spirit Trial Second Room Back", Adult_Ganons_Castle_Spirit_Trial_Second_Room_Back, function() return Has_bombchus() end)

Child_Ganons_Castle_Spirit_Trial_Second_Room_Back:connect_one_way("Child Ganons Castle Spirit Trial Invisible Chest", function() 
    return Any(
        Has("logic_lens_castle"),
        Can_use("LensofTruth")
    ) 
end)
Adult_Ganons_Castle_Spirit_Trial_Second_Room_Back:connect_one_way("Adult Ganons Castle Spirit Trial Invisible Chest", function() 
    return Any(
        Has("logic_lens_castle"),
        Can_use("LensofTruth")
    ) 
end)

Child_Ganons_Castle_Spirit_Trial_Second_Room_Back:connect_one_way_entrance("Child Ganons Castle Spirit Trial Ending", Child_Ganons_Castle_Spirit_Trial_Ending, function() 
    return All(
        false,
        Can_use("Bow", "child"),
        Can_use("MirrorShield", "child")
    ) 
end)
Adult_Ganons_Castle_Spirit_Trial_Second_Room_Back:connect_one_way_entrance("Adult Ganons Castle Spirit Trial Ending", Adult_Ganons_Castle_Spirit_Trial_Ending, function() 
    return All(
        true,
        Can_use("Bow", "adult"),
        Can_use("MirrorShield", "adult")
    ) 
end)

Child_Ganons_Castle_Spirit_Trial_Ending:connect_one_way("Child Ganons Castle Spirit Trial Pot 1")
Child_Ganons_Castle_Spirit_Trial_Ending:connect_one_way("Child Ganons Castle Spirit Trial Pot 2")

Adult_Ganons_Castle_Spirit_Trial_Ending:connect_one_way("Adult Ganons Castle Spirit Trial Pot 1")
Adult_Ganons_Castle_Spirit_Trial_Ending:connect_one_way("Adult Ganons Castle Spirit Trial Pot 2")


-- Child_Ganons_Castle_Spirit_Trial_Ending:connect_one_way_entrance()
-- Adult_Ganons_Castle_Spirit_Trial_Ending:connect_one_way_entrance()

Child_Ganons_Castle_Deku_Scrubs:connect_one_way("Child Ganons Castle Deku Scrub Center-Left", function() return Can_stun_deku("child") end )
Child_Ganons_Castle_Deku_Scrubs:connect_one_way("Child Ganons Castle Deku Scrub Center-Right", function() return Can_stun_deku("child") end )
Child_Ganons_Castle_Deku_Scrubs:connect_one_way("Child Ganons Castle Deku Scrub Right", function() return Can_stun_deku("child") end )
Child_Ganons_Castle_Deku_Scrubs:connect_one_way("Child Ganons Castle Deku Scrub Left", function() return Can_stun_deku("child") end )

Adult_Ganons_Castle_Deku_Scrubs:connect_one_way("Adult Ganons Castle Deku Scrub Center-Left", function() return Can_stun_deku("adult") end )
Adult_Ganons_Castle_Deku_Scrubs:connect_one_way("Adult Ganons Castle Deku Scrub Center-Right", function() return Can_stun_deku("adult") end )
Adult_Ganons_Castle_Deku_Scrubs:connect_one_way("Adult Ganons Castle Deku Scrub Right", function() return Can_stun_deku("adult") end )
Adult_Ganons_Castle_Deku_Scrubs:connect_one_way("Adult Ganons Castle Deku Scrub Left", function() return Can_stun_deku("adult") end )


-- Child_Ganons_Castle_Deku_Scrubs:connect_one_way_entrance()
-- Adult_Ganons_Castle_Deku_Scrubs:connect_one_way_entrance()





--     {
--         "region_name": "Ganons Castle Lobby",
--         "dungeon": "Ganons Castle",
--         "exits": {
--             "Castle Grounds From Ganons Castle": "True",
--             "Ganons Castle Forest Trial": "True",
--             "Ganons Castle Water Trial": "True",
--             "Ganons Castle Shadow Trial": "True",
--             "Ganons Castle Fire Trial": "True",
--             "Ganons Castle Light Trial": "can_use(Golden_Gauntlets)",
--             "Ganons Castle Spirit Trial": "True",
--             "Ganons Castle Deku Scrubs": "logic_lens_castle or can_use(Lens_of_Truth)",
--             "Ganons Castle Tower": "
--                 (skipped_trials[Forest] or 'Forest Trial Clear') and
--                 (skipped_trials[Fire] or 'Fire Trial Clear') and
--                 (skipped_trials[Water] or 'Water Trial Clear') and
--                 (skipped_trials[Shadow] or 'Shadow Trial Clear') and
--                 (skipped_trials[Spirit] or 'Spirit Trial Clear') and
--                 (skipped_trials[Light] or 'Light Trial Clear')"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Forest Trial",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle Forest Trial Chest": "
--                 is_adult or Slingshot or Sticks or Kokiri_Sword or can_use(Dins_Fire)"
--         },
--         "exits": {
--             "Ganons Castle Forest Trial Ending": "
--                 can_use(Fire_Arrows) or (can_use(Dins_Fire) and (can_use(Bow) or can_use(Hookshot)))"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Forest Trial Ending",
--         "dungeon": "Ganons Castle",
--         "events": {
--             "Forest Trial Clear": "can_use(Light_Arrows)"
--         },
--         "locations": {
--             "Ganons Castle Forest Trial Pot 1": "True",
--             "Ganons Castle Forest Trial Pot 2": "True"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Water Trial",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle Water Trial Left Chest": "True",
--             "Ganons Castle Water Trial Right Chest": "True",
--             "Blue Fire": "
--                 has_bottle and (is_adult or Sticks or Kokiri_Sword or has_explosives)",
--             "Fairy Pot": "
--                 Blue_Fire and (is_adult or has_explosives or can_use(Dins_Fire))"
--         },
--         "exits": {
--             "Ganons Castle Water Trial Ending": "Blue_Fire and can_use(Megaton_Hammer)"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Water Trial Ending",
--         "dungeon": "Ganons Castle",
--         "events": {
--             "Water Trial Clear": "can_use(Light_Arrows)"
--         },
--         "locations": {
--             "Ganons Castle Water Trial Pot 1": "True",
--             "Ganons Castle Water Trial Pot 2": "True"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Shadow Trial",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle Shadow Trial Front Chest": "
--                 is_child or can_use(Fire_Arrows) or Hookshot or
--                 HoverBoots or can_play(Song_of_Time)"
--         },
--         "exits": {
--             "Ganons Castle Shadow Trial First Gap": "can_use(Longshot) or can_use(Fire_Arrows)"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Shadow Trial First Gap",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle Shadow Trial Like Like Pot 1": "True",
--             "Ganons Castle Shadow Trial Like Like Pot 2": "True"
--         },
--         "exits": {
--             "Ganons Castle Shadow Trial Second Gap": "HoverBoots or has_fire_source"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Shadow Trial Second Gap",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle Shadow Trial Golden Gauntlets Chest": "True",
--             "Ganons Castle Shadow Trial Recovery Heart 1": "
--                 logic_lens_castle or can_use(Lens_of_Truth) or HoverBoots",
--             "Ganons Castle Shadow Trial Recovery Heart 2": "
--                 logic_lens_castle or can_use(Lens_of_Truth) or HoverBoots",
--             "Ganons Castle Shadow Trial Recovery Heart 3": "
--                 logic_lens_castle or can_use(Lens_of_Truth) or HoverBoots"
--         },
--         "exits": {
--             "Ganons Castle Shadow Trial Ending": "
--                 Megaton_Hammer and
--                 (logic_lens_castle or can_use(Lens_of_Truth) or (Longshot and HoverBoots))"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Shadow Trial Ending",
--         "dungeon": "Ganons Castle",
--         "events": {
--             "Shadow Trial Clear": "can_use(Light_Arrows)"
--         },
--         "locations": {
--             "Ganons Castle Shadow Trial Pot 1": "True",
--             "Ganons Castle Shadow Trial Pot 2": "True"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Fire Trial",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle Fire Trial Recovery Heart": "True"
--         },
--         "exits": {
--             "Ganons Castle Fire Trial Ending": "
--                 is_adult and Goron_Tunic and Golden_Gauntlets and Longshot"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Fire Trial Ending",
--         "dungeon": "Ganons Castle",
--         "events": {
--             "Fire Trial Clear": "can_use(Light_Arrows)"
--         },
--         "locations": {
--             "Ganons Castle Fire Trial Pot 1": "True",
--             "Ganons Castle Fire Trial Pot 2": "True"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Light Trial",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle Light Trial First Left Chest": "True",
--             "Ganons Castle Light Trial Second Left Chest": "True",
--             "Ganons Castle Light Trial Third Left Chest": "True",
--             "Ganons Castle Light Trial First Right Chest": "True",
--             "Ganons Castle Light Trial Second Right Chest": "True",
--             "Ganons Castle Light Trial Third Right Chest": "True",
--             "Ganons Castle Light Trial Invisible Enemies Chest": "
--                 logic_lens_castle or can_use(Lens_of_Truth)",
--             "Ganons Castle Light Trial Lullaby Chest": "
--                 (SmallKey(GanonsCastle), 1) and can_play(Zeldas_Lullaby)"
--         },
--         "exits": {
--             "Ganons Castle Light Trial Boulder Room": "(SmallKey(GanonsCastle), 2)"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Light Trial Boulder Room",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle Light Trial Boulder Pot": "True"
--         },
--         "exits": {
--             "Ganons Castle Light Trial Ending": "Hookshot and (logic_lens_castle or can_use(Lens_of_Truth))"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Light Trial Ending",
--         "dungeon": "Ganons Castle",
--         "events": {
--             "Light Trial Clear": "can_use(Light_Arrows)"
--         },
--         "locations": {
--             "Ganons Castle Light Trial Pot 1": "True",
--             "Ganons Castle Light Trial Pot 2": "True"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Spirit Trial",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle Spirit Trial Recovery Heart": "True"
--         },
--         "exits": {
--             "Ganons Castle Spirit Trial Second Room Front": "
--                 can_use(Hookshot) or (logic_spirit_trial_hookshot and can_jumpslash)"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Spirit Trial Second Room Front",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle Spirit Trial Crystal Switch Chest": "True"
--         },
--         "exits": {
--             "Ganons Castle Spirit Trial Second Room Back": "has_bombchus"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Spirit Trial Second Room Back",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle Spirit Trial Invisible Chest": "logic_lens_castle or can_use(Lens_of_Truth)"
--         },
--         "exits": {
--             "Ganons Castle Spirit Trial Ending": "is_adult and Bow and Mirror_Shield"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Spirit Trial Ending",
--         "dungeon": "Ganons Castle",
--         "events": {
--             "Spirit Trial Clear": "can_use(Light_Arrows)"
--         },
--         "locations": {
--             "Ganons Castle Spirit Trial Pot 1": "True",
--             "Ganons Castle Spirit Trial Pot 2": "True",
--             "Nut Pot": "True"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Deku Scrubs",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle Deku Scrub Center-Left": "can_stun_deku",
--             "Ganons Castle Deku Scrub Center-Right": "can_stun_deku",
--             "Ganons Castle Deku Scrub Right": "can_stun_deku",
--             "Ganons Castle Deku Scrub Left": "can_stun_deku",
--             "Free Fairies": "has_bottle"
--         }
--     }

-- --MQ

--     {
--         "region_name": "Ganons Castle Lobby",
--         "dungeon": "Ganons Castle",
--         "exits": {
--             "Castle Grounds From Ganons Castle": "True",
--             "Ganons Castle Main": "
--                 here(is_adult or
--                     (Kokiri_Sword and (Sticks or has_explosives or Nuts or Boomerang)) or
--                     (has_explosives and (Sticks or ((Nuts or Boomerang) and Slingshot))))"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Main",
--         "dungeon": "Ganons Castle",
--         "exits": {
--             "Ganons Castle Forest Trial": "here(is_adult or Kokiri_Sword)",
--             "Ganons Castle Water Trial": "True",
--             "Ganons Castle Shadow Trial": "is_adult",
--             "Ganons Castle Fire Trial": "
--                 is_adult and Goron_Tunic and Golden_Gauntlets and
--                 (Longshot or HoverBoots or (logic_fire_trial_mq and Hookshot))",
--             "Ganons Castle Light Trial": "can_use(Golden_Gauntlets)",
--             "Ganons Castle Spirit Trial": "can_use(Megaton_Hammer) and (Bow or logic_rusted_switches)",
--             "Ganons Castle Deku Scrubs": "logic_lens_castle_mq or can_use(Lens_of_Truth)",
--             "Ganons Castle Tower": "
--                 (skipped_trials[Forest] or 'Forest Trial Clear') and
--                 (skipped_trials[Fire] or 'Fire Trial Clear') and
--                 (skipped_trials[Water] or 'Water Trial Clear') and
--                 (skipped_trials[Shadow] or 'Shadow Trial Clear') and
--                 (skipped_trials[Spirit] or 'Spirit Trial Clear') and
--                 (skipped_trials[Light] or 'Light Trial Clear')"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Forest Trial",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle MQ Forest Trial Freestanding Key": "can_use(Hookshot) or can_use(Boomerang)",
--             "Ganons Castle MQ Forest Trial Eye Switch Chest": "can_use(Bow) or can_use(Slingshot)",
--             "Ganons Castle MQ Forest Trial Frozen Eye Switch Chest": "has_fire_source"
--         },
--         "exits": {
--             "Ganons Castle Forest Trial Ending": "is_adult and can_play(Song_of_Time)"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Forest Trial Ending",
--         "dungeon": "Ganons Castle",
--         "events": {
--             "Forest Trial Clear": "can_use(Light_Arrows)"
--         },
--         "locations": {
--             "Ganons Castle MQ Forest Trial Pot 1": "True",
--             "Ganons Castle MQ Forest Trial Pot 2": "True"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Water Trial",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle MQ Water Trial Chest": "Blue_Fire",
--             "Ganons Castle MQ Water Trial Recovery Heart": "Blue_Fire",
--             "Blue Fire": "has_bottle"
--         },
--         "exits": {
--             "Ganons Castle Water Trial Ending": "Blue_Fire and (SmallKey(GanonsCastle), 3)"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Water Trial Ending",
--         "dungeon": "Ganons Castle",
--         "events": {
--             "Water Trial Clear": "can_use(Light_Arrows)"
--         },
--         "locations": {
--             "Ganons Castle MQ Water Trial Pot 1": "True",
--             "Ganons Castle MQ Water Trial Pot 2": "True"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Shadow Trial",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle MQ Shadow Trial Bomb Flower Chest": "
--                 (Bow and (Hookshot or HoverBoots)) or
--                 (HoverBoots and (logic_lens_castle_mq or can_use(Lens_of_Truth)) and
--                     (has_explosives or Progressive_Strength_Upgrade or can_use(Dins_Fire)))"
--         },
--         "exits": {
--             "Ganons Castle Shadow Trial Ending": "
--                 (logic_lens_castle_mq or can_use(Lens_of_Truth)) and
--                 (HoverBoots or (Bow and Hookshot and (has_fire_source or logic_shadow_trial_mq)))"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Shadow Trial Ending",
--         "dungeon": "Ganons Castle",
--         "events": {
--             "Shadow Trial Clear": "can_use(Light_Arrows)"
--         },
--         "locations": {
--             "Ganons Castle MQ Shadow Trial Eye Switch Chest": "Bow",
--             "Ganons Castle MQ Shadow Trial Pot 1": "True",
--             "Ganons Castle MQ Shadow Trial Pot 2": "True"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Fire Trial",
--         "dungeon": "Ganons Castle",
--         "events": {
--             "Fire Trial Clear": "can_use(Light_Arrows)"
--         },
--         "locations": {
--             "Ganons Castle MQ Fire Trial Pot 1": "True",
--             "Ganons Castle MQ Fire Trial Pot 2": "True"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Light Trial",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle MQ Light Trial Lullaby Chest": "can_play(Zeldas_Lullaby)"
--         },
--         "exits": {
--             "Ganons Castle Light Trial Boulder Room": "
--                 (SmallKey(GanonsCastle), 2) and (Hookshot or logic_light_trial_mq)"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Light Trial Boulder Room",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle MQ Light Trial Recovery Heart 1": "True",
--             "Ganons Castle MQ Light Trial Recovery Heart 2": "True"
--         },
--         "exits": {
--             "Ganons Castle Light Trial Ending": "
--                 (SmallKey(GanonsCastle), 3) and (logic_lens_castle_mq or can_use(Lens_of_Truth))"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Light Trial Ending",
--         "dungeon": "Ganons Castle",
--         "events": {
--             "Light Trial Clear": "can_use(Light_Arrows)"
--         },
--         "locations": {
--             "Ganons Castle MQ Light Trial Pot 1": "True",
--             "Ganons Castle MQ Light Trial Pot 2": "True"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Spirit Trial",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle MQ Spirit Trial First Chest": "True"
--         },
--         "exits": {
--             "Ganons Castle Spirit Trial Second Room": "has_bombchus"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Spirit Trial Second Room",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle MQ Spirit Trial Invisible Chest": "logic_lens_castle_mq or can_use(Lens_of_Truth)"
--         },
--         "exits": {
--             "Ganons Castle Spirit Trial Ending": "can_use(Fire_Arrows) and Mirror_Shield"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Spirit Trial Ending",
--         "dungeon": "Ganons Castle",
--         "events": {
--             "Spirit Trial Clear": "can_use(Light_Arrows)"
--         },
--         "locations": {
--             "Ganons Castle MQ Spirit Trial Sun Front Left Chest": "True",
--             "Ganons Castle MQ Spirit Trial Sun Back Left Chest": "True",
--             "Ganons Castle MQ Spirit Trial Golden Gauntlets Chest": "True",
--             "Ganons Castle MQ Spirit Trial Sun Back Right Chest": "True",
--             "Ganons Castle MQ Spirit Trial Pot 1": "True",
--             "Ganons Castle MQ Spirit Trial Pot 2": "True",
--             "Nut Pot": "True"
--         }
--     },
--     {
--         "region_name": "Ganons Castle Deku Scrubs",
--         "dungeon": "Ganons Castle",
--         "locations": {
--             "Ganons Castle MQ Deku Scrub Center-Left": "True",
--             "Ganons Castle MQ Deku Scrub Center": "True",
--             "Ganons Castle MQ Deku Scrub Center-Right": "True",
--             "Ganons Castle MQ Deku Scrub Left": "True",
--             "Ganons Castle MQ Deku Scrub Right": "True",
--             "Free Fairies": "has_bottle"
--         }
--     }
