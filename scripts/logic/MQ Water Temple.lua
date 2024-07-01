-- Child_Water_Temple_Lobby = OOTLocation.new("Child_Water_Temple_Lobby")
-- Child_Water_Temple_Dive = OOTLocation.new("Child_Water_Temple_Dive")
-- Child_Water_Temple_Lowered_Water_Levels = OOTLocation.new("Child_Water_Temple_Lowered_Water_Levels")
-- Child_Water_Temple_South_Basement = OOTLocation.new("Child_Water_Temple_South_Basement")
-- Child_Water_Temple_Middle_Water_Level = OOTLocation.new("Child_Water_Temple_Middle_Water_Level")
-- Child_Water_Temple_Cracked_Wall = OOTLocation.new("Child_Water_Temple_Cracked_Wall")
-- Child_Water_Temple_Central_Bow_Target = OOTLocation.new("Child_Water_Temple_Central_Bow_Target")
-- Child_Water_Temple_North_Basement = OOTLocation.new("Child_Water_Temple_North_Basement")
-- Child_Water_Temple_Boss_Key_Chest_Room = OOTLocation.new("Child_Water_Temple_Boss_Key_Chest_Room")
-- Child_Water_Temple_Falling_Platform_Room = OOTLocation.new("Child_Water_Temple_Falling_Platform_Room")
-- Child_Water_Temple_Dark_Link_Region = OOTLocation.new("Child_Water_Temple_Dark_Link_Region")
-- Child_Water_Temple_River = OOTLocation.new("Child_Water_Temple_River")
-- Child_Water_Temple_Dragon_Statue = OOTLocation.new("Child_Water_Temple_Dragon_Statue")

-- Adult_Water_Temple_Lobby = OOTLocation.new("Adult_Water_Temple_Lobby")
-- Adult_Water_Temple_Dive = OOTLocation.new("Adult_Water_Temple_Dive")
-- Adult_Water_Temple_Lowered_Water_Levels = OOTLocation.new("Adult_Water_Temple_Lowered_Water_Levels")
-- Adult_Water_Temple_South_Basement = OOTLocation.new("Adult_Water_Temple_South_Basement")
-- Adult_Water_Temple_Middle_Water_Level = OOTLocation.new("Adult_Water_Temple_Middle_Water_Level")
-- Adult_Water_Temple_Cracked_Wall = OOTLocation.new("Adult_Water_Temple_Cracked_Wall")
-- Adult_Water_Temple_Central_Bow_Target = OOTLocation.new("Adult_Water_Temple_Central_Bow_Target")
-- Adult_Water_Temple_North_Basement = OOTLocation.new("Adult_Water_Temple_North_Basement")
-- Adult_Water_Temple_Boss_Key_Chest_Room = OOTLocation.new("Adult_Water_Temple_Boss_Key_Chest_Room")
-- Adult_Water_Temple_Falling_Platform_Room = OOTLocation.new("Adult_Water_Temple_Falling_Platform_Room")
-- Adult_Water_Temple_Dark_Link_Region = OOTLocation.new("Adult_Water_Temple_Dark_Link_Region")
-- Adult_Water_Temple_River = OOTLocation.new("Adult_Water_Temple_River")
-- Adult_Water_Temple_Dragon_Statue = OOTLocation.new("Adult_Water_Temple_Dragon_Statue")

Child_Water_Temple_Lobby:connect_one_way("Child Water Temple Main Room L2 Pot 1", function() 
    return Any(
        CanReach('Child_Water_Temple_Lowered_Water_Levels'),
        CanReach('Child_Water_Temple_Lowered_Water_Levels'),
        Can_use("Boomerang", "child"),
        All(
            Any(
                Can_use("IronBoots", "child"),
                Has("GoldenScale")
            ),
            Any(
                Can_use("Bow", "child"),
                Can_use("Hookshot", "child"),
                Can_use("Slingshot" , "child")
            ),
            Any(
                Can_use("ZoraTunic"),
                Has("logic_fewer_tunic_requirements")
            )
        )
    )
end)
Child_Water_Temple_Lobby:connect_one_way("Child Water Temple Main Room L2 Pot 2", function() 
    return Any(
        CanReach('Child_Water_Temple_Lowered_Water_Levels'),
        CanReach('Child_Water_Temple_Lowered_Water_Levels'),
        Can_use("Boomerang", "child"),
        All(
            Any(
                Can_use("IronBoots", "child"),
                Has("GoldenScale")
            ),
            Any(
                Can_use("Bow", "child"), 
                Can_use("Hookshot", "child"),
                Can_use("Slingshot", "child")
            ),
            Any(
                Can_use("ZoraTunic", "child"),
                Has("logic_fewer_tunic_requirements")
            )
        )
    )
end)

Adult_Water_Temple_Lobby:connect_one_way("Adult Water Temple Main Room L2 Pot 1", function() 
    return Any(
        CanReach('Adult_Water_Temple_Lowered_Water_Levels'),
        CanReach('Adult_Water_Temple_Lowered_Water_Levels'),
        Can_use("Boomerang", "adult"),
        All(
            Any(
                Can_use("IronBoots", "adult"),
                Has("GoldenScale")
            ),
            Any(
                Can_use("Bow", "adult"),
                Can_use("Hookshot", "adult"),
                Can_use("Slingshot" , "adult")
            ),
            Any(
                Can_use("ZoraTunic"),
                Has("logic_fewer_tunic_requirements")
            )
        )
    )
end)
Adult_Water_Temple_Lobby:connect_one_way("Adult Water Temple Main Room L2 Pot 2", function() 
    return Any(
        CanReach('Adult_Water_Temple_Lowered_Water_Levels'),
        CanReach('Adult_Water_Temple_Lowered_Water_Levels'),
        Can_use("Boomerang", "adult"),
        All(
            Any(
                Can_use("IronBoots", "adult"),
                Has("GoldenScale")
            ),
            Any(
                Can_use("Bow", "adult"), 
                Can_use("Hookshot", "adult"),
                Can_use("Slingshot", "adult")
            ),
            Any(
                Can_use("ZoraTunic", "adult"),
                Has("logic_fewer_tunic_requirements")
            )
        )
    )
end)


Child_Water_Temple_Lobby:connect_one_way_entrance("Child Lake Hylia", Child_Lake_Hylia)
Child_Water_Temple_Lobby:connect_one_way_entrance("Child Water Temple Dive", Child_Water_Temple_Dive, function() 
    return All(
        false,
        Any(
            Can_use("ZoraTunic", "child"),
            Has("logic_fewer_tunic_requirements")
        ),
        Any(
            All(
                Has("logic_water_temple_torch_longshot"),
                Can_use("Longshot", "child")
            ),
            Has("IronBoots")
        )
    ) 
end)
Child_Water_Temple_Lobby:connect_one_way_entrance("Child Water Temple Falling Platform Room", Child_Water_Temple_Falling_Platform_Room, function() 
    return All(
        All(
            CanReach(Child_Water_Temple_Lobby),
            Any(
                All(
                    true,
                    Any(
                        Can_use("Hookshot", "child"),
                        Has("HoverBoots"),
                        Can_use("Bow", "child")
                    )
                ),
                All(
                    Has_fire_source_with_torch("child"),
                    Can_use_projectile()
                )
            )
        ),
        Has("Small_Key_Water_Temple", 4)
    ) 
end)
Child_Water_Temple_Lobby:connect_one_way_entrance("Child Water Temple Boss Door", Child_Water_Temple_Boss_Door, function() 
    return Can_use("Longshot", "child") end)

Adult_Water_Temple_Lobby:connect_one_way_entrance("Adult Lake Hylia", Adult_Lake_Hylia)
Adult_Water_Temple_Lobby:connect_one_way_entrance("Adult Water Temple Dive", Adult_Water_Temple_Dive, function() 
    return All(
        true,
        Any(
            Can_use("ZoraTunic", "adult"),
            Has("logic_fewer_tunic_requirements")
        ),
        Any(
            All(
                Has("logic_water_temple_torch_longshot"),
                Can_use("Longshot", "adult")
            ),
            Has("IronBoots")
        )
    ) 
end)
Adult_Water_Temple_Lobby:connect_one_way_entrance("Adult Water Temple Falling Platform Room", Adult_Water_Temple_Falling_Platform_Room, function() 
    return All(
        All(
            CanReach(Adult_Water_Temple_Lobby),
            Any(
                All(
                    true,
                    Any(
                        Can_use("Hookshot", "adult"),
                        Has("HoverBoots"),
                        Can_use("Bow", "adult")
                    )
                ),
                All(
                    Has_fire_source_with_torch("adult"),
                    Can_use_projectile()
                )
            )
        ),
        Has("Small_Key_Water_Temple", 4)
    ) 
end)
Adult_Water_Temple_Lobby:connect_one_way_entrance("Adult Water Temple Boss Door", Adult_Water_Temple_Boss_Door, function() 
    return Can_use("Longshot", "adult") end)


Child_Water_Temple_Dive:connect_one_way("Child Water Temple Map Chest", function() 
    return All(
        CanReach(Child_Water_Temple_Lobby),
        Any(
            All(
                true,
                Any(
                    Can_use("Hookshot", "child"),
                    Has("HoverBoots"),
                    Can_use("Bow", "child")
                )
            ),
            All(
                Has_fire_source_with_torch("child"),
                Can_use_projectile()
            )
        )
    ) 
end)
Child_Water_Temple_Dive:connect_one_way("Child Water Temple Compass Chest", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Has("IronBoots")
        ),
        Can_use("Hookshot", "child")
    ) 
end)
Child_Water_Temple_Dive:connect_one_way("Child Water Temple L1 Torch Pot 1", function() 
    return Any(
        All(
            Has("IronBoots"),
            Can_use("Hookshot", "child")
        ),
        Can_play("ZeldasLullaby")
    ) 
end)
Child_Water_Temple_Dive:connect_one_way("Child Water Temple L1 Torch Pot 2", function() 
    return Any(
        All(
            Has("IronBoots"),
            Can_use("Hookshot", "child")
        ),
        Can_play("ZeldasLullaby")
    ) 
end)
Child_Water_Temple_Dive:connect_one_way("Child Water Temple Near Compass Pot 1", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Has("IronBoots")
        ),
        Can_use("Hookshot", "child")
    ) 
end)
Child_Water_Temple_Dive:connect_one_way("Child Water Temple Near Compass Pot 2", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Has("IronBoots")
        ),
        Can_use("Hookshot", "child")
    ) 
end)
Child_Water_Temple_Dive:connect_one_way("Child Water Temple Near Compass Pot 3", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Has("IronBoots")
        ),
        Can_use("Hookshot", "child")
    ) 
end)

Adult_Water_Temple_Dive:connect_one_way("Adult Water Temple Map Chest", function() 
    return All(
        CanReach(Adult_Water_Temple_Lobby),
        Any(
            All(
                true,
                Any(
                    Can_use("Hookshot", "adult"),
                    Has("HoverBoots"),
                    Can_use("Bow", "adult")
                )
            ),
            All(
                Has_fire_source_with_torch("adult"),
                Can_use_projectile()
            )
        )
    ) 
end)
Adult_Water_Temple_Dive:connect_one_way("Adult Water Temple Compass Chest", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Has("IronBoots")
        ),
        Can_use("Hookshot", "adult")
    ) 
end)
Adult_Water_Temple_Dive:connect_one_way("Adult Water Temple L1 Torch Pot 1", function() 
    return Any(
        All(
            Has("IronBoots"),
            Can_use("Hookshot", "adult")
        ),
        Can_play("ZeldasLullaby")
    ) 
end)
Adult_Water_Temple_Dive:connect_one_way("Adult Water Temple L1 Torch Pot 2", function() 
    return Any(
        All(
            Has("IronBoots"),
            Can_use("Hookshot", "adult")
        ),
        Can_play("ZeldasLullaby")
    ) 
end)
Adult_Water_Temple_Dive:connect_one_way("Adult Water Temple Near Compass Pot 1", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Has("IronBoots")
        ),
        Can_use("Hookshot", "adult")
    ) 
end)
Adult_Water_Temple_Dive:connect_one_way("Adult Water Temple Near Compass Pot 2", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Has("IronBoots")
        ),
        Can_use("Hookshot", "adult")
    ) 
end)
Adult_Water_Temple_Dive:connect_one_way("Adult Water Temple Near Compass Pot 3", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Has("IronBoots")
        ),
        Can_use("Hookshot", "adult")
    ) 
end)


Child_Water_Temple_Dive:connect_one_way_entrance("Child Water Temple Lowered Water Levels", Child_Water_Temple_Lowered_Water_Levels, function() return Can_play("ZeldasLullaby") end)
Child_Water_Temple_Dive:connect_one_way_entrance("Child Water Temple Lowered Water Levels", Child_Water_Temple_Lowered_Water_Levels, function() return Can_play("ZeldasLullaby") end)
Child_Water_Temple_Dive:connect_one_way_entrance("Child Water Temple North Basement", Child_Water_Temple_North_Basement, function() 
    return All(
        Any(
        Has("IronBoots"),
        Can_play("ZeldasLullaby")
        ),
        Any(
            Can_use("Longshot", "child"),
            All(
                Has("logic_water_boss_key_region"),
                Has("HoverBoots")
            )
        ),
        Has("Small_Key_Water_Temple", 4)
    )
end)

Adult_Water_Temple_Dive:connect_one_way_entrance("Adult Water Temple Lowered Water Levels", Adult_Water_Temple_Lowered_Water_Levels, function() return Can_play("ZeldasLullaby") end)
Adult_Water_Temple_Dive:connect_one_way_entrance("Adult Water Temple Lowered Water Levels", Adult_Water_Temple_Lowered_Water_Levels, function() return Can_play("ZeldasLullaby") end)
Adult_Water_Temple_Dive:connect_one_way_entrance("Adult Water Temple North Basement", Adult_Water_Temple_North_Basement, function() 
    return All(
        Any(
        Has("IronBoots"),
        Can_play("ZeldasLullaby")
        ),
        Any(
            Can_use("Longshot", "adult"),
            All(
                Has("logic_water_boss_key_region"),
                Has("HoverBoots")
            )
        ),
        Has("Small_Key_Water_Temple", 4)
    )
end)


Child_Water_Temple_Lowered_Water_Levels:connect_one_way("Child Water Temple Torches Chest", function()
    return Any(
        Can_use("Bow", "child"),
        Can_use("DinsFire", "child"),
        All(
            true,
            Can_use("DekuSticks", "child"),
            Can_use("KokiriSword", "child"),
            Tracker:FindObjectForCode("MagicMeter").Active
        )
    )
end)
Child_Water_Temple_Lowered_Water_Levels:connect_one_way("Child Water Temple GS Central Pillar", function()
    return Any(
        All(
            Can_use("Longshot", "child"),
            All(
                Has("logic_water_central_gs_fw"),
                Can_use("Hookshot", "child"),
                Can_use("FaroresWind", "child")
            ),
            Any(
                Has("Small_Key_Water_Temple", 5),
                Can_use("Bow", "child"),
                Can_use("DinsFire", "child")
            )
        ),
        All(
            Has("logic_water_central_gs_irons"),
            Can_use("Hookshot", "child"),
            Has("IronBoots"),
            Any(
                Can_use("Bow", "child"),
                Can_use("DinsFire", "child")
            )
        ),
        All(
            Has("logic_water_central_gs_fw"),
            true,
            Can_use("Boomerang", "child"),
            Can_use("FaroresWind", "child"),
            All(
                CanReach(Child_Water_Temple_Lobby),
                Any(
                    All(
                        true,
                        Any(
                            Can_use("Hookshot", "child"),
                            Has("HoverBoots"),
                            Can_use("Bow", "child")
                        )
                    ),
                    All(
                        Has_fire_source_with_torch("child"),
                        Can_use_projectile()
                    )
                )
            ),
            Any(
                Has("Small_Key_Water_Temple", 5),
                Can_use("DekuSticks", "child"),
                Can_use("DinsFire", "child")
            )
        )
    )
end)

Adult_Water_Temple_Lowered_Water_Levels:connect_one_way("Adult Water Temple Torches Chest", function()
    return Any(
        Can_use("Bow", "adult"),
        Can_use("DinsFire", "adult"),
        Can_use("DinsFire", "adult"),
        All(
            false,
            Can_use("DekuSticks", "adult"),
            Can_use("KokiriSword", "adult"),
            Tracker:FindObjectForCode("MagicMeter").Active
        )
    )
end)
Adult_Water_Temple_Lowered_Water_Levels:connect_one_way("Adult Water Temple GS Central Pillar", function()
    return Any(
        All(
            Can_use("Longshot", "adult"),
            All(
                Has("logic_water_central_gs_fw"),
                Can_use("Hookshot", "adult"),
                Can_use("FaroresWind", "adult")
            ),
            Any(
                Has("Small_Key_Water_Temple", 5),
                Can_use("Bow", "adult"),
                Can_use("DinsFire", "adult")
            )
        ),
        All(
            Has("logic_water_central_gs_irons"),
            Can_use("Hookshot", "adult"),
            Has("IronBoots"),
            Any(
                Can_use("Bow", "adult"),
                Can_use("DinsFire", "adult")
            )
        ),
        All(
            Has("logic_water_central_gs_fw"),
            false,
            Can_use("Boomerang", "adult"),
            Can_use("FaroresWind", "adult"),
            All(
                CanReach(Adult_Water_Temple_Lobby),
                Any(
                    All(
                        true,
                        Any(
                            Can_use("Hookshot", "adult"),
                            Has("HoverBoots"),
                            Can_use("Bow", "adult")
                        )
                    ),
                    All(
                        Has_fire_source_with_torch("adult"),
                        Can_use_projectile()
                    )
                )
            ),
            Any(
                Has("Small_Key_Water_Temple", 5),
                Can_use("DekuSticks", "adult"),
                Can_use("DinsFire", "adult")
            )
        )
    )
end)


Child_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Child Water Temple South Basement", Child_Water_Temple_South_Basement, function() 
    return All(
        Has_explosives(),
        Any(
            Has("IronBoots"),
            Can_dive()
        ),
        Any(
            Can_use("Hookshot", "child"),
            Has("HoverBoots")
        )
    )
end)
Child_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Child Water Temple Middle Water Level", Child_Water_Temple_Middle_Water_Level, function() 
    return Any(
        Can_use("Bow", "chid"),
        Can_use("DinsFire"),
        All(
            true,
            Can_use("DekuSticks", "child")
        ),
        All(
            Has("Small_Key_Water_Temple", 5),
            Can_use("Hookshot", "child")
        )
    )
end)
Child_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Child Water Temple Cracked Wall", Child_Water_Temple_Cracked_Wall, function() 
    return All(
        All(
            CanReach(Child_Water_Temple_Lobby),
            Any(
                All(
                    true,
                    Any(
                        Can_use("Hookshot", "child"),
                        Has("HoverBoots"),
                        Can_use("Bow", "child")
                    )
                ),
                All(
                    Has_fire_source_with_torch("child"),
                    Can_use_projectile()
                )
            )
        ),
        Any(
            Has("logic_water_cracked_wall_nothing"),
            All(
                Has("logic_water_cracked_wall_hovers"),
                Has("HoverBoots")
            )
        )
    )
end)
Child_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Child Water Temple Central Bow Target", Child_Water_Temple_Central_Bow_Target, function() 
    return All(
        Has("ProgressiveStrengthUpgrade"),
        Can_use("Bow", "child"),
        Any(
            Has("logic_water_central_bow"),
            Has("HoverBoots"),
            Can_use("Longshot", "child")
        )
    )
end)
Child_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Child Water Temple Dragon Statue", Child_Water_Temple_Dragon_Statue, function() 
    return All(
        Has("ProgressiveStrengthUpgrade"),
        Any(
            All(
                Has("IronBoots"),
                Can_use("Hookshot", "child")
            ),
            All(
                Has("logic_water_dragon_adult"),
                Any(
                    Has_bombchus(),
                    Can_use("Bow", "child"),
                    Can_use("Hookshot", "child")
                ),
                Any(
                    Can_dive(),
                    Has("IronBoots")
                )
            ),
            All(
                Has("logic_water_dragon_child"),
                true,
                Any(
                    Has_bombchus(),
                    Can_use("Slingshot", "child"),
                    Can_use("Boomerang", "child")
                ),
                Can_dive()
            )
        )
    )
end)

Adult_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Adult Water Temple South Basement", Adult_Water_Temple_South_Basement, function() 
    return All(
        Has_explosives(),
        Any(
            Has("IronBoots"),
            Can_dive()
        ),
        Any(
            Can_use("Hookshot", "adult"),
            Has("HoverBoots")
        )
    )
end)
Adult_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Adult Water Temple Middle Water Level", Adult_Water_Temple_Middle_Water_Level, function() 
    return Any(
        Can_use("Bow", "adult"),
        Can_use("DinsFire"),
        All(
            false,
            Can_use("DekuSticks", "adult")
        ),
        All(
            Has("Small_Key_Water_Temple", 5),
            Can_use("Hookshot", "adult")
        )
    )
end)
Adult_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Adult Water Temple Cracked Wall", Adult_Water_Temple_Cracked_Wall, function() 
    return All(
        All(
    CanReach(Adult_Water_Temple_Lobby),
    Any(
        All(
            true,
            Any(
                Can_use("Hookshot", "adult"),
                Has("HoverBoots"),
                Can_use("Bow", "adult")
            )
        ),
        All(
            Has_fire_source_with_torch("adult"),
            Can_use_projectile()
        )
    )
),
        Any(
            Has("logic_water_cracked_wall_nothing"),
            All(
                Has("logic_water_cracked_wall_hovers"),
                Has("HoverBoots")
            )
        )
    )
end)
Adult_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Adult Water Temple Central Bow Target", Adult_Water_Temple_Central_Bow_Target, function() 
    return All(
        Has("ProgressiveStrengthUpgrade"),
        Can_use("Bow", "adult"),
        Any(
            Has("logic_water_central_bow"),
            Has("HoverBoots"),
            Can_use("Longshot", "adult")
        )
    )
end)
Adult_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Adult Water Temple Dragon Statue", Adult_Water_Temple_Dragon_Statue, function() 
    return All(
        Has("ProgressiveStrengthUpgrade"),
        Any(
            All(
                Has("IronBoots"),
                Can_use("Hookshot", "adult")
            ),
            All(
                Has("logic_water_dragon_adult"),
                Any(
                    Has_bombchus(),
                    Can_use("Bow", "adult"),
                    Can_use("Hookshot", "adult")
                ),
                Any(
                    Can_dive(),
                    Has("IronBoots")
                )
            ),
            All(
                Has("logic_water_dragon_child"),
                false,
                Any(
                    Has_bombchus(),
                    Can_use("Slingshot", "adult"),
                    Can_use("Boomerang", "adult")
                ),
                Can_dive()
            )
        )
    )
end)


Child_Water_Temple_South_Basement:connect_one_way("Child Water Temple Behind Gate Pot 1")
Child_Water_Temple_South_Basement:connect_one_way("Child Water Temple Behind Gate Pot 2")
Child_Water_Temple_South_Basement:connect_one_way("Child Water Temple Behind Gate Pot 3")
Child_Water_Temple_South_Basement:connect_one_way("Child Water Temple Behind Gate Pot 4")
Child_Water_Temple_South_Basement:connect_one_way("Child Water Temple GS Behind Gate")

Adult_Water_Temple_South_Basement:connect_one_way("Adult Water Temple Behind Gate Pot 1")
Adult_Water_Temple_South_Basement:connect_one_way("Adult Water Temple Behind Gate Pot 2")
Adult_Water_Temple_South_Basement:connect_one_way("Adult Water Temple Behind Gate Pot 3")
Adult_Water_Temple_South_Basement:connect_one_way("Adult Water Temple Behind Gate Pot 4")
Adult_Water_Temple_South_Basement:connect_one_way("Adult Water Temple GS Behind Gate")


-- Child_Water_Temple_South_Basement:connect_one_way_entrance()
-- Adult_Water_Temple_South_Basement:connect_one_way_entrance()

Child_Water_Temple_Middle_Water_Level:connect_one_way("Child Water Temple Central Pillar Chest", function() 
    return All(
        Any(
            Has("Small_Key_Water_Temple", 5),
            Can_use("Bow", "child"),
            Can_use("DinsFire")
        ),
        Has("IronBoots"),
        Can_use("ZoraTunic", "child"),
        Can_use("Hookshot", "child")
    )
end)
Adult_Water_Temple_Middle_Water_Level:connect_one_way("Adult Water Temple Central Pillar Chest", function() 
    return All(
        Any(
            Has("Small_Key_Water_Temple", 5),
            Can_use("Bow", "adult"),
            Can_use("DinsFire")
        ),
        Has("IronBoots"),
        Can_use("ZoraTunic", "adult"),
        Can_use("Hookshot", "adult")
    )
end)

Child_Water_Temple_Middle_Water_Level:connect_one_way_entrance("Child Water Temple Cracked Wall", Child_Water_Temple_Cracked_Wall)
Child_Water_Temple_Middle_Water_Level:connect_one_way_entrance("Child Water Temple Central Bow Target", Child_Water_Temple_Central_Bow_Target, function() 
    return All(
        Has("ProgressiveStrengthUpgrade"),
        Has("logic_water_central_bow"),
        true,
        Can_use("Slingshot", "child")
    )
end)

Adult_Water_Temple_Middle_Water_Level:connect_one_way_entrance("Adult Water Temple Cracked Wall", Adult_Water_Temple_Cracked_Wall)
Adult_Water_Temple_Middle_Water_Level:connect_one_way_entrance("Adult Water Temple Central Bow Target", Adult_Water_Temple_Central_Bow_Target, function() 
    return All(
        Has("ProgressiveStrengthUpgrade"),
        Has("logic_water_central_bow"),
        false,
        Can_use("Slingshot", "adult")
    )
end)


Child_Water_Temple_Cracked_Wall:connect_one_way("Child Water Temple Cracked Wall Chest", function() return Has_explosives() end)
Adult_Water_Temple_Cracked_Wall:connect_one_way("Adult Water Temple Cracked Wall Chest", function() return Has_explosives() end)

-- Child_Water_Temple_Cracked_Wall:connect_one_way_entrance()
-- Adult_Water_Temple_Cracked_Wall:connect_one_way_entrance()

Child_Water_Temple_Central_Bow_Target:connect_one_way("Child Water Temple Central Bow Target Chest")
Child_Water_Temple_Central_Bow_Target:connect_one_way("Child Water Temple Central Bow Target Pot 1")
Child_Water_Temple_Central_Bow_Target:connect_one_way("Child Water Temple Central Bow Target Pot 2")

Adult_Water_Temple_Central_Bow_Target:connect_one_way("Adult Water Temple Central Bow Target Chest")
Adult_Water_Temple_Central_Bow_Target:connect_one_way("Adult Water Temple Central Bow Target Pot 1")
Adult_Water_Temple_Central_Bow_Target:connect_one_way("Adult Water Temple Central Bow Target Pot 2")


-- Child_Water_Temple_Central_Bow_Target:connect_one_way_entrance()
-- Adult_Water_Temple_Central_Bow_Target:connect_one_way_entrance()

Child_Water_Temple_North_Basement:connect_one_way("Child Water Temple North Basement Block Puzzle Pot 1")
Child_Water_Temple_North_Basement:connect_one_way("Child Water Temple North Basement Block Puzzle Pot 2")
Child_Water_Temple_North_Basement:connect_one_way("Child Water Temple GS Near Boss Key Chest")

Adult_Water_Temple_North_Basement:connect_one_way("Adult Water Temple North Basement Block Puzzle Pot 1")
Adult_Water_Temple_North_Basement:connect_one_way("Adult Water Temple North Basement Block Puzzle Pot 2")
Adult_Water_Temple_North_Basement:connect_one_way("Adult Water Temple GS Near Boss Key Chest")


Child_Water_Temple_North_Basement:connect_one_way_entrance("Child Water Temple Boss Key Chest Room", Child_Water_Temple_Boss_Key_Chest_Room ,function() 
    return All(
        Has("Small_Key_Water_Temple", 5),
        Any(
            Has("logic_water_bk_jump_dive"),
            Has("IronBoots")
        ),
        Any(
            Has("logic_water_north_basement_ledge_jump"),
            Has("HoverBoots"),
            All(
                Has_explosives(),
                Has("ProgressiveStrengthUpgrade")
            )
        )
    )
end)
Adult_Water_Temple_North_Basement:connect_one_way_entrance("Adult Water Temple Boss Key Chest Room", Adult_Water_Temple_Boss_Key_Chest_Room ,function() 
    return All(
        Has("Small_Key_Water_Temple", 5),
        Any(
            Has("logic_water_bk_jump_dive"),
            Has("IronBoots")
        ),
        Any(
            Has("logic_water_north_basement_ledge_jump"),
            Has("HoverBoots"),
            All(
                Has_explosives(),
                Has("ProgressiveStrengthUpgrade")
            )
        )
    )
end)

Child_Water_Temple_Boss_Key_Chest_Room:connect_one_way("Child Water Temple Boss Key Chest")
Adult_Water_Temple_Boss_Key_Chest_Room:connect_one_way("Adult Water Temple Boss Key Chest")

-- Child_Water_Temple_Boss_Key_Chest_Room:connect_one_way_entrance()
-- Adult_Water_Temple_Boss_Key_Chest_Room:connect_one_way_entrance()

Child_Water_Temple_Falling_Platform_Room:connect_one_way("Child Water Temple GS Falling Platform Room", function() 
    return Any(
        Can_use("Longshot", "child"),
        All(
            Has("logic_water_falling_platform_gs_hookshot"),
            Can_use("Hookshot", "child")
        ),
        All(
            Has("logic_water_falling_platform_gs_boomerang"),
            Can_use("Boomerang", "child")
        )
    )
end)
Adult_Water_Temple_Falling_Platform_Room:connect_one_way("Adult Water Temple GS Falling Platform Room", function() 
    return Any(
        Can_use("Longshot", "adult"),
        All(
            Has("logic_water_falling_platform_gs_hookshot"),
            Can_use("Hookshot", "adult")
        ),
        All(
            Has("logic_water_falling_platform_gs_boomerang"),
            Can_use("Boomerang", "adult")
        )
    )
end)

Child_Water_Temple_Falling_Platform_Room:connect_one_way_entrance("Child Water Temple Dark Link Region", Child_Water_Temple_Dark_Link_Region, function() 
    return All(
        Can_use("Hookshot", "child"),
        Has("Small_Key_Water_Temple", 5)
    ) 
end)
Adult_Water_Temple_Falling_Platform_Room:connect_one_way_entrance("Adult Water Temple Dark Link Region", Adult_Water_Temple_Dark_Link_Region, function() 
    return All(
        Can_use("Hookshot", "adult"),
        Has("Small_Key_Water_Temple", 5)
    ) 
end)

Child_Water_Temple_Dark_Link_Region:connect_one_way("Child Water Temple Longshot Chest")
Child_Water_Temple_Dark_Link_Region:connect_one_way("Child Water Temple Like Like Pot 1")
Child_Water_Temple_Dark_Link_Region:connect_one_way("Child Water Temple Like Like Pot 2")

Adult_Water_Temple_Dark_Link_Region:connect_one_way("Adult Water Temple Longshot Chest")
Adult_Water_Temple_Dark_Link_Region:connect_one_way("Adult Water Temple Like Like Pot 1")
Adult_Water_Temple_Dark_Link_Region:connect_one_way("Adult Water Temple Like Like Pot 2")


Child_Water_Temple_Dark_Link_Region:connect_one_way_entrance("Child Water Temple River", Child_Water_Temple_River, function() return Can_play("SongofTime") end)
Adult_Water_Temple_Dark_Link_Region:connect_one_way_entrance("Adult Water Temple River", Adult_Water_Temple_River, function() return Can_play("SongofTime") end)

Child_Water_Temple_River:connect_one_way("Child Water Temple River Chest")
Child_Water_Temple_River:connect_one_way("Child Water Temple River Recovery Heart 1")
Child_Water_Temple_River:connect_one_way("Child Water Temple River Recovery Heart 2")
Child_Water_Temple_River:connect_one_way("Child Water Temple River Recovery Heart 3")
Child_Water_Temple_River:connect_one_way("Child Water Temple River Recovery Heart 4")
Child_Water_Temple_River:connect_one_way("Child Water Temple River Pot 1")
Child_Water_Temple_River:connect_one_way("Child Water Temple GS River", function() 
    return Any(
        All(
            Has("IronBoots"),
            Any(
                Can_use("ZoraTunic", "child"),
                Has("logic_fewer_tunic_requirements")
            )
        ),
        All(
            Has("logic_water_river_gs"),
            Can_use("Longshot", "child"),
            Any(
                Can_use("Bow", "child"),
                Has_bombchus()
            )
        )
    )
end)

Adult_Water_Temple_River:connect_one_way("Adult Water Temple River Chest")
Adult_Water_Temple_River:connect_one_way("Adult Water Temple River Recovery Heart 1")
Adult_Water_Temple_River:connect_one_way("Adult Water Temple River Recovery Heart 2")
Adult_Water_Temple_River:connect_one_way("Adult Water Temple River Recovery Heart 3")
Adult_Water_Temple_River:connect_one_way("Adult Water Temple River Recovery Heart 4")
Adult_Water_Temple_River:connect_one_way("Adult Water Temple River Pot 1")
Adult_Water_Temple_River:connect_one_way("Adult Water Temple GS River", function() 
    return Any(
        All(
            Has("IronBoots"),
            Any(
                Can_use("ZoraTunic", "adult"),
                Has("logic_fewer_tunic_requirements")
            )
        ),
        All(
            Has("logic_water_river_gs"),
            Can_use("Longshot", "adult"),
            Any(
                Can_use("Bow", "adult"),
                Has_bombchus()
            )
        )
    )
end)


Child_Water_Temple_River:connect_one_way_entrance("Child Water Temple Dragon Statue", Child_Water_Temple_Dragon_Statue, function() 
    return All(
        Can_use("Bow", "child"),
        Any(
            Can_use("ZoraTunic", "child"),
            Has("logic_fewer_tunic_requirements")
        ),
        Any(
            Has("IronBoots"),
            Has("logic_water_dragon_jump_dive"),
            Has("logic_water_dragon_adult")
        )
    )
end)
Adult_Water_Temple_River:connect_one_way_entrance("Adult Water Temple Dragon Statue", Adult_Water_Temple_Dragon_Statue, function() 
    return All(
        Can_use("Bow", "adult"),
        Any(
            Can_use("ZoraTunic", "adult"),
            Has("logic_fewer_tunic_requirements")
        ),
        Any(
            Has("IronBoots"),
            Has("logic_water_dragon_jump_dive"),
            Has("logic_water_dragon_adult")
        )
    )
end)

Child_Water_Temple_Dragon_Statue:connect_one_way("Child Water Temple Dragon Chest")
Adult_Water_Temple_Dragon_Statue:connect_one_way("Adult Water Temple Dragon Chest")

-- Child_Water_Temple_Dragon_Statue:connect_one_way_entrance()
-- Adult_Water_Temple_Dragon_Statue:connect_one_way_entrance()












-- All(
--     CanReach(Water_Temple_Lobby),
--     Any(
--         All(
--             is_adult,
--             Any(
--                 Can_use("Hookshot", ""),
--                 Has("HoverBoots"),
--                 Can_use("Bow", ""),
--             )
--         ),
--         All(
--             Has_fire_source_with_torch(""),
--             Can_use_projectile()
--         )
--     )
-- )






--     {
--         "region_name": "Water Temple Lobby",
--         "dungeon": "Water Temple",
--         "events": {
--             # Child can access only falling platform room and L2 pots as the sole entrant into the temple
--             # Use Child_Water_Temple for cases where child assists after the water is lowered
--             "Child Water Temple": "is_child",
-- --             # Use All(
--     CanReach(Water_Temple_Lobby),
--     Any(
--         All(
--             is_adult,
--             Any(
--                 Can_use("Hookshot", ""),
--                 Has("HoverBoots"),
--                 Can_use("Bow", ""),
--             )
--         ),
--         All(
--             Has_fire_source_with_torch(""),
--             Can_use_projectile()
--         )
--     )
-- ) to ensure the water level can be raised if it were to be lowered.
--             "Raise Water Level": "
--                 (is_adult and (Hookshot or Has("HoverBoots") or Bow)) or
--                 (has_fire_source_with_torch and can_use_projectile)"
--         },
--         "locations": {
--             "Water Temple Main Room L2 Pot 1": "
--                 at('Water Temple Lowered Water Levels', True) or can_use(Boomerang) or
--                 "((can_use(Has("IronBoots")) or (Progressive_Scale, 2)) and
--                     (can_use(Bow) or can_use(Hookshot) or can_use(Slingshot)) and
--                    " (can_use(Zora_Tunic) or logic_fewer_tunic_requirements))", 
--             "Water Temple Main Room L2 Pot 2": "
--                 at('Water Temple Lowered Water Levels', True) or can_use(Boomerang) or
--              "   ((can_use(Has("IronBoots")) or (Progressive_Scale, 2)) and
--                     (can_use(Bow) or can_use(Hookshot) or can_use(Slingshot)) and
--                  "   (can_use(Zora_Tunic) or logic_fewer_tunic_requirements))",
--             "Fairy Pot": "has_bottle and can_use(Longshot)"
--         },
--         "exits": {
--             "Lake Hylia": "True",
--             "Water Temple Dive": "
--                 is_adult and (Zora_Tunic or logic_fewer_tunic_requirements) and
--                 ((logic_water_temple_torch_longshot and Longshot) or Has("IronBoots"))",
--             "Water Temple Falling Platform Room": "All(
--     CanReach(Water_Temple_Lobby),
--     Any(
--         All(
--             is_adult,
--             Any(
--                 Can_use("Hookshot", ""),
--                 Has("HoverBoots"),
--                 Can_use("Bow", ""),
--             )
--         ),
--         All(
--             Has_fire_source_with_torch(""),
--             Can_use_projectile()
--         )
--     )
-- ) and (Small_Key_Water_Temple, 4)",
--             "Water Temple Boss Door": "can_use(Longshot)"
--         }
--     },
--     {
--         "region_name": "Water Temple Dive",
--         "dungeon": "Water Temple",
-- --         "locations": {
-- --             "Water Temple Map Chest": "All(
--     CanReach(Water_Temple_Lobby),
--     Any(
--         All(
--             is_adult,
--             Any(
--                 Can_use("Hookshot", ""),
--                 Has("HoverBoots"),
--                 Can_use("Bow", ""),
--             )
--         ),
--         All(
--             Has_fire_source_with_torch(""),
--             Can_use_projectile()
--         )
--     )
-- )",
-- --             "Water Temple Compass Chest": "(Can_play("ZeldasLullaby") or Has("IronBoots")) and Hookshot",
--             "Water Temple L1 Torch Pot 1": "(Has("IronBoots") and Hookshot) or Can_play("ZeldasLullaby")",
--             "Water Temple L1 Torch Pot 2": "(Has("IronBoots") and Hookshot) or Can_play("ZeldasLullaby")",
--             "Water Temple Near Compass Pot 1": "(Can_play("ZeldasLullaby") or Has("IronBoots")) and Hookshot",
--             "Water Temple Near Compass Pot 2": "(Can_play("ZeldasLullaby") or Has("IronBoots")) and Hookshot",
--             "Water Temple Near Compass Pot 3": "(Can_play("ZeldasLullaby") or Has("IronBoots")) and Hookshot"
--             "Water Temple Compass Chest": "(Can_play("ZeldasLullaby") or Has("IronBoots")) and Hookshot",
--             "Water Temple L1 Torch Pot 1": "(Has("IronBoots") and Hookshot) or Can_play("ZeldasLullaby")",
--             "Water Temple L1 Torch Pot 2": "(Has("IronBoots") and Hookshot) or Can_play("ZeldasLullaby")",
--             "Water Temple Near Compass Pot 1": "(Can_play("ZeldasLullaby") or Has("IronBoots")) and Hookshot",
--             "Water Temple Near Compass Pot 2": "(Can_play("ZeldasLullaby") or Has("IronBoots")) and Hookshot",
--             "Water Temple Near Compass Pot 3": "(Can_play("ZeldasLullaby") or Has("IronBoots")) and Hookshot"
--         },
--         "exits": {
--             "Water Temple Lowered Water Levels": "Can_play("ZeldasLullaby")",
--             "Water Temple Lowered Water Levels": "Can_play("ZeldasLullaby")",
--             "Water Temple North Basement": "
--                 (Has("IronBoots") or Can_play("ZeldasLullaby")) and
--                 (Has("IronBoots") or Can_play("ZeldasLullaby")) and
--                 (Longshot or (logic_water_boss_key_region and Has("HoverBoots"))) and
--                 (Small_Key_Water_Temple, 4)"
--         }
--     },
--     {
--         "region_name": "Water Temple Lowered Water Levels",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple Torches Chest": "
--                 Can_use("Bow", ""), or Can_use("DinsFire") or
--                 (Child_Water_Temple and Sticks and Kokiri_Sword and Magic_Meter)",
--             "Water Temple GS Central Pillar": "
--                 ((Longshot or (logic_water_central_gs_fw and Hookshot and can_use(Farores_Wind))) and
--                     ((Small_Key_Water_Temple, 5) or Bow or Can_use("DinsFire"))) or
--                 (logic_water_central_gs_irons and Hookshot and Has("IronBoots") and
--                     (Bow or Can_use("DinsFire"))) or
-- --                 (logic_water_central_gs_fw and Child_Water_Temple and Boomerang and can_use(Farores_Wind) and
-- --                     All(
--     CanReach(Water_Temple_Lobby),
--     Any(
--         All(
--             is_adult,
--             Any(
--                 Can_use("Hookshot", ""),
--                 Has("HoverBoots"),
--                 Can_use("Bow", ""),
--             )
--         ),
--         All(
--             Has_fire_source_with_torch(""),
--             Can_use_projectile()
--         )
--     )
-- ) and ((Small_Key_Water_Temple, 5) or Sticks or Can_use("DinsFire")))"
--         },
--         "exits": {
--             "Water Temple South Basement": "
--                 has_explosives and (Has("IronBoots") or can_dive) and (Hookshot or Has("HoverBoots"))",
--             "Water Temple Middle Water Level": "
--                 Can_use("Bow", ""), or Can_use("DinsFire") or (Child_Water_Temple and Sticks) or
--                 ((Small_Key_Water_Temple, 5) and Hookshot)",
--             "Water Temple Cracked Wall": "
-- --                 All(
--     CanReach(Water_Temple_Lobby),
--     Any(
--         All(
--             is_adult,
--             Any(
--                 Can_use("Hookshot", ""),
--                 Has("HoverBoots"),
--                 Can_use("Bow", ""),
--             )
--         ),
--         All(
--             Has_fire_source_with_torch(""),
--             Can_use_projectile()
--         )
--     )
-- ) and
--                 (logic_water_cracked_wall_nothing or (logic_water_cracked_wall_hovers and Has("HoverBoots")))",
--             "Water Temple Central Bow Target": "
--                 Progressive_Strength_Upgrade and Bow and
--                 (logic_water_central_bow or Has("HoverBoots") or Longshot)",
--             "Water Temple Dragon Statue": "
--                 Progressive_Strength_Upgrade and
--                 ((Has("IronBoots") and Hookshot) or
--                     (logic_water_dragon_adult and
--                         (has_bombchus or Bow or Hookshot) and (can_dive or Has("IronBoots"))) or
--                     (logic_water_dragon_child and Child_Water_Temple and
--                         (has_bombchus or Slingshot or Boomerang) and can_dive))"
--         }
--     },
--     {
--         "region_name": "Water Temple South Basement",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple Behind Gate Pot 1": "True",
--             "Water Temple Behind Gate Pot 2": "True",
--             "Water Temple Behind Gate Pot 3": "True",
--             "Water Temple Behind Gate Pot 4": "True",
--             "Water Temple GS Behind Gate": "True"
--         }
--     },
--     {
--         "region_name": "Water Temple Middle Water Level",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple Central Pillar Chest": "
--                 ((Small_Key_Water_Temple, 5) or Bow or Can_use("DinsFire")) and
--                 Has("IronBoots") and Zora_Tunic and Hookshot"
--         },
--         "exits": {
--             "Water Temple Cracked Wall": "True",
--             "Water Temple Central Bow Target": "
--                 Progressive_Strength_Upgrade and
--                 logic_water_central_bow and Child_Water_Temple and Slingshot"
--         }
--     },
--     {
--         "region_name": "Water Temple Cracked Wall",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple Cracked Wall Chest": "has_explosives"
--         }
--     },
--     {
--         "region_name": "Water Temple Central Bow Target",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple Central Bow Target Chest": "True",
--             "Water Temple Central Bow Target Pot 1": "True",
--             "Water Temple Central Bow Target Pot 2": "True"
--         }
--     },
--     {
--         "region_name": "Water Temple North Basement",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple North Basement Block Puzzle Pot 1": "True",
--             "Water Temple North Basement Block Puzzle Pot 2": "True",
--             # Longshot reaches without the need to actually go near
--             # Otherwise you have Hovers and can you hover over and collect with a jumpslash
--             "Water Temple GS Near Boss Key Chest": "True"
--         },
--         "exits": {
--             "Water Temple Boss Key Chest Room": "
--                 (Small_Key_Water_Temple, 5) and 
--                 (logic_water_bk_jump_dive or Has("IronBoots")) and
--                 (logic_water_north_basement_ledge_jump or Has("HoverBoots") or
--                     (has_explosives and Progressive_Strength_Upgrade))"
--         }
--     },
--     {
--         "region_name": "Water Temple Boss Key Chest Room",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple Boss Key Chest": "True",
--             "Fairy Pot": "has_bottle"
--         }
--     },
--     {
--         "region_name": "Water Temple Falling Platform Room",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple GS Falling Platform Room": "
--                 can_use(Longshot) or
--                 (logic_water_falling_platform_gs_hookshot and can_use(Hookshot)) or
--                 (logic_water_falling_platform_gs_boomerang and can_use(Boomerang))"
--         },
--         "exits": {
--             "Water Temple Dark Link Region": "can_use(Hookshot) and (Small_Key_Water_Temple, 5)"
--         }
--     },
--     {
--         "region_name": "Water Temple Dark Link Region",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple Longshot Chest": "True",
--             "Water Temple Like Like Pot 1": "True",
--             "Water Temple Like Like Pot 2": "True"
--         },
--         "exits": {
--             "Water Temple River": "Can_play(Song_of_Time)"
--             "Water Temple River": "Can_play(Song_of_Time)"
--         }
--     },
--     {
--         "region_name": "Water Temple River",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple River Chest": "Bow",
--             "Water Temple River Recovery Heart 1": "True",
--             "Water Temple River Recovery Heart 2": "True",
--             "Water Temple River Recovery Heart 3": "True",
--             "Water Temple River Recovery Heart 4": "True",
--             "Water Temple River Pot 1": "True",
--             "Water Temple GS River": "
--                 (Has("IronBoots") and (Zora_Tunic or logic_fewer_tunic_requirements)) or
--                 (logic_water_river_gs and Longshot and (Bow or has_bombchus))",
--             "Fairy Pot": "has_bottle"
--         },
--         "exits": {
--             "Water Temple Dragon Statue": "
--                 Can_use("Bow", ""), and (Zora_Tunic or logic_fewer_tunic_requirements) and
--                 (Has("IronBoots") or logic_water_dragon_jump_dive or logic_water_dragon_adult)"
--         }
--     },
--     {
--         "region_name": "Water Temple Dragon Statue",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple Dragon Chest": "True"
--         }
--     }

-- --MQ

--     {
--         "region_name": "Water Temple Lobby",
--         "dungeon": "Water Temple",
--         "exits": {
--             "Lake Hylia": "True",
--             "Water Temple Dive": "is_adult and (Zora_Tunic or logic_fewer_tunic_requirements) and Has("IronBoots")",
--             "Water Temple Dark Link Region": "Small_Key_Water_Temple and can_use(Longshot)",
--             "Water Temple Boss Door": "can_use(Longshot)"
--         }
--     },
--     {
--         "region_name": "Water Temple Dive",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple MQ Map Chest": "has_fire_source and Hookshot",
--             "Water Temple MQ L1 Torch Pot 1": "Hookshot or Can_play("ZeldasLullaby")",
--             "Water Temple MQ L1 Torch Pot 2": "Hookshot or Can_play("ZeldasLullaby")",
--             "Water Temple MQ Lizalfos Hallway Pot 1": "Hookshot or Can_play("ZeldasLullaby")",
--             "Water Temple MQ Lizalfos Hallway Pot 2": "Hookshot or Can_play("ZeldasLullaby")",
--             "Water Temple MQ Lizalfos Hallway Pot 3": "Hookshot or Can_play("ZeldasLullaby")",
--             "Water Temple MQ L1 Torch Pot 1": "Hookshot or Can_play("ZeldasLullaby")",
--             "Water Temple MQ L1 Torch Pot 2": "Hookshot or Can_play("ZeldasLullaby")",
--             "Water Temple MQ Lizalfos Hallway Pot 1": "Hookshot or Can_play("ZeldasLullaby")",
--             "Water Temple MQ Lizalfos Hallway Pot 2": "Hookshot or Can_play("ZeldasLullaby")",
--             "Water Temple MQ Lizalfos Hallway Pot 3": "Hookshot or Can_play("ZeldasLullaby")",
--             "Water Temple MQ Central Pillar Upper Crate 1": "can_break_crate",
--             "Water Temple MQ Central Pillar Upper Crate 2": "can_break_crate",
--             "Water Temple MQ Lizalfos Hallway Hall Crate 1": "
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--             "Water Temple MQ Lizalfos Hallway Hall Crate 2": "
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--             "Water Temple MQ Lizalfos Hallway Hall Crate 3": "
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--             "Water Temple MQ Lizalfos Hallway Room Crate 1": "
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--             "Water Temple MQ Lizalfos Hallway Room Crate 2": "
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--             "Water Temple MQ Lizalfos Hallway Room Crate 3": "
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--             "Water Temple MQ Lizalfos Hallway Room Crate 4": "
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)",
--             "Water Temple MQ Lizalfos Hallway Room Crate 5": "
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)"
--                 can_bonk or (Can_play("ZeldasLullaby") and can_blast_or_smash)"
--         },
--         "exits": {
--             "Water Temple Below Central Pillar": "
--                 Zora_Tunic and ((logic_water_mq_central_pillar and can_use(Fire_Arrows)) or
--                     (Can_use("DinsFire") and Can_play(Song_of_Time)))",
--                     (Can_use("DinsFire") and Can_play(Song_of_Time)))",
--             "Water Temple Storage Room": "Hookshot",
--             "Water Temple Lowered Water Levels": "Can_play("ZeldasLullaby")"
--             "Water Temple Lowered Water Levels": "Can_play("ZeldasLullaby")"
--         }
--     },
--     {
--         "region_name": "Water Temple Below Central Pillar",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple MQ Central Pillar Chest": "Hookshot",
--             "Water Temple MQ Central Pillar Lower Crate 1": "can_bonk",
--             "Water Temple MQ Central Pillar Lower Crate 2": "can_bonk",
--             "Water Temple MQ Central Pillar Lower Crate 3": "can_bonk",
--             "Water Temple MQ Central Pillar Lower Crate 4": "can_bonk",
--             "Water Temple MQ Central Pillar Lower Crate 5": "can_bonk",
--             "Water Temple MQ Central Pillar Lower Crate 6": "can_bonk",
--             "Water Temple MQ Central Pillar Lower Crate 7": "can_bonk",
--             "Water Temple MQ Central Pillar Lower Crate 8": "can_bonk",
--             "Water Temple MQ Central Pillar Lower Crate 9": "can_bonk",
--             "Water Temple MQ Central Pillar Lower Crate 10": "can_bonk",
--             "Water Temple MQ Central Pillar Lower Crate 11": "can_bonk",
--             "Water Temple MQ Central Pillar Lower Crate 12": "can_bonk",
--             "Water Temple MQ Central Pillar Lower Crate 13": "can_bonk",
--             "Water Temple MQ Central Pillar Lower Crate 14": "can_bonk"
--         }
--     },
--     {
--         "region_name": "Water Temple Storage Room",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple MQ Storage Room Pot 1": "True",
--             "Water Temple MQ Storage Room Pot 2": "True",
--             "Water Temple MQ Storage Room Pot 3": "True",
--             "Water Temple MQ Storage Room Crate 1": "can_break_crate",
--             "Water Temple MQ Storage Room Crate 2": "can_break_crate",
--             "Water Temple MQ Storage Room Crate 3": "can_break_crate",
--             "Water Temple MQ Storage Room Crate 4": "can_break_crate",
--             "Water Temple MQ Storage Room Crate 5": "can_break_crate",
--             "Water Temple MQ Storage Room Crate 6": "can_break_crate",
--             "Water Temple MQ Storage Room Crate 7": "can_break_crate"
--         }
--     },
--     {
--         "region_name": "Water Temple Lowered Water Levels",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple MQ Compass Chest": "
--                 Can_use("Bow", ""), or Can_use("DinsFire") or at('Water Temple Lobby', can_use(Sticks))",
--             "Water Temple MQ Longshot Chest": "Hookshot",
--             "Water Temple MQ Lizalfos Hallway Gate Pot 1": "Can_use("DinsFire")",
--             "Water Temple MQ Lizalfos Hallway Gate Pot 2": "Can_use("DinsFire")",
--             "Water Temple MQ Lizalfos Hallway Gate Crate 1": "Can_use("DinsFire") and can_break_crate",
--             "Water Temple MQ Lizalfos Hallway Gate Crate 2": "Can_use("DinsFire") and can_break_crate",
--             "Water Temple MQ GS Lizalfos Hallway": "Can_use("DinsFire")"
--         },
--         "exits": {
--             "Water Temple Before Upper Water Switch": "Hookshot"
--         }
--     },
--     {
--         "region_name": "Water Temple Before Upper Water Switch",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple MQ Before Upper Water Switch Pot 1": "True",
--             "Water Temple MQ Before Upper Water Switch Pot 2": "True",
--             "Water Temple MQ Before Upper Water Switch Pot 3": "True",
--             "Water Temple MQ Before Upper Water Switch Lower Crate 1": "can_break_crate",
--             "Water Temple MQ Before Upper Water Switch Lower Crate 2": "can_break_crate",
--             "Water Temple MQ Before Upper Water Switch Lower Crate 3": "can_break_crate",
--             "Water Temple MQ Before Upper Water Switch Lower Crate 4": "can_break_crate",
--             "Water Temple MQ Before Upper Water Switch Lower Crate 5": "can_break_crate",
--             "Water Temple MQ Before Upper Water Switch Lower Crate 6": "can_break_crate",
--             "Water Temple MQ Before Upper Water Switch Upper Crate 1": "Longshot and can_break_crate",
--             "Water Temple MQ Before Upper Water Switch Upper Crate 2": "Longshot and can_break_crate",
--             "Water Temple MQ GS Before Upper Water Switch": "Longshot"
--         }
--     },
--     {
--         "region_name": "Water Temple Dark Link Region",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple MQ Before Dark Link Lower Pot": "True",
--             "Water Temple MQ Before Dark Link Top Pot 1": "True",
--             "Water Temple MQ Before Dark Link Top Pot 2": "True",
--             "Water Temple MQ Room After Dark Link Pot": "True",
--             "Water Temple MQ River Pot": "True",
--             "Water Temple MQ Dragon Statue Near Door Crate 1": "can_break_crate",
--             "Water Temple MQ Dragon Statue Near Door Crate 2": "can_break_crate",
--             "Water Temple MQ GS River": "True",
--             "Fairy Pot": "has_bottle",
--             "Nut Pot": "True"
--         },
--         "exits": {
--             "Water Temple Dragon Statue": "
--                 (Zora_Tunic or logic_fewer_tunic_requirements) and
--                 (logic_water_dragon_jump_dive or can_dive or Has("IronBoots"))"
--         }
--     },
--     {
--         "region_name": "Water Temple Dragon Statue",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple MQ Dragon Statue By Torches Crate 1": "can_break_crate",
--             "Water Temple MQ Dragon Statue By Torches Crate 2": "can_break_crate",
--             "Water Temple MQ Dragon Statue Submerged Crate 1": "
--                 (Has("IronBoots") and can_bonk) or (has_bombchus and (can_dive or Has("IronBoots")))",
--             "Water Temple MQ Dragon Statue Submerged Crate 2": "
--                 (Has("IronBoots") and can_bonk) or (has_bombchus and (can_dive or Has("IronBoots")))",
--             "Water Temple MQ Dragon Statue Submerged Crate 3": "
--                 (Has("IronBoots") and can_bonk) or (has_bombchus and (can_dive or Has("IronBoots")))",
--             "Water Temple MQ Dragon Statue Submerged Crate 4": "
--                 (Has("IronBoots") and can_bonk) or (has_bombchus and (can_dive or Has("IronBoots")))"
--         },
--         "exits": {
--             "Water Temple Boss Key Chest Room": "has_fire_source"
--         }
--     },
--     {
--         "region_name": "Water Temple Boss Key Chest Room",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple MQ Boss Key Chest": "Can_use("DinsFire")",
--             "Water Temple MQ Boss Key Chest Room Pot": "True",
--             "Water Temple MQ Boss Key Chest Room Upper Crate": "can_break_crate",
--             "Water Temple MQ Boss Key Chest Room Lower Crate 1": "can_break_crate",
--             "Water Temple MQ Boss Key Chest Room Lower Crate 2": "can_break_crate",
--             "Water Temple MQ Boss Key Chest Room Lower Crate 3": "can_break_crate",
--             "Water Temple MQ Boss Key Chest Room Lower Crate 4": "can_break_crate"
--         },
--         "exits": {
--             "Water Temple Basement Gated Areas": "Can_use("DinsFire") and Has("IronBoots")"
--         }
--     },
--     {
--         "region_name": "Water Temple Basement Gated Areas",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple MQ Freestanding Key Area Front Crate 1": "can_break_crate",
--             "Water Temple MQ Freestanding Key Area Front Crate 2": "can_break_crate",
--             "Water Temple MQ Freestanding Key Area Submerged Crate 1": "can_bonk or has_bombchus",
--             "Water Temple MQ Freestanding Key Area Submerged Crate 2": "can_bonk or has_bombchus",
--             "Water Temple MQ Freestanding Key Area Submerged Crate 3": "can_bonk or has_bombchus",
--             "Water Temple MQ Freestanding Key Area Submerged Crate 4": "can_bonk or has_bombchus",
--             "Water Temple MQ Freestanding Key Area Submerged Crate 5": "can_bonk or has_bombchus",
--             "Water Temple MQ Freestanding Key Area Submerged Crate 6": "can_bonk or has_bombchus",
--             "Water Temple MQ Triple Wall Torch Submerged Crate 1": "can_bonk or has_bombchus",
--             "Water Temple MQ Triple Wall Torch Submerged Crate 2": "can_bonk or has_bombchus",
--             "Water Temple MQ Triple Wall Torch Submerged Crate 3": "can_bonk or has_bombchus",
--             "Water Temple MQ Triple Wall Torch Submerged Crate 4": "can_bonk or has_bombchus",
--             "Water Temple MQ Triple Wall Torch Submerged Crate 5": "can_bonk or has_bombchus",
--             "Water Temple MQ Triple Wall Torch Submerged Crate 6": "can_bonk or has_bombchus"
--         },
--         "exits": {
--             "Water Temple Freestanding Key Room": "
--                 Has("HoverBoots") or can_use(Scarecrow) or logic_water_north_basement_ledge_jump",
--             "Water Temple Dodongo Room": "logic_water_mq_locked_gs",
--             "Water Temple Triple Wall Torch": "can_use(Fire_Arrows) and (Has("HoverBoots") or can_use(Scarecrow))"
--         }
--     },
--     {
--         "region_name": "Water Temple Freestanding Key Room",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple MQ Freestanding Key": "can_break_crate",
--             "Water Temple MQ Freestanding Key Room Pot": "True",
--             "Water Temple MQ Freestanding Key Room Crate 1": "can_break_crate",
--             "Water Temple MQ Freestanding Key Room Crate 2": "can_break_crate",
--             "Water Temple MQ Freestanding Key Room Crate 3": "can_break_crate",
--             "Water Temple MQ Freestanding Key Room Crate 4": "can_break_crate",
--             "Water Temple MQ Freestanding Key Room Crate 5": "can_break_crate"
--         },
--         "exits": {
--             "Water Temple Dodongo Room": "(Small_Key_Water_Temple, 2)"
--         }
--     },
--     {
--         "region_name": "Water Temple Dodongo Room",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple MQ Dodongo Room Pot 1": "True",
--             "Water Temple MQ Dodongo Room Pot 2": "True",
--             "Water Temple MQ Dodongo Room Lower Crate 1": "can_break_crate",
--             "Water Temple MQ Dodongo Room Lower Crate 2": "can_break_crate",
--             "Water Temple MQ Dodongo Room Lower Crate 3": "can_break_crate",
--             "Water Temple MQ Dodongo Room Upper Crate": "can_break_crate",
--             "Water Temple MQ Dodongo Room Hall Crate": "can_break_crate",
--             "Water Temple MQ Freestanding Key Area Behind Gate Crate 1": "can_break_crate",
--             "Water Temple MQ Freestanding Key Area Behind Gate Crate 2": "can_break_crate",
--             "Water Temple MQ Freestanding Key Area Behind Gate Crate 3": "can_break_crate",
--             "Water Temple MQ Freestanding Key Area Behind Gate Crate 4": "can_break_crate",
--             "Water Temple MQ GS Freestanding Key Area": "True"
--         },
--         "exits": {
--             "Water Temple Freestanding Key Room": "(Small_Key_Water_Temple, 2)"
--         }
--     },
--     {
--         "region_name": "Water Temple Triple Wall Torch",
--         "dungeon": "Water Temple",
--         "locations": {
--             "Water Temple MQ Triple Wall Torch Pot 1": "True",
--             "Water Temple MQ Triple Wall Torch Pot 2": "True",
--             "Water Temple MQ Triple Wall Torch Pot 3": "True",
--             "Water Temple MQ Triple Wall Torch Pot 4": "True",
--             "Water Temple MQ Triple Wall Torch Behind Gate Crate 1": "can_break_crate",
--             "Water Temple MQ Triple Wall Torch Behind Gate Crate 2": "can_break_crate",
--             "Water Temple MQ Triple Wall Torch Behind Gate Crate 3": "can_break_crate",
--             "Water Temple MQ GS Triple Wall Torch": "True"
--         }
--     }
