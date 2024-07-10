-- Child_Dodongos_Cavern_Beginning = OOTLocation.new("Child_Dodongos_Cavern_Beginning")
-- Child_Dodongos_Cavern_Lobby = OOTLocation.new("Child_Dodongos_Cavern_Lobby")
-- Child_Dodongos_Cavern_Lower_Right_Side = OOTLocation.new("Child_Dodongos_Cavern_Lower_Right_Side")
-- Child_Dodongos_Cavern_Torch_Room = OOTLocation.new("Child_Dodongos_Cavern_Torch_Room")
-- Child_Dodongos_Cavern_Staircase_Room = OOTLocation.new("Child_Dodongos_Cavern_Staircase_Room")
-- Child_Dodongos_Cavern_Climb = OOTLocation.new("Child_Dodongos_Cavern_Climb")
-- Child_Dodongos_Cavern_Before_Upper_Lizalfos = OOTLocation.new("Child_Dodongos_Cavern_Before_Upper_Lizalfos")
-- Child_Dodongos_Cavern_Upper_Lizalfos = OOTLocation.new("Child_Dodongos_Cavern_Upper_Lizalfos")
-- Child_Dodongos_Cavern_Far_Bridge = OOTLocation.new("Child_Dodongos_Cavern_Far_Bridge")
-- Child_Dodongos_Cavern_Before_Boss = OOTLocation.new("Child_Dodongos_Cavern_Before_Boss")

-- Adult_Dodongos_Cavern_Beginning = OOTLocation.new("Adult_Dodongos_Cavern_Beginning")
-- Adult_Dodongos_Cavern_Lobby = OOTLocation.new("Adult_Dodongos_Cavern_Lobby")
-- Adult_Dodongos_Cavern_Lower_Right_Side = OOTLocation.new("Adult_Dodongos_Cavern_Lower_Right_Side")
-- Adult_Dodongos_Cavern_Torch_Room = OOTLocation.new("Adult_Dodongos_Cavern_Torch_Room")
-- Adult_Dodongos_Cavern_Staircase_Room = OOTLocation.new("Adult_Dodongos_Cavern_Staircase_Room")
-- Adult_Dodongos_Cavern_Climb = OOTLocation.new("Adult_Dodongos_Cavern_Climb")
-- Adult_Dodongos_Cavern_Before_Upper_Lizalfos = OOTLocation.new("Adult_Dodongos_Cavern_Before_Upper_Lizalfos")
-- Adult_Dodongos_Cavern_Upper_Lizalfos = OOTLocation.new("Adult_Dodongos_Cavern_Upper_Lizalfos")
-- Adult_Dodongos_Cavern_Far_Bridge = OOTLocation.new("Adult_Dodongos_Cavern_Far_Bridge")
-- Adult_Dodongos_Cavern_Before_Boss = OOTLocation.new("Adult_Dodongos_Cavern_Before_Boss")

-- Child_Dodongos_Cavern_Beginning:connect_one_way()
-- Adult_Dodongos_Cavern_Beginning:connect_one_way()

Child_Dodongos_Cavern_Beginning:connect_one_way_entrance("Child Death Mountain", Child_Death_Mountain)
Child_Dodongos_Cavern_Beginning:connect_one_way_entrance("Child Dodongos Cavern Lobby", Child_Dodongos_Cavern_Lobby, function()
    return Any(
        Can_blast_or_smash("child"),
        Can_use("ProgressiveStrengthUpgrade", "child"),
        Has("dodongos_cavern_shortcuts")
    )
end)

Adult_Dodongos_Cavern_Beginning:connect_one_way_entrance("Adult Death Mountain", Adult_Death_Mountain)
Adult_Dodongos_Cavern_Beginning:connect_one_way_entrance("Adult Dodongos Cavern Lobby", Adult_Dodongos_Cavern_Lobby, function()
    return Any(
        Can_blast_or_smash("adult"),
        Can_use("ProgressiveStrengthUpgrade", "adult"),
        Has("dodongos_cavern_shortcuts")
    )
end)


Child_Dodongos_Cavern_Lobby:connect_one_way("Child Dodongos Cavern Map Chest", function()
    return Any(
        Can_blast_or_smash("child"),
        Can_use("ProgressiveStrengthUpgrade", "child")
    )
end)
Child_Dodongos_Cavern_Lobby:connect_one_way("Child Dodongos Cavern Deku Scrub Lobby", function()
    return Any(
        Can_stun_deku("child"),
        Can_use("ProgressiveStrengthUpgrade", "child")
    )
end)

Adult_Dodongos_Cavern_Lobby:connect_one_way("Adult Dodongos Cavern Map Chest", function()
    return Any(
        Can_blast_or_smash("adult"),
        Can_use("ProgressiveStrengthUpgrade", "adult")
    )
end)
Adult_Dodongos_Cavern_Lobby:connect_one_way("Adult Dodongos Cavern Deku Scrub Lobby", function()
    return Any(
        Can_stun_deku("adult"),
        Can_use("ProgressiveStrengthUpgrade", "adult")
    )
end)


Child_Dodongos_Cavern_Lobby:connect_one_way_entrance("Child Dodongos Cavern Lower Right Side", Child_Dodongos_Cavern_Lower_Right_Side, function() 
    return Any(
        Has_explosives(), 
        Can_use("ProgressiveStrengthUpgrade", "child")
    ) 
end)
Child_Dodongos_Cavern_Lobby:connect_one_way_entrance("Child Dodongos Cavern Torch Room", Child_Dodongos_Cavern_Torch_Room, function() return false end)
Child_Dodongos_Cavern_Lobby:connect_one_way_entrance("Child Dodongos Cavern Staircase Room", Child_Dodongos_Cavern_Staircase_Room, function() 
    return All(
        CanReach(Child_Dodongos_Cavern_Torch_Room),
        false,
        Can_use("DekuStick", "child"),
        Can_use("DinsFire", "child")
    ) 
end)
Child_Dodongos_Cavern_Lobby:connect_one_way_entrance("Child Dodongos Cavern Far Bridge", Child_Dodongos_Cavern_Far_Bridge, function() return CanReach(Child_Dodongos_Cavern_Far_Bridge) end)
Child_Dodongos_Cavern_Lobby:connect_one_way_entrance("Child Dodongos Cavern Before Boss", Child_Dodongos_Cavern_Before_Boss, function() return Has("dodongos_cavern_shortcuts") end)

Adult_Dodongos_Cavern_Lobby:connect_one_way_entrance("Adult Dodongos Cavern Lower Right Side", Adult_Dodongos_Cavern_Lower_Right_Side, function() 
    return Any(
        Has_explosives(), 
        Can_use("ProgressiveStrengthUpgrade", "adult")
    ) 
end)
Adult_Dodongos_Cavern_Lobby:connect_one_way_entrance("Adult Dodongos Cavern Torch Room", Adult_Dodongos_Cavern_Torch_Room, function() return true end)
Adult_Dodongos_Cavern_Lobby:connect_one_way_entrance("Adult Dodongos Cavern Staircase Room", Adult_Dodongos_Cavern_Staircase_Room, function() 
    return All(
        CanReach(Adult_Dodongos_Cavern_Torch_Room),
        true,
        Can_use("DekuStick", "adult"),
        Can_use("DinsFire", "adult")
    ) 
end)
Adult_Dodongos_Cavern_Lobby:connect_one_way_entrance("Adult Dodongos Cavern Far Bridge", Adult_Dodongos_Cavern_Far_Bridge, function() return CanReach(Adult_Dodongos_Cavern_Far_Bridge) end)
Adult_Dodongos_Cavern_Lobby:connect_one_way_entrance("Adult Dodongos Cavern Before Boss", Adult_Dodongos_Cavern_Before_Boss, function() return Has("dodongos_cavern_shortcuts") end)


Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Lower Lizalfos Hidden Recovery Heart")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Right Side Pot 1")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Right Side Pot 2")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Right Side Pot 3")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Right Side Pot 4")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Right Side Pot 5")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Right Side Pot 6")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Lower Lizalfos Pot 1")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Lower Lizalfos Pot 2")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Lower Lizalfos Pot 3")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern Lower Lizalfos Pot 4")
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern GS Side Room Near Lower Lizalfos", function() 
    return Any(
        false,
        Has_explosives(),
        Can_use("DekuStick", "child"),
        Can_use("Slingshot", "child"),
        Can_use("Boomerang", "child"),
        Can_use("KokiriSword", "child")
    ) 
end)
Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Child Dodongos Cavern GS Scarecrow", function() 
    return Any(
        Scarecrow("child"),
        Can_use("Longshot", "child"),
        All(
            Has("logic_dc_scarecrow_gs"),
            Any(
                false,
                Can_child_attack("child")
            )
        )
    )
end)

Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Lower Lizalfos Hidden Recovery Heart")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Right Side Pot 1")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Right Side Pot 2")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Right Side Pot 3")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Right Side Pot 4")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Right Side Pot 5")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Right Side Pot 6")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Lower Lizalfos Pot 1")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Lower Lizalfos Pot 2")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Lower Lizalfos Pot 3")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern Lower Lizalfos Pot 4")
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern GS Side Room Near Lower Lizalfos", function() 
    return Any(
        true,
        Has_explosives(),
        Can_use("DekuStick", "adult"),
        Can_use("Slingshot", "adult"),
        Can_use("Boomerang", "adult"),
        Can_use("KokiriSword", "adult")
    ) 
end)
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way("Adult Dodongos Cavern GS Scarecrow", function() 
    return Any(
        Scarecrow("adult"),
        Can_use("Longshot", "adult"),
        All(
            Has("logic_dc_scarecrow_gs"),
            Any(
                true,
                Can_child_attack("adult")
            )
        )
    )
end)


Child_Dodongos_Cavern_Lower_Right_Side:connect_one_way_entrance("Child Dodongos Cavern Torch Room", Child_Dodongos_Cavern_Torch_Room, function() 
    return Any(
        Can_use("DekuStick", "child"),
        Can_use("Slingshot", "child"),
        Bombs(),
        Can_use("KokiriSword", "child")
    ) 
end)
Adult_Dodongos_Cavern_Lower_Right_Side:connect_one_way_entrance("Adult Dodongos Cavern Torch Room", Adult_Dodongos_Cavern_Torch_Room, function() 
    return Any(
        Can_use("DekuStick", "adult"),
        Can_use("Slingshot", "adult"),
        Bombs(),
        Can_use("KokiriSword", "adult")
    ) 
end)

Child_Dodongos_Cavern_Torch_Room:connect_one_way("Child Dodongos Cavern Deku Scrub Side Room Near Dodongos", function() 
    return Any(
        Can_blast_or_smash("child"),
        Can_use("ProgressiveStrengthUpgrade", "child")
    ) 
end)
Child_Dodongos_Cavern_Torch_Room:connect_one_way("Child Dodongos Cavern Torch Room Pot 1")
Child_Dodongos_Cavern_Torch_Room:connect_one_way("Child Dodongos Cavern Torch Room Pot 2")
Child_Dodongos_Cavern_Torch_Room:connect_one_way("Child Dodongos Cavern Torch Room Pot 3")
Child_Dodongos_Cavern_Torch_Room:connect_one_way("Child Dodongos Cavern Torch Room Pot 4")

Adult_Dodongos_Cavern_Torch_Room:connect_one_way("Adult Dodongos Cavern Deku Scrub Side Room Near Dodongos", function() 
    return Any(
        Can_blast_or_smash("adult"),
        Can_use("ProgressiveStrengthUpgrade", "adult")
    ) 
end)
Adult_Dodongos_Cavern_Torch_Room:connect_one_way("Adult Dodongos Cavern Torch Room Pot 1")
Adult_Dodongos_Cavern_Torch_Room:connect_one_way("Adult Dodongos Cavern Torch Room Pot 2")
Adult_Dodongos_Cavern_Torch_Room:connect_one_way("Adult Dodongos Cavern Torch Room Pot 3")
Adult_Dodongos_Cavern_Torch_Room:connect_one_way("Adult Dodongos Cavern Torch Room Pot 4")


Child_Dodongos_Cavern_Torch_Room:connect_one_way_entrance("Child Dodongos Cavern Lower Right Side", Child_Dodongos_Cavern_Lower_Right_Side)
Adult_Dodongos_Cavern_Torch_Room:connect_one_way_entrance("Adult Dodongos Cavern Lower Right Side", Adult_Dodongos_Cavern_Lower_Right_Side)

Child_Dodongos_Cavern_Staircase_Room:connect_one_way("Child Dodongos Cavern Compass Chest", function() 
    return Any(
        Can_blast_or_smash("child"),
        Can_use("ProgressiveStrengthUpgrade", "child")
    ) 
end)
Child_Dodongos_Cavern_Staircase_Room:connect_one_way("Child Dodongos Cavern GS Vines Above Stairs", function() 
    return Any(
        CanReach(Child_Dodongos_Cavern_Climb),
        All(
            Has("logic_dc_vines_gs"),
            Can_use("Longshot", "child")
        )
    ) 
end)

Adult_Dodongos_Cavern_Staircase_Room:connect_one_way("Adult Dodongos Cavern Compass Chest", function() 
    return Any(
        Can_blast_or_smash("adult"),
        Can_use("ProgressiveStrengthUpgrade", "adult")
    ) 
end)
Adult_Dodongos_Cavern_Staircase_Room:connect_one_way("Adult Dodongos Cavern GS Vines Above Stairs", function() 
    return Any(
        CanReach(Adult_Dodongos_Cavern_Climb),
        All(
            Has("logic_dc_vines_gs"),
            Can_use("Longshot", "adult")
        )
    ) 
end)


Child_Dodongos_Cavern_Staircase_Room:connect_one_way_entrance("Child Dodongos Cavern Climb", Child_Dodongos_Cavern_Climb, function() 
    return Any(
        Has_explosives(),
        Can_use("ProgressiveStrengthUpgrade", "child"),
        Can_use("DinsFire", "child"),
        All(
            Has("logic_dc_staircase"),
            Can_use("Bow", "child")
        )
    )
end)
Adult_Dodongos_Cavern_Staircase_Room:connect_one_way_entrance("Adult Dodongos Cavern Climb", Adult_Dodongos_Cavern_Climb, function() 
    return Any(
        Has_explosives(),
        Can_use("ProgressiveStrengthUpgrade", "adult"),
        Can_use("DinsFire", "adult"),
        All(
            Has("logic_dc_staircase"),
            Can_use("Bow", "adult")
        )
    )
end)

Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Bomb Flower Platform Chest")
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Deku Scrub Near Bomb Bag Right", function() 
    return Any(
        Can_blast_or_smash("child"),
        All(
            Has("logic_dc_scrub_room"),
            false,
            Can_use("ProgressiveStrengthUpgrade", "child")
        )
    )
end)
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Deku Scrub Near Bomb Bag Left", function() 
    return Any(
        Can_blast_or_smash("child"),
        All(
            Has("logic_dc_scrub_room"),
            false,
            Can_use("ProgressiveStrengthUpgrade", "adult")
        )
    )
end)
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Blade Room Behind Block Recovery Heart")
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Staircase Pot 1")
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Staircase Pot 2")
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Staircase Pot 3")
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Staircase Pot 4")
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Blade Room Pot 1", function() 
    return Any(
        Can_use("Boomerang", "child"),
        CanReach(Child_Dodongos_Cavern_Far_Bridge)
    ) 
end)
Child_Dodongos_Cavern_Climb:connect_one_way("Child Dodongos Cavern Blade Room Pot 2", function() 
    return Any(
        Can_use("Boomerang", "child"),
        CanReach(Child_Dodongos_Cavern_Far_Bridge)
    ) 
end)

Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Bomb Flower Platform Chest")
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Deku Scrub Near Bomb Bag Right", function() 
    return Any(
        Can_blast_or_smash("adult"),
        All(
            Has("logic_dc_scrub_room"),
            true,
            Can_use("ProgressiveStrengthUpgrade", "adult")
        )
    )
end)
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Deku Scrub Near Bomb Bag Left", function() 
    return Any(
        Can_blast_or_smash("adult"),
        All(
            Has("logic_dc_scrub_room"),
            true,
            Can_use("ProgressiveStrengthUpgrade", "adult")
        )
    )
end)
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Blade Room Behind Block Recovery Heart")
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Staircase Pot 1")
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Staircase Pot 2")
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Staircase Pot 3")
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Staircase Pot 4")
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Blade Room Pot 1", function() 
    return Any(
        Can_use("Boomerang", "adult"),
        CanReach(Adult_Dodongos_Cavern_Far_Bridge)
    ) 
end)
Adult_Dodongos_Cavern_Climb:connect_one_way("Adult Dodongos Cavern Blade Room Pot 2", function() 
    return Any(
        Can_use("Boomerang", "adult"),
        CanReach(Adult_Dodongos_Cavern_Far_Bridge)
    ) 
end)


Child_Dodongos_Cavern_Climb:connect_one_way_entrance("Child Dodongos Cavern Before Upper Lizalfos",Child_Dodongos_Cavern_Before_Upper_Lizalfos,  function() 
    return Any(
        Can_blast_or_smash("child"),
        Can_use('ProgressiveStrengthUpgrade', "child")
    ) 
end)
Child_Dodongos_Cavern_Climb:connect_one_way_entrance("Child Dodongos Cavern Far Bridge", Child_Dodongos_Cavern_Far_Bridge, function() 
    return All(
        false,
        Any(
            Has("logic_dc_jump"),
            Can_use("HoverBoots", "child"),
            Can_use("Longshot", "child")
        )
    ) 
end)

Adult_Dodongos_Cavern_Climb:connect_one_way_entrance("Adult Dodongos Cavern Before Upper Lizalfos", Adult_Dodongos_Cavern_Before_Upper_Lizalfos, function() 
    return Any(
        Can_blast_or_smash("adult"),
        Can_use('ProgressiveStrengthUpgrade', "adult")
    ) 
end)
Adult_Dodongos_Cavern_Climb:connect_one_way_entrance("Adult Dodongos Cavern Far Bridge", Adult_Dodongos_Cavern_Far_Bridge, function() 
    return All(
        true,
        Any(
            Has("logic_dc_jump"),
            Can_use("HoverBoots", "adult"),
            Can_use("Longshot", "adult")
        )
    ) 
end)


Child_Dodongos_Cavern_Before_Upper_Lizalfos:connect_one_way("Child Dodongos Cavern Single Eye Switch Room Pot 1")
Child_Dodongos_Cavern_Before_Upper_Lizalfos:connect_one_way("Child Dodongos Cavern Single Eye Switch Room Pot 2")

Adult_Dodongos_Cavern_Before_Upper_Lizalfos:connect_one_way("Adult Dodongos Cavern Single Eye Switch Room Pot 1")
Adult_Dodongos_Cavern_Before_Upper_Lizalfos:connect_one_way("Adult Dodongos Cavern Single Eye Switch Room Pot 2")


Child_Dodongos_Cavern_Before_Upper_Lizalfos:connect_one_way_entrance("Child Dodongos Cavern Upper Lizalfos", Child_Dodongos_Cavern_Upper_Lizalfos, function() 
    return Any(
        All(
            true,
            Any(
                Can_use("Slingshot", "child"),
                Has("logic_dc_slingshot_skip")
            )
        ),
        Can_use("Bow", "child")
    ) 
end)
Adult_Dodongos_Cavern_Before_Upper_Lizalfos:connect_one_way_entrance("Adult Dodongos Cavern Upper Lizalfos", Adult_Dodongos_Cavern_Upper_Lizalfos, function() 
    return Any(
        All(
            false,
            Any(
                Can_use("Slingshot", "adult"),
                Has("logic_dc_slingshot_skip")
            )
        ),
        Can_use("Bow", "adult")
    ) 
end)

Child_Dodongos_Cavern_Upper_Lizalfos:connect_one_way("Child Dodongos Cavern Lizalfos Upper Recovery Heart 1")
Child_Dodongos_Cavern_Upper_Lizalfos:connect_one_way("Child Dodongos Cavern Lizalfos Upper Recovery Heart 2")

Adult_Dodongos_Cavern_Upper_Lizalfos:connect_one_way("Adult Dodongos Cavern Lizalfos Upper Recovery Heart 1")
Adult_Dodongos_Cavern_Upper_Lizalfos:connect_one_way("Adult Dodongos Cavern Lizalfos Upper Recovery Heart 2")


Child_Dodongos_Cavern_Upper_Lizalfos:connect_one_way_entrance("Child Dodongos Cavern Before Upper Lizalfos", Child_Dodongos_Cavern_Before_Upper_Lizalfos)
Child_Dodongos_Cavern_Upper_Lizalfos:connect_one_way_entrance("Child Dodongos Cavern Far Bridge", Child_Dodongos_Cavern_Far_Bridge, function() 
    return Any(
        false,
        Can_use("DekuStick", "child"),
        Can_use("Slingshot", "child"),
        Bombs(),
        Can_use("KokiriSword", "child")
    ) 
end )

Adult_Dodongos_Cavern_Upper_Lizalfos:connect_one_way_entrance("Adult Dodongos Cavern Before Upper Lizalfos", Adult_Dodongos_Cavern_Before_Upper_Lizalfos)
Adult_Dodongos_Cavern_Upper_Lizalfos:connect_one_way_entrance("Adult Dodongos Cavern Far Bridge", Adult_Dodongos_Cavern_Far_Bridge, function() 
    return Any(
        true,
        Can_use("DekuStick", "adult"),
        Can_use("Slingshot", "adult"),
        Bombs(),
        Can_use("KokiriSword", "adult")
    ) 
end )


Child_Dodongos_Cavern_Far_Bridge:connect_one_way("Child Dodongos Cavern Bomb Bag Chest")
Child_Dodongos_Cavern_Far_Bridge:connect_one_way("Child Dodongos Cavern End of Bridge Chest", function() return Can_blast_or_smash("child") end)
Child_Dodongos_Cavern_Far_Bridge:connect_one_way("Child Dodongos Cavern Double Eye Switch Room Pot 1")
Child_Dodongos_Cavern_Far_Bridge:connect_one_way("Child Dodongos Cavern Double Eye Switch Room Pot 2")
Child_Dodongos_Cavern_Far_Bridge:connect_one_way("Child Dodongos Cavern GS Alcove Above Stairs", function() 
    return Any(
        Can_use("Hookshot", "child"),
        Can_use("Boomerang", "child")
    ) 
end)

Adult_Dodongos_Cavern_Far_Bridge:connect_one_way("Adult Dodongos Cavern Bomb Bag Chest")
Adult_Dodongos_Cavern_Far_Bridge:connect_one_way("Adult Dodongos Cavern End of Bridge Chest", function() return Can_blast_or_smash("adult") end)
Adult_Dodongos_Cavern_Far_Bridge:connect_one_way("Adult Dodongos Cavern Double Eye Switch Room Pot 1")
Adult_Dodongos_Cavern_Far_Bridge:connect_one_way("Adult Dodongos Cavern Double Eye Switch Room Pot 2")
Adult_Dodongos_Cavern_Far_Bridge:connect_one_way("Adult Dodongos Cavern GS Alcove Above Stairs", function() 
    return Any(
        Can_use("Hookshot", "adult"),
        Can_use("Boomerang", "adult")
    ) 
end)


Child_Dodongos_Cavern_Far_Bridge:connect_one_way_entrance("Child Dodongos Cavern Before Boss", Child_Forest_Temple_Before_Boss,function() return Has_explosives() end)
Child_Dodongos_Cavern_Far_Bridge:connect_one_way_entrance("Child Dodongos Cavern Upper Lizalfos", Child_Dodongos_Cavern_Upper_Lizalfos)

Adult_Dodongos_Cavern_Far_Bridge:connect_one_way_entrance("Adult Dodongos Cavern Before Boss", Adult_Forest_Temple_Before_Boss,function() return Has_explosives() end)
Adult_Dodongos_Cavern_Far_Bridge:connect_one_way_entrance("Adult Dodongos Cavern Upper Lizalfos", Adult_Dodongos_Cavern_Upper_Lizalfos)


Child_Dodongos_Cavern_Before_Boss:connect_one_way("Child Dodongos Cavern Last Block Pot 1")
Child_Dodongos_Cavern_Before_Boss:connect_one_way("Child Dodongos Cavern Last Block Pot 2")
Child_Dodongos_Cavern_Before_Boss:connect_one_way("Child Dodongos Cavern Last Block Pot 3")
Child_Dodongos_Cavern_Before_Boss:connect_one_way("Child Dodongos Cavern GS Back Room", function() return Can_blast_or_smash("child") end)

Adult_Dodongos_Cavern_Before_Boss:connect_one_way("Adult Dodongos Cavern Last Block Pot 1")
Adult_Dodongos_Cavern_Before_Boss:connect_one_way("Adult Dodongos Cavern Last Block Pot 2")
Adult_Dodongos_Cavern_Before_Boss:connect_one_way("Adult Dodongos Cavern Last Block Pot 3")
Adult_Dodongos_Cavern_Before_Boss:connect_one_way("Adult Dodongos Cavern GS Back Room", function() return Can_blast_or_smash("adult") end)


Child_Dodongos_Cavern_Before_Boss:connect_one_way_entrance("Child Dodongos Cavern Boss Door", Child_Dodongos_Cavern_Boss_Door)
Adult_Dodongos_Cavern_Before_Boss:connect_one_way_entrance("Adult Dodongos Cavern Boss Door", Adult_Dodongos_Cavern_Boss_Door)






-- --     {
--     "region_name": "Dodongos Cavern Beginning",
--     "dungeon": "Dodongos Cavern",
--     "exits": {
--         "Death Mountain": "True",
--         "Dodongos Cavern Lobby": "
--             here(can_blast_or_smash or Progressive_Strength_Upgrade) or
--             dodongos_cavern_shortcuts"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Lobby",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern MQ Map Chest": "can_blast_or_smash or Progressive_Strength_Upgrade",
--         "Dodongos Cavern MQ Deku Scrub Lobby Rear": "can_stun_deku",
--         "Dodongos Cavern MQ Deku Scrub Lobby Front": "can_stun_deku",
--         "Dodongos Cavern Gossip Stone": "here(can_blast_or_smash or Progressive_Strength_Upgrade)",
--         "Gossip Stone Fairy": "
--             (can_blast_or_smash or Progressive_Strength_Upgrade) and
--             can_summon_gossip_fairy and has_bottle"
--     },
--     "exits": {
--         "Dodongos Cavern Elevator": "here(can_blast_or_smash or Progressive_Strength_Upgrade)",
--         "Dodongos Cavern Lower Right Side": "here(can_blast_or_smash)",
--         "Dodongos Cavern Poes Room": "is_adult",
--         "Dodongos Cavern Mouth": "dodongos_cavern_shortcuts"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Elevator",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         # Regardless of how you destroy the boulder on the elevator switch,
--         # you will always be able to access the upper staircase in some way.
--         "Dodongos Cavern MQ Deku Scrub Staircase": "can_stun_deku",
--         "Dodongos Cavern MQ Staircase Pot 1": "True",
--         "Dodongos Cavern MQ Staircase Pot 2": "True",
--         "Dodongos Cavern MQ Staircase Pot 3": "True",
--         "Dodongos Cavern MQ Staircase Pot 4": "True",
--         "Dodongos Cavern MQ Staircase Crate Bottom Left": "True",
--         "Dodongos Cavern MQ Staircase Crate Bottom Right": "True",
--         "Dodongos Cavern MQ Staircase Crate Mid Left": "can_break_crate",
--         "Dodongos Cavern MQ Staircase Crate Mid Right": "can_break_crate",
--         "Dodongos Cavern MQ Staircase Crate Top Left": "can_break_crate",
--         "Dodongos Cavern MQ Staircase Crate Top Right": "can_break_crate",
--         "Dodongos Cavern MQ GS Song of Time Block Room": "
--             can_play(Song_of_Time) and (can_child_attack or is_adult)",
--         "Deku Baba Sticks": "is_adult or Kokiri_Sword or Boomerang"
--     },
--     "exits": {
--         "Dodongos Cavern Torch Puzzle Lower": "
--             (deadly_bonks != 'ohko' or can_use(Nayrus_Love) or can_blast_or_smash) and
--             (is_adult or can_child_attack or Nuts)",
--         "Dodongos Cavern Torch Puzzle Upper": "
--             here(can_blast_or_smash or can_use(Dins_Fire)) or
--             at('Dodongos Cavern Torch Puzzle Upper', Progressive_Strength_Upgrade)",
--         "Dodongos Cavern Poes Room": "
--             logic_dc_mq_child_bombs and (Kokiri_Sword or Sticks) and can_take_damage",
--         "Dodongos Cavern Mouth": "has_explosives"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Torch Puzzle Lower",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern MQ Compass Chest": "True",
--         "Dodongos Cavern MQ Torch Puzzle Room Recovery Heart": "True",
--         "Dodongos Cavern MQ Torch Puzzle Room Pot Pillar": "
--             can_use(Boomerang) or at('Dodongos Cavern Torch Puzzle Upper', True)"
--     },
--     "exits": {
--         "Dodongos Cavern Larvae Room": "has_fire_source_with_torch",
--         "Dodongos Cavern Before Upper Lizalfos": "has_fire_source_with_torch",
--         "Dodongos Cavern Torch Puzzle Upper": "
--             is_adult and (logic_dc_jump or Hover_Boots or Hookshot)"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Larvae Room",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern MQ Larvae Room Chest": "True",
--         "Dodongos Cavern MQ Larvae Room Crate 1": "can_break_crate",
--         "Dodongos Cavern MQ Larvae Room Crate 2": "can_break_crate",
--         "Dodongos Cavern MQ Larvae Room Crate 3": "can_break_crate",
--         "Dodongos Cavern MQ Larvae Room Crate 4": "can_break_crate",
--         "Dodongos Cavern MQ Larvae Room Crate 5": "can_break_crate",
--         "Dodongos Cavern MQ Larvae Room Crate 6": "can_break_crate",
--         "Dodongos Cavern MQ GS Larvae Room": "True"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Before Upper Lizalfos",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern MQ Before Upper Lizalfos Pot 1": "True",
--         "Dodongos Cavern MQ Before Upper Lizalfos Pot 2": "True"
--     },
--     "exits": {
--         "Dodongos Cavern Torch Puzzle Upper": "can_use(Sticks)"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Torch Puzzle Upper",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern MQ Torch Puzzle Room Chest": "True",
--         "Dodongos Cavern MQ Upper Lizalfos Pot 1": "True",
--         "Dodongos Cavern MQ Upper Lizalfos Pot 2": "True",
--         "Dodongos Cavern MQ Upper Lizalfos Pot 3": "True",
--         "Dodongos Cavern MQ Upper Lizalfos Pot 4": "True",
--         "Dodongos Cavern MQ After Upper Lizalfos Pot 1": "True",
--         "Dodongos Cavern MQ After Upper Lizalfos Pot 2": "True",
--         "Dodongos Cavern MQ Torch Puzzle Room Pot Corner": "True",
--         "Dodongos Cavern MQ After Upper Lizalfos Crate 1": "True",
--         "Dodongos Cavern MQ After Upper Lizalfos Crate 2": "True",
--         "Dodongos Cavern MQ GS Lizalfos Room": "can_blast_or_smash"
--     },
--     "exits": {
--         "Dodongos Cavern Torch Puzzle Lower": "True",
--         "Dodongos Cavern Before Upper Lizalfos": "is_adult or Slingshot or Bombs or Kokiri_Sword",
--         "Dodongos Cavern Lower Right Side": "Progressive_Strength_Upgrade and can_take_damage",
--         "Dodongos Cavern Lower Lizalfos": "has_explosives",
--         "Dodongos Cavern Mouth": "
--             Progressive_Strength_Upgrade and
--             here((logic_dc_mq_eyes_adult and is_adult) or (logic_dc_mq_eyes_child and is_child))"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Lower Right Side",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern MQ Deku Scrub Side Room Near Lower Lizalfos": "
--             (can_blast_or_smash or Progressive_Strength_Upgrade) and can_stun_deku",
--         "Dodongos Cavern MQ Right Side Pot 1": "True",
--         "Dodongos Cavern MQ Right Side Pot 2": "True",
--         "Dodongos Cavern MQ Right Side Pot 3": "True",
--         "Dodongos Cavern MQ Right Side Pot 4": "True"
--     },
--     "exits": {
--         "Dodongos Cavern Poes Room": "
--             (here(can_use(Bow)) or Progressive_Strength_Upgrade or
--                 can_use(Dins_Fire) or has_explosives) and
--             can_use(Slingshot)"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Lower Lizalfos",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern Lower Lizalfos Hidden Recovery Heart": "True"
--     },
--     "exits": {
--         # Child can fall down from above to reach Poes room, but Adult must defeat the
--         # lower Lizalfos here first, since they don't spawn when jumping down from above.
--         "Dodongos Cavern Poes Room": "here(is_adult)"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Poes Room",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern MQ Bomb Bag Chest": "True",
--         "Dodongos Cavern MQ Poes Room Pot 1": "True",
--         "Dodongos Cavern MQ Poes Room Pot 2": "True",
--         "Dodongos Cavern MQ Poes Room Pot 3": "True",
--         "Dodongos Cavern MQ Poes Room Pot 4": "True",
--         "Dodongos Cavern MQ Poes Room Crate 1": "can_break_crate or Progressive_Strength_Upgrade",
--         "Dodongos Cavern MQ Poes Room Crate 2": "can_break_crate or Progressive_Strength_Upgrade",
--         "Dodongos Cavern MQ Poes Room Crate 3": "can_break_crate or Progressive_Strength_Upgrade",
--         "Dodongos Cavern MQ Poes Room Crate 4": "can_break_crate or Progressive_Strength_Upgrade",
--         "Dodongos Cavern MQ Poes Room Crate 5": "can_break_crate or Progressive_Strength_Upgrade",
--         "Dodongos Cavern MQ Poes Room Crate 6": "can_break_crate or Progressive_Strength_Upgrade",
--         "Dodongos Cavern MQ Poes Room Crate 7": "can_break_crate or Progressive_Strength_Upgrade",
--         "Dodongos Cavern MQ Poes Room Crate Near Bomb Flower": "
--             can_break_crate or Progressive_Strength_Upgrade or can_use(Bow) or can_use(Dins_Fire)",
--         "Dodongos Cavern MQ GS Scrub Room": "
--             (here(can_use(Bow)) or Progressive_Strength_Upgrade or
--                 can_use(Dins_Fire) or has_explosives) and
--             (can_use(Hookshot) or can_use(Boomerang))"
--     },
--     "exits": {
--         "Dodongos Cavern Lower Right Side": "True",
--         "Dodongos Cavern Lower Lizalfos": "True"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Mouth",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern MQ Under Grave Chest": "True",
--         "Dodongos Cavern MQ Room Before Boss Pot 1": "True",
--         "Dodongos Cavern MQ Room Before Boss Pot 2": "True",
--         "Dodongos Cavern MQ Armos Army Room Pot 1": "True",
--         "Dodongos Cavern MQ Armos Army Room Pot 2": "True",
--         "Dodongos Cavern MQ Back Poe Room Pot 1": "True",
--         "Dodongos Cavern MQ Back Poe Room Pot 2": "True",
--         "Dodongos Cavern MQ GS Back Area": "
--             can_use(Boomerang) or
--             at('Dodongos Cavern Before Boss', is_adult or can_child_attack or
--                 Progressive_Strength_Upgrade)"
--     },
--     "exits": {
--         # The final line of this exit is for using an Armos to explode the bomb flowers.
--         "Dodongos Cavern Before Boss": "
--             is_adult or has_explosives or can_use(Dins_Fire) or dodongos_cavern_shortcuts or
--             Sticks or ((Nuts or Boomerang) and (Kokiri_Sword or Slingshot))"
--     }
-- },
-- {
--     "region_name": "Dodongos Cavern Before Boss",
--     "dungeon": "Dodongos Cavern",
--     "locations": {
--         "Dodongos Cavern MQ Armos Army Room Upper Pot": "True",
--         "Fairy Pot": "has_bottle"
--     },
--     "exits": {
--         "Dodongos Cavern Boss Door": "True"
--     }
-- }