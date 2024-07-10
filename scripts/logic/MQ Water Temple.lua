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
                Can_use("GoldenScale", "child")
            ),
            Any(
                Can_use("Bow", "child"),
                Can_use("Hookshot", "child"),
                Can_use("Slingshot" , "child")
            ),
            Any(
                Can_use("ZoraTunic", "child"),
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
                Can_use("GoldenScale", "child")
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
                Can_use("GoldenScale", "adult")
            ),
            Any(
                Can_use("Bow", "adult"),
                Can_use("Hookshot", "adult"),
                Can_use("Slingshot" , "adult")
            ),
            Any(
                Can_use("ZoraTunic", "adult"),
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
                Can_use("GoldenScale", "adult")
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
            Can_use("IronBoots", "child")
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
                        Can_use("HoverBoots", "child"),
                        Can_use("Bow", "child")
                    )
                ),
                All(
                    Has_fire_source_with_torch("child"),
                    Can_use_projectile("")
                )
            )
        ),
        Has("SmallKey(WaterTemple)", 4)
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
            Can_use("IronBoots", "adult")
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
                        Can_use("HoverBoots", "adult"),
                        Can_use("Bow", "adult")
                    )
                ),
                All(
                    Has_fire_source_with_torch("adult"),
                    Can_use_projectile("")
                )
            )
        ),
        Has("SmallKey(WaterTemple)", 4)
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
                    Can_use("HoverBoots", "child"),
                    Can_use("Bow", "child")
                )
            ),
            All(
                Has_fire_source_with_torch("child"),
                Can_use_projectile("")
            )
        )
    ) 
end)
Child_Water_Temple_Dive:connect_one_way("Child Water Temple Compass Chest", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Can_use("IronBoots", "child")
        ),
        Can_use("Hookshot", "child")
    ) 
end)
Child_Water_Temple_Dive:connect_one_way("Child Water Temple L1 Torch Pot 1", function() 
    return Any(
        All(
            Can_use("IronBoots", "child"),
            Can_use("Hookshot", "child")
        ),
        Can_play("ZeldasLullaby")
    ) 
end)
Child_Water_Temple_Dive:connect_one_way("Child Water Temple L1 Torch Pot 2", function() 
    return Any(
        All(
            Can_use("IronBoots", "child"),
            Can_use("Hookshot", "child")
        ),
        Can_play("ZeldasLullaby")
    ) 
end)
Child_Water_Temple_Dive:connect_one_way("Child Water Temple Near Compass Pot 1", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Can_use("IronBoots", "child")
        ),
        Can_use("Hookshot", "child")
    ) 
end)
Child_Water_Temple_Dive:connect_one_way("Child Water Temple Near Compass Pot 2", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Can_use("IronBoots", "child")
        ),
        Can_use("Hookshot", "child")
    ) 
end)
Child_Water_Temple_Dive:connect_one_way("Child Water Temple Near Compass Pot 3", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Can_use("IronBoots", "child")
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
                    Can_use("HoverBoots", "adult"),
                    Can_use("Bow", "adult")
                )
            ),
            All(
                Has_fire_source_with_torch("adult"),
                Can_use_projectile("")
            )
        )
    ) 
end)
Adult_Water_Temple_Dive:connect_one_way("Adult Water Temple Compass Chest", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Can_use("IronBoots", "adult")
        ),
        Can_use("Hookshot", "adult")
    ) 
end)
Adult_Water_Temple_Dive:connect_one_way("Adult Water Temple L1 Torch Pot 1", function() 
    return Any(
        All(
            Can_use("IronBoots", "adult"),
            Can_use("Hookshot", "adult")
        ),
        Can_play("ZeldasLullaby")
    ) 
end)
Adult_Water_Temple_Dive:connect_one_way("Adult Water Temple L1 Torch Pot 2", function() 
    return Any(
        All(
            Can_use("IronBoots", "adult"),
            Can_use("Hookshot", "adult")
        ),
        Can_play("ZeldasLullaby")
    ) 
end)
Adult_Water_Temple_Dive:connect_one_way("Adult Water Temple Near Compass Pot 1", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Can_use("IronBoots", "adult")
        ),
        Can_use("Hookshot", "adult")
    ) 
end)
Adult_Water_Temple_Dive:connect_one_way("Adult Water Temple Near Compass Pot 2", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Can_use("IronBoots", "adult")
        ),
        Can_use("Hookshot", "adult")
    ) 
end)
Adult_Water_Temple_Dive:connect_one_way("Adult Water Temple Near Compass Pot 3", function() 
    return All(
        Any(
            Can_play("ZeldasLullaby"),
            Can_use("IronBoots", "adult")
        ),
        Can_use("Hookshot", "adult")
    ) 
end)


Child_Water_Temple_Dive:connect_one_way_entrance("Child Water Temple Lowered Water Levels", Child_Water_Temple_Lowered_Water_Levels, function() return Can_play("ZeldasLullaby") end)
Child_Water_Temple_Dive:connect_one_way_entrance("Child Water Temple Lowered Water Levels", Child_Water_Temple_Lowered_Water_Levels, function() return Can_play("ZeldasLullaby") end)
Child_Water_Temple_Dive:connect_one_way_entrance("Child Water Temple North Basement", Child_Water_Temple_North_Basement, function() 
    return All(
        Any(
        Can_use("IronBoots", "child"),
        Can_play("ZeldasLullaby")
        ),
        Any(
            Can_use("Longshot", "child"),
            All(
                Has("logic_water_boss_key_region"),
                Can_use("HoverBoots", "child")
            )
        ),
        Has("SmallKey(WaterTemple)", 4)
    )
end)

Adult_Water_Temple_Dive:connect_one_way_entrance("Adult Water Temple Lowered Water Levels", Adult_Water_Temple_Lowered_Water_Levels, function() return Can_play("ZeldasLullaby") end)
Adult_Water_Temple_Dive:connect_one_way_entrance("Adult Water Temple Lowered Water Levels", Adult_Water_Temple_Lowered_Water_Levels, function() return Can_play("ZeldasLullaby") end)
Adult_Water_Temple_Dive:connect_one_way_entrance("Adult Water Temple North Basement", Adult_Water_Temple_North_Basement, function() 
    return All(
        Any(
        Can_use("IronBoots", "adult"),
        Can_play("ZeldasLullaby")
        ),
        Any(
            Can_use("Longshot", "adult"),
            All(
                Has("logic_water_boss_key_region"),
                Can_use("HoverBoots", "adult")
            )
        ),
        Has("SmallKey(WaterTemple)", 4)
    )
end)


Child_Water_Temple_Lowered_Water_Levels:connect_one_way("Child Water Temple Torches Chest", function()
    return Any(
        Can_use("Bow", "child"),
        Can_use("DinsFire", "child"),
        All(
            true,
            Can_use("DekuStick", "child"),
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
                Has("SmallKey(WaterTemple)", 5),
                Can_use("Bow", "child"),
                Can_use("DinsFire", "child")
            )
        ),
        All(
            Has("logic_water_central_gs_irons"),
            Can_use("Hookshot", "child"),
            Can_use("IronBoots", "child"),
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
                            Can_use("HoverBoots", "child"),
                            Can_use("Bow", "child")
                        )
                    ),
                    All(
                        Has_fire_source_with_torch("child"),
                        Can_use_projectile("")
                    )
                )
            ),
            Any(
                Has("SmallKey(WaterTemple)", 5),
                Can_use("DekuStick", "child"),
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
            Can_use("DekuStick", "adult"),
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
                Has("SmallKey(WaterTemple)", 5),
                Can_use("Bow", "adult"),
                Can_use("DinsFire", "adult")
            )
        ),
        All(
            Has("logic_water_central_gs_irons"),
            Can_use("Hookshot", "adult"),
            Can_use("IronBoots", "adult"),
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
                            Can_use("HoverBoots", "adult"),
                            Can_use("Bow", "adult")
                        )
                    ),
                    All(
                        Has_fire_source_with_torch("adult"),
                        Can_use_projectile("")
                    )
                )
            ),
            Any(
                Has("SmallKey(WaterTemple)", 5),
                Can_use("DekuStick", "adult"),
                Can_use("DinsFire", "adult")
            )
        )
    )
end)


Child_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Child Water Temple South Basement", Child_Water_Temple_South_Basement, function() 
    return All(
        Has_explosives(),
        Any(
            Can_use("IronBoots", "child"),
            Can_dive("child")
        ),
        Any(
            Can_use("Hookshot", "child"),
            Can_use("HoverBoots", "child")
        )
    )
end)
Child_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Child Water Temple Middle Water Level", Child_Water_Temple_Middle_Water_Level, function() 
    return Any(
        Can_use("Bow", "chid"),
        Can_use("DinsFire", "child"),
        All(
            true,
            Can_use("DekuStick", "child")
        ),
        All(
            Has("SmallKey(WaterTemple)", 5),
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
                        Can_use("HoverBoots", "child"),
                        Can_use("Bow", "child")
                    )
                ),
                All(
                    Has_fire_source_with_torch("child"),
                    Can_use_projectile("")
                )
            )
        ),
        Any(
            Has("logic_water_cracked_wall_nothing"),
            All(
                Has("logic_water_cracked_wall_hovers"),
                Can_use("HoverBoots", "child")
            )
        )
    )
end)
Child_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Child Water Temple Central Bow Target", Child_Water_Temple_Central_Bow_Target, function() 
    return All(
        Can_use("ProgressiveScale", "child"),
        Can_use("Bow", "child"),
        Any(
            Has("logic_water_central_bow"),
            Can_use("HoverBoots", "child"),
            Can_use("Longshot", "child")
        )
    )
end)
Child_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Child Water Temple Dragon Statue", Child_Water_Temple_Dragon_Statue, function() 
    return All(
        Can_use("ProgressiveScale", "child"),
        Any(
            All(
                Can_use("IronBoots", "child"),
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
                    Can_dive("child"),
                    Can_use("IronBoots", "child")
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
                Can_dive("child")
            )
        )
    )
end)

Adult_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Adult Water Temple South Basement", Adult_Water_Temple_South_Basement, function() 
    return All(
        Has_explosives(),
        Any(
            Can_use("IronBoots", "adult"),
            Can_dive("adult")
        ),
        Any(
            Can_use("Hookshot", "adult"),
            Can_use("HoverBoots", "adult")
        )
    )
end)
Adult_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Adult Water Temple Middle Water Level", Adult_Water_Temple_Middle_Water_Level, function() 
    return Any(
        Can_use("Bow", "adult"),
        Can_use("DinsFire", "adult"),
        All(
            false,
            Can_use("DekuStick", "adult")
        ),
        All(
            Has("SmallKey(WaterTemple)", 5),
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
                Can_use("HoverBoots", "adult"),
                Can_use("Bow", "adult")
            )
        ),
        All(
            Has_fire_source_with_torch("adult"),
            Can_use_projectile("")
        )
    )
),
        Any(
            Has("logic_water_cracked_wall_nothing"),
            All(
                Has("logic_water_cracked_wall_hovers"),
                Can_use("HoverBoots", "adult")
            )
        )
    )
end)
Adult_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Adult Water Temple Central Bow Target", Adult_Water_Temple_Central_Bow_Target, function() 
    return All(
        Can_use("ProgressiveScale", "adult"),
        Can_use("Bow", "adult"),
        Any(
            Has("logic_water_central_bow"),
            Can_use("HoverBoots", "adult"),
            Can_use("Longshot", "adult")
        )
    )
end)
Adult_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Adult Water Temple Dragon Statue", Adult_Water_Temple_Dragon_Statue, function() 
    return All(
        Can_use("ProgressiveScale", "adult"),
        Any(
            All(
                Can_use("IronBoots", "adult"),
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
                    Can_dive("adult"),
                    Can_use("IronBoots", "adult")
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
                Can_dive("adult")
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
            Has("SmallKey(WaterTemple)", 5),
            Can_use("Bow", "child"),
            Can_use("DinsFire", "child")
        ),
        Can_use("IronBoots", "child"),
        Can_use("ZoraTunic", "child"),
        Can_use("Hookshot", "child")
    )
end)
Adult_Water_Temple_Middle_Water_Level:connect_one_way("Adult Water Temple Central Pillar Chest", function() 
    return All(
        Any(
            Has("SmallKey(WaterTemple)", 5),
            Can_use("Bow", "adult"),
            Can_use("DinsFire", "adult")
        ),
        Can_use("IronBoots", "adult"),
        Can_use("ZoraTunic", "adult"),
        Can_use("Hookshot", "adult")
    )
end)

Child_Water_Temple_Middle_Water_Level:connect_one_way_entrance("Child Water Temple Cracked Wall", Child_Water_Temple_Cracked_Wall)
Child_Water_Temple_Middle_Water_Level:connect_one_way_entrance("Child Water Temple Central Bow Target", Child_Water_Temple_Central_Bow_Target, function() 
    return All(
        Can_use("ProgressiveScale", "child"),
        Has("logic_water_central_bow"),
        true,
        Can_use("Slingshot", "child")
    )
end)

Adult_Water_Temple_Middle_Water_Level:connect_one_way_entrance("Adult Water Temple Cracked Wall", Adult_Water_Temple_Cracked_Wall)
Adult_Water_Temple_Middle_Water_Level:connect_one_way_entrance("Adult Water Temple Central Bow Target", Adult_Water_Temple_Central_Bow_Target, function() 
    return All(
        Can_use("ProgressiveScale", "adult"),
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
        Has("SmallKey(WaterTemple)", 5),
        Any(
            Has("logic_water_bk_jump_dive"),
            Can_use("IronBoots", "child")
        ),
        Any(
            Has("logic_water_north_basement_ledge_jump"),
            Can_use("HoverBoots", "child"),
            All(
                Has_explosives(),
                Can_use("ProgressiveScale", "child")
            )
        )
    )
end)
Adult_Water_Temple_North_Basement:connect_one_way_entrance("Adult Water Temple Boss Key Chest Room", Adult_Water_Temple_Boss_Key_Chest_Room ,function() 
    return All(
        Has("SmallKey(WaterTemple)", 5),
        Any(
            Has("logic_water_bk_jump_dive"),
            Can_use("IronBoots", "adult")
        ),
        Any(
            Has("logic_water_north_basement_ledge_jump"),
            Can_use("HoverBoots", "adult"),
            All(
                Has_explosives(),
                Can_use("ProgressiveScale", "adult")
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
        Has("SmallKey(WaterTemple)", 5)
    ) 
end)
Adult_Water_Temple_Falling_Platform_Room:connect_one_way_entrance("Adult Water Temple Dark Link Region", Adult_Water_Temple_Dark_Link_Region, function() 
    return All(
        Can_use("Hookshot", "adult"),
        Has("SmallKey(WaterTemple)", 5)
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
            Can_use("IronBoots", "child"),
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
            Can_use("IronBoots", "adult"),
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
            Can_use("IronBoots", "child"),
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
            Can_use("IronBoots", "adult"),
            Has("logic_water_dragon_jump_dive"),
            Has("logic_water_dragon_adult")
        )
    )
end)

Child_Water_Temple_Dragon_Statue:connect_one_way("Child Water Temple Dragon Chest")
Adult_Water_Temple_Dragon_Statue:connect_one_way("Adult Water Temple Dragon Chest")

-- Child_Water_Temple_Dragon_Statue:connect_one_way_entrance()
-- Adult_Water_Temple_Dragon_Statue:connect_one_way_entrance()






-- {
--     "region_name": "Water Temple Lobby",
--     "dungeon": "Water Temple",
--     "exits": {
--         "Lake Hylia": "True",
--         "Water Temple Dive": "is_adult and (Zora_Tunic or logic_fewer_tunic_requirements) and Iron_Boots",
--         "Water Temple Dark Link Region": "Small_Key_Water_Temple and can_use(Longshot)",
--         "Water Temple Boss Door": "can_use(Longshot)"
--     }
-- },
-- {
--     "region_name": "Water Temple Dive",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple MQ Map Chest": "has_fire_source and Hookshot",
--         "Water Temple MQ L1 Torch Pot 1": "Hookshot or can_play(Zeldas_Lullaby)",
--         "Water Temple MQ L1 Torch Pot 2": "Hookshot or can_play(Zeldas_Lullaby)",
--         "Water Temple MQ Lizalfos Hallway Pot 1": "Hookshot or can_play(Zeldas_Lullaby)",
--         "Water Temple MQ Lizalfos Hallway Pot 2": "Hookshot or can_play(Zeldas_Lullaby)",
--         "Water Temple MQ Lizalfos Hallway Pot 3": "Hookshot or can_play(Zeldas_Lullaby)",
--         "Water Temple MQ Central Pillar Upper Crate 1": "can_break_crate",
--         "Water Temple MQ Central Pillar Upper Crate 2": "can_break_crate",
--         "Water Temple MQ Lizalfos Hallway Hall Crate 1": "
--             can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
--         "Water Temple MQ Lizalfos Hallway Hall Crate 2": "
--             can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
--         "Water Temple MQ Lizalfos Hallway Hall Crate 3": "
--             can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
--         "Water Temple MQ Lizalfos Hallway Room Crate 1": "
--             can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
--         "Water Temple MQ Lizalfos Hallway Room Crate 2": "
--             can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
--         "Water Temple MQ Lizalfos Hallway Room Crate 3": "
--             can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
--         "Water Temple MQ Lizalfos Hallway Room Crate 4": "
--             can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
--         "Water Temple MQ Lizalfos Hallway Room Crate 5": "
--             can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)"
--     },
--     "exits": {
--         "Water Temple Below Central Pillar": "
--             Zora_Tunic and ((logic_water_mq_central_pillar and can_use(Fire_Arrows)) or
--                 (can_use(Dins_Fire) and can_play(Song_of_Time)))",
--         "Water Temple Storage Room": "Hookshot",
--         "Water Temple Lowered Water Levels": "can_play(Zeldas_Lullaby)"
--     }
-- },
-- {
--     "region_name": "Water Temple Below Central Pillar",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple MQ Central Pillar Chest": "Hookshot",
--         "Water Temple MQ Central Pillar Lower Crate 1": "can_bonk",
--         "Water Temple MQ Central Pillar Lower Crate 2": "can_bonk",
--         "Water Temple MQ Central Pillar Lower Crate 3": "can_bonk",
--         "Water Temple MQ Central Pillar Lower Crate 4": "can_bonk",
--         "Water Temple MQ Central Pillar Lower Crate 5": "can_bonk",
--         "Water Temple MQ Central Pillar Lower Crate 6": "can_bonk",
--         "Water Temple MQ Central Pillar Lower Crate 7": "can_bonk",
--         "Water Temple MQ Central Pillar Lower Crate 8": "can_bonk",
--         "Water Temple MQ Central Pillar Lower Crate 9": "can_bonk",
--         "Water Temple MQ Central Pillar Lower Crate 10": "can_bonk",
--         "Water Temple MQ Central Pillar Lower Crate 11": "can_bonk",
--         "Water Temple MQ Central Pillar Lower Crate 12": "can_bonk",
--         "Water Temple MQ Central Pillar Lower Crate 13": "can_bonk",
--         "Water Temple MQ Central Pillar Lower Crate 14": "can_bonk"
--     }
-- },
-- {
--     "region_name": "Water Temple Storage Room",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple MQ Storage Room Pot 1": "True",
--         "Water Temple MQ Storage Room Pot 2": "True",
--         "Water Temple MQ Storage Room Pot 3": "True",
--         "Water Temple MQ Storage Room Crate 1": "can_break_crate",
--         "Water Temple MQ Storage Room Crate 2": "can_break_crate",
--         "Water Temple MQ Storage Room Crate 3": "can_break_crate",
--         "Water Temple MQ Storage Room Crate 4": "can_break_crate",
--         "Water Temple MQ Storage Room Crate 5": "can_break_crate",
--         "Water Temple MQ Storage Room Crate 6": "can_break_crate",
--         "Water Temple MQ Storage Room Crate 7": "can_break_crate"
--     }
-- },
-- {
--     "region_name": "Water Temple Lowered Water Levels",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple MQ Compass Chest": "
--             Bow or can_use(Dins_Fire) or at('Water Temple Lobby', can_use(Sticks))",
--         "Water Temple MQ Longshot Chest": "Hookshot",
--         "Water Temple MQ Lizalfos Hallway Gate Pot 1": "can_use(Dins_Fire)",
--         "Water Temple MQ Lizalfos Hallway Gate Pot 2": "can_use(Dins_Fire)",
--         "Water Temple MQ Lizalfos Hallway Gate Crate 1": "can_use(Dins_Fire) and can_break_crate",
--         "Water Temple MQ Lizalfos Hallway Gate Crate 2": "can_use(Dins_Fire) and can_break_crate",
--         "Water Temple MQ GS Lizalfos Hallway": "can_use(Dins_Fire)"
--     },
--     "exits": {
--         "Water Temple Before Upper Water Switch": "Hookshot"
--     }
-- },
-- {
--     "region_name": "Water Temple Before Upper Water Switch",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple MQ Before Upper Water Switch Pot 1": "True",
--         "Water Temple MQ Before Upper Water Switch Pot 2": "True",
--         "Water Temple MQ Before Upper Water Switch Pot 3": "True",
--         "Water Temple MQ Before Upper Water Switch Lower Crate 1": "can_break_crate",
--         "Water Temple MQ Before Upper Water Switch Lower Crate 2": "can_break_crate",
--         "Water Temple MQ Before Upper Water Switch Lower Crate 3": "can_break_crate",
--         "Water Temple MQ Before Upper Water Switch Lower Crate 4": "can_break_crate",
--         "Water Temple MQ Before Upper Water Switch Lower Crate 5": "can_break_crate",
--         "Water Temple MQ Before Upper Water Switch Lower Crate 6": "can_break_crate",
--         "Water Temple MQ Before Upper Water Switch Upper Crate 1": "Longshot and can_break_crate",
--         "Water Temple MQ Before Upper Water Switch Upper Crate 2": "Longshot and can_break_crate",
--         "Water Temple MQ GS Before Upper Water Switch": "Longshot"
--     }
-- },
-- {
--     "region_name": "Water Temple Dark Link Region",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple MQ Before Dark Link Lower Pot": "True",
--         "Water Temple MQ Before Dark Link Top Pot 1": "True",
--         "Water Temple MQ Before Dark Link Top Pot 2": "True",
--         "Water Temple MQ Room After Dark Link Pot": "True",
--         "Water Temple MQ River Pot": "True",
--         "Water Temple MQ Dragon Statue Near Door Crate 1": "can_break_crate",
--         "Water Temple MQ Dragon Statue Near Door Crate 2": "can_break_crate",
--         "Water Temple MQ GS River": "True",
--         "Fairy Pot": "has_bottle",
--         "Nut Pot": "True"
--     },
--     "exits": {
--         "Water Temple Dragon Statue": "
--             (Zora_Tunic or logic_fewer_tunic_requirements) and
--             (logic_water_dragon_jump_dive or can_dive or Iron_Boots)"
--     }
-- },
-- {
--     "region_name": "Water Temple Dragon Statue",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple MQ Dragon Statue By Torches Crate 1": "can_break_crate",
--         "Water Temple MQ Dragon Statue By Torches Crate 2": "can_break_crate",
--         "Water Temple MQ Dragon Statue Submerged Crate 1": "
--             (Iron_Boots and can_bonk) or (has_bombchus and (can_dive or Iron_Boots))",
--         "Water Temple MQ Dragon Statue Submerged Crate 2": "
--             (Iron_Boots and can_bonk) or (has_bombchus and (can_dive or Iron_Boots))",
--         "Water Temple MQ Dragon Statue Submerged Crate 3": "
--             (Iron_Boots and can_bonk) or (has_bombchus and (can_dive or Iron_Boots))",
--         "Water Temple MQ Dragon Statue Submerged Crate 4": "
--             (Iron_Boots and can_bonk) or (has_bombchus and (can_dive or Iron_Boots))"
--     },
--     "exits": {
--         "Water Temple Boss Key Chest Room": "has_fire_source"
--     }
-- },
-- {
--     "region_name": "Water Temple Boss Key Chest Room",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple MQ Boss Key Chest": "can_use(Dins_Fire)",
--         "Water Temple MQ Boss Key Chest Room Pot": "True",
--         "Water Temple MQ Boss Key Chest Room Upper Crate": "can_break_crate",
--         "Water Temple MQ Boss Key Chest Room Lower Crate 1": "can_break_crate",
--         "Water Temple MQ Boss Key Chest Room Lower Crate 2": "can_break_crate",
--         "Water Temple MQ Boss Key Chest Room Lower Crate 3": "can_break_crate",
--         "Water Temple MQ Boss Key Chest Room Lower Crate 4": "can_break_crate"
--     },
--     "exits": {
--         "Water Temple Basement Gated Areas": "can_use(Dins_Fire) and Iron_Boots"
--     }
-- },
-- {
--     "region_name": "Water Temple Basement Gated Areas",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple MQ Freestanding Key Area Front Crate 1": "can_break_crate",
--         "Water Temple MQ Freestanding Key Area Front Crate 2": "can_break_crate",
--         "Water Temple MQ Freestanding Key Area Submerged Crate 1": "can_bonk or has_bombchus",
--         "Water Temple MQ Freestanding Key Area Submerged Crate 2": "can_bonk or has_bombchus",
--         "Water Temple MQ Freestanding Key Area Submerged Crate 3": "can_bonk or has_bombchus",
--         "Water Temple MQ Freestanding Key Area Submerged Crate 4": "can_bonk or has_bombchus",
--         "Water Temple MQ Freestanding Key Area Submerged Crate 5": "can_bonk or has_bombchus",
--         "Water Temple MQ Freestanding Key Area Submerged Crate 6": "can_bonk or has_bombchus",
--         "Water Temple MQ Triple Wall Torch Submerged Crate 1": "can_bonk or has_bombchus",
--         "Water Temple MQ Triple Wall Torch Submerged Crate 2": "can_bonk or has_bombchus",
--         "Water Temple MQ Triple Wall Torch Submerged Crate 3": "can_bonk or has_bombchus",
--         "Water Temple MQ Triple Wall Torch Submerged Crate 4": "can_bonk or has_bombchus",
--         "Water Temple MQ Triple Wall Torch Submerged Crate 5": "can_bonk or has_bombchus",
--         "Water Temple MQ Triple Wall Torch Submerged Crate 6": "can_bonk or has_bombchus"
--     },
--     "exits": {
--         "Water Temple Freestanding Key Room": "
--             Hover_Boots or can_use(Scarecrow) or logic_water_north_basement_ledge_jump",
--         "Water Temple Dodongo Room": "logic_water_mq_locked_gs",
--         "Water Temple Triple Wall Torch": "can_use(Fire_Arrows) and (Hover_Boots or can_use(Scarecrow))"
--     }
-- },
-- {
--     "region_name": "Water Temple Freestanding Key Room",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple MQ Freestanding Key": "can_break_crate",
--         "Water Temple MQ Freestanding Key Room Pot": "True",
--         "Water Temple MQ Freestanding Key Room Crate 1": "can_break_crate",
--         "Water Temple MQ Freestanding Key Room Crate 2": "can_break_crate",
--         "Water Temple MQ Freestanding Key Room Crate 3": "can_break_crate",
--         "Water Temple MQ Freestanding Key Room Crate 4": "can_break_crate",
--         "Water Temple MQ Freestanding Key Room Crate 5": "can_break_crate"
--     },
--     "exits": {
--         "Water Temple Dodongo Room": "(Small_Key_Water_Temple, 2)"
--     }
-- },
-- {
--     "region_name": "Water Temple Dodongo Room",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple MQ Dodongo Room Pot 1": "True",
--         "Water Temple MQ Dodongo Room Pot 2": "True",
--         "Water Temple MQ Dodongo Room Lower Crate 1": "can_break_crate",
--         "Water Temple MQ Dodongo Room Lower Crate 2": "can_break_crate",
--         "Water Temple MQ Dodongo Room Lower Crate 3": "can_break_crate",
--         "Water Temple MQ Dodongo Room Upper Crate": "can_break_crate",
--         "Water Temple MQ Dodongo Room Hall Crate": "can_break_crate",
--         "Water Temple MQ Freestanding Key Area Behind Gate Crate 1": "can_break_crate",
--         "Water Temple MQ Freestanding Key Area Behind Gate Crate 2": "can_break_crate",
--         "Water Temple MQ Freestanding Key Area Behind Gate Crate 3": "can_break_crate",
--         "Water Temple MQ Freestanding Key Area Behind Gate Crate 4": "can_break_crate",
--         "Water Temple MQ GS Freestanding Key Area": "True"
--     },
--     "exits": {
--         "Water Temple Freestanding Key Room": "(Small_Key_Water_Temple, 2)"
--     }
-- },
-- {
--     "region_name": "Water Temple Triple Wall Torch",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple MQ Triple Wall Torch Pot 1": "True",
--         "Water Temple MQ Triple Wall Torch Pot 2": "True",
--         "Water Temple MQ Triple Wall Torch Pot 3": "True",
--         "Water Temple MQ Triple Wall Torch Pot 4": "True",
--         "Water Temple MQ Triple Wall Torch Behind Gate Crate 1": "can_break_crate",
--         "Water Temple MQ Triple Wall Torch Behind Gate Crate 2": "can_break_crate",
--         "Water Temple MQ Triple Wall Torch Behind Gate Crate 3": "can_break_crate",
--         "Water Temple MQ GS Triple Wall Torch": "True"
--     }
-- }