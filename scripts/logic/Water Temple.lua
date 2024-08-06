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
        Child_Water_Temple_Lowered_Water_Levels.accessibility_level,
        Child_Water_Temple_Lowered_Water_Levels.accessibility_level,
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
        NamedLocations['Child_Water_Temple_Lowered_Water_Levels'].accessibility_level,
        NamedLocations['Child_Water_Temple_Lowered_Water_Levels'].accessibility_level,
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
        NamedLocations['Adult_Water_Temple_Lowered_Water_Levels'].accessibility_level,
        NamedLocations['Adult_Water_Temple_Lowered_Water_Levels'].accessibility_level,
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
        NamedLocations['Adult_Water_Temple_Lowered_Water_Levels'].accessibility_level,
        NamedLocations['Adult_Water_Temple_Lowered_Water_Levels'].accessibility_level,
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
Child_Water_Temple_Lobby:connect_one_way_entrance("Child Water Temple Falling Platform Room", Child_Water_Temple_Falling_Platform_Room, function(keys) 
    return All(
        All(
            Child_Water_Temple_Lobby.accessibility_level,
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
                    Can_use_projectile("child")
                )
            )
        ),
        Has("SmallKey(WaterTemple)", 4)
    ) , keys+1
end)
Child_Water_Temple_Lobby:connect_one_way_entrance("Child Water Temple Boss Door", Child_Water_Temple_Boss_Door, function() 
    return Can_use("Longshot", "child") end)

Adult_Water_Temple_Lobby:connect_one_way_entrance("Adult Lake Hylia", Adult_Lake_Hylia)
Adult_Water_Temple_Lobby:connect_one_way_entrance("Adult Water Temple Dive", Adult_Water_Temple_Dive, function(keys) 
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
    ) , keys+1
end)
Adult_Water_Temple_Lobby:connect_one_way_entrance("Adult Water Temple Falling Platform Room", Adult_Water_Temple_Falling_Platform_Room, function(keys) 
    return All(
        All(
            Adult_Water_Temple_Lobby.accessibility_level,
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
                    Can_use_projectile("adult")
                )
            )
        ),
        Has("SmallKey(WaterTemple)", 4)
    ) , keys+1
end)
Adult_Water_Temple_Lobby:connect_one_way_entrance("Adult Water Temple Boss Door", Adult_Water_Temple_Boss_Door, function() 
    return Can_use("Longshot", "adult") end)


Child_Water_Temple_Dive:connect_one_way("Child Water Temple Map Chest", function() 
    return All(
        Child_Water_Temple_Lobby.accessibility_level,
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
                Can_use_projectile("child")
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
        Adult_Water_Temple_Lobby.accessibility_level,
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
                Can_use_projectile("adult")
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
Child_Water_Temple_Dive:connect_one_way_entrance("Child Water Temple North Basement", Child_Water_Temple_North_Basement, function(keys) 
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
    ), keys+1
end)

Adult_Water_Temple_Dive:connect_one_way_entrance("Adult Water Temple Lowered Water Levels", Adult_Water_Temple_Lowered_Water_Levels, function() return Can_play("ZeldasLullaby") end)
Adult_Water_Temple_Dive:connect_one_way_entrance("Adult Water Temple Lowered Water Levels", Adult_Water_Temple_Lowered_Water_Levels, function() return Can_play("ZeldasLullaby") end)
Adult_Water_Temple_Dive:connect_one_way_entrance("Adult Water Temple North Basement", Adult_Water_Temple_North_Basement, function(keys) 
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
    ), keys+1
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


--                 (logic_water_central_gs_fw and Child_Water_Temple and Boomerang and can_use(Farores_Wind) and

Child_Water_Temple_Lowered_Water_Levels:connect_one_way("Child Water Temple GS Central Pillar", function(keys)
    return Any(
        All(
            Any(
                Can_use("Longshot", "child"),
                All(
                    Has("logic_water_central_gs_fw"),
                    Can_use("Hookshot", "child"),
                    Can_use("FaroresWind", "child")
                )
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
                Child_Water_Temple_Lobby.accessibility_level,
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
                        Can_use_projectile("child")
                    )
                )
            ),
            Any(
                Has("SmallKey(WaterTemple)", 5),
                Can_use("DekuStick", "child"),
                Can_use("DinsFire", "child")
            )
        )
    ), keys+1
end)

Adult_Water_Temple_Lowered_Water_Levels:connect_one_way("Adult Water Temple Torches Chest", function()
    return Any(
        Can_use("Bow", "adult"),
        Can_use("DinsFire", "adult"),
        All(
            false,
            Can_use("DekuStick", "adult"),
            Can_use("KokiriSword", "adult"),
            Tracker:FindObjectForCode("MagicMeter").Active
        )
    )
end)
Adult_Water_Temple_Lowered_Water_Levels:connect_one_way("Adult Water Temple GS Central Pillar", function(keys)
    return Any(
        All(
            Any(
                Can_use("Longshot", "adult"),
                All(
                    Has("logic_water_central_gs_fw"),
                    Can_use("Hookshot", "adult"),
                    Can_use("FaroresWind", "adult")
                )
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
                Adult_Water_Temple_Lobby.accessibility_level,
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
                        Can_use_projectile("adult")
                    )
                )
            ),
            Any(
                Has("SmallKey(WaterTemple)", 5),
                Can_use("DekuStick", "adult"),
                Can_use("DinsFire", "adult")
            )
        )
    ), keys+1
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
Child_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Child Water Temple Middle Water Level", Child_Water_Temple_Middle_Water_Level, function(keys) 
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
    ), keys+1
end)
Child_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Child Water Temple Cracked Wall", Child_Water_Temple_Cracked_Wall, function() 
    return All(
        All(
            Child_Water_Temple_Lobby.accessibility_level,
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
                    Can_use_projectile("child")
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
        Can_use("GoronBracelet", "child"),
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
        Can_use("GoronBracelet", "child"),
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
Adult_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Adult Water Temple Middle Water Level", Adult_Water_Temple_Middle_Water_Level, function(keys) 
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
    ), keys+1
end)
Adult_Water_Temple_Lowered_Water_Levels:connect_one_way_entrance("Adult Water Temple Cracked Wall", Adult_Water_Temple_Cracked_Wall, function() 
    return All(
        All(
            Adult_Water_Temple_Lobby.accessibility_level,
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
                    Can_use_projectile("adult")
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
        Can_use("GoronBracelet", "adult"),
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
        Can_use("GoronBracelet", "adult"),
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

Child_Water_Temple_Middle_Water_Level:connect_one_way("Child Water Temple Central Pillar Chest", function(keys) 
    return All(
        Any(
            Has("SmallKey(WaterTemple)", 5),
            Can_use("Bow", "child"),
            Can_use("DinsFire", "child")
        ),
        Can_use("IronBoots", "child"),
        Can_use("ZoraTunic", "child"),
        Can_use("Hookshot", "child")
    ), keys+1
end)
Adult_Water_Temple_Middle_Water_Level:connect_one_way("Adult Water Temple Central Pillar Chest", function(keys) 
    return All(
        Any(
            Has("SmallKey(WaterTemple)", 5),
            Can_use("Bow", "adult"),
            Can_use("DinsFire", "adult")
        ),
        Can_use("IronBoots", "adult"),
        Can_use("ZoraTunic", "adult"),
        Can_use("Hookshot", "adult")
    ), keys+1
end)

Child_Water_Temple_Middle_Water_Level:connect_one_way_entrance("Child Water Temple Cracked Wall", Child_Water_Temple_Cracked_Wall)
Child_Water_Temple_Middle_Water_Level:connect_one_way_entrance("Child Water Temple Central Bow Target", Child_Water_Temple_Central_Bow_Target, function() 
    return All(
        Can_use("GoronBracelet", "child"),
        Has("logic_water_central_bow"),
        true,
        Can_use("Slingshot", "child")
    )
end)

Adult_Water_Temple_Middle_Water_Level:connect_one_way_entrance("Adult Water Temple Cracked Wall", Adult_Water_Temple_Cracked_Wall)
Adult_Water_Temple_Middle_Water_Level:connect_one_way_entrance("Adult Water Temple Central Bow Target", Adult_Water_Temple_Central_Bow_Target, function() 
    return All(
        Can_use("GoronBracelet", "adult"),
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


Child_Water_Temple_North_Basement:connect_one_way_entrance("Child Water Temple Boss Key Chest Room", Child_Water_Temple_Boss_Key_Chest_Room ,function(keys) 
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
                Can_use("GoronBracelet", "child")
            )
        )
    ), keys+1
end)
Adult_Water_Temple_North_Basement:connect_one_way_entrance("Adult Water Temple Boss Key Chest Room", Adult_Water_Temple_Boss_Key_Chest_Room ,function(keys) 
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
                Can_use("GoronBracelet", "adult")
            )
        )
    ), keys+1
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

Child_Water_Temple_Falling_Platform_Room:connect_one_way_entrance("Child Water Temple Dark Link Region", Child_Water_Temple_Dark_Link_Region, function(keys) 
    return All(
        Can_use("Hookshot", "child"),
        Has("SmallKey(WaterTemple)", 5)
    ) , keys+1
end)
Adult_Water_Temple_Falling_Platform_Room:connect_one_way_entrance("Adult Water Temple Dark Link Region", Adult_Water_Temple_Dark_Link_Region, function(keys) 
    return All(
        Can_use("Hookshot", "adult"),
        Has("SmallKey(WaterTemple)", 5)
    ) , keys+1
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
--     "events": {
--         # Child can access only falling platform room and L2 pots as the sole entrant into the temple
--         # Use Child_Water_Temple for cases where child assists after the water is lowered
--         "Child Water Temple": "is_child",
--         # Use Raise_Water_Level to ensure the water level can be raised if it were to be lowered.
--         "Raise Water Level": "
--             (is_adult and (Hookshot or Hover_Boots or Bow)) or
--             (has_fire_source_with_torch and can_use_projectile)"
--     },
--     "locations": {
--         "Water Temple Main Room L2 Pot 1": "
--             at('Water Temple Lowered Water Levels', True) or can_use(Boomerang) or
--             ((can_use(Iron_Boots) or (Progressive_Scale, 2)) and
--                 (can_use(Bow) or can_use(Hookshot) or can_use(Slingshot)) and
--                 (can_use(Zora_Tunic) or logic_fewer_tunic_requirements))", 
--         "Water Temple Main Room L2 Pot 2": "
--             at('Water Temple Lowered Water Levels', True) or can_use(Boomerang) or
--             ((can_use(Iron_Boots) or (Progressive_Scale, 2)) and
--                 (can_use(Bow) or can_use(Hookshot) or can_use(Slingshot)) and
--                 (can_use(Zora_Tunic) or logic_fewer_tunic_requirements))",
--         "Fairy Pot": "has_bottle and can_use(Longshot)"
--     },
--     "exits": {
--         "Lake Hylia": "True",
--         "Water Temple Dive": "
--             is_adult and (Zora_Tunic or logic_fewer_tunic_requirements) and
--             ((logic_water_temple_torch_longshot and Longshot) or Iron_Boots)",
--         "Water Temple Falling Platform Room": "Raise_Water_Level and (Small_Key_Water_Temple, 4)",
--         "Water Temple Boss Door": "can_use(Longshot)"
--     }
-- },
-- {
--     "region_name": "Water Temple Dive",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple Map Chest": "Raise_Water_Level",
--         "Water Temple Compass Chest": "(can_play(Zeldas_Lullaby) or Iron_Boots) and Hookshot",
--         "Water Temple L1 Torch Pot 1": "(Iron_Boots and Hookshot) or can_play(Zeldas_Lullaby)",
--         "Water Temple L1 Torch Pot 2": "(Iron_Boots and Hookshot) or can_play(Zeldas_Lullaby)",
--         "Water Temple Near Compass Pot 1": "(can_play(Zeldas_Lullaby) or Iron_Boots) and Hookshot",
--         "Water Temple Near Compass Pot 2": "(can_play(Zeldas_Lullaby) or Iron_Boots) and Hookshot",
--         "Water Temple Near Compass Pot 3": "(can_play(Zeldas_Lullaby) or Iron_Boots) and Hookshot"
--     },
--     "exits": {
--         "Water Temple Lowered Water Levels": "can_play(Zeldas_Lullaby)",
--         "Water Temple North Basement": "
--             (Iron_Boots or can_play(Zeldas_Lullaby)) and
--             (Longshot or (logic_water_boss_key_region and Hover_Boots)) and
--             (Small_Key_Water_Temple, 4)"
--     }
-- },
-- {
--     "region_name": "Water Temple Lowered Water Levels",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple Torches Chest": "
--             Bow or can_use(Dins_Fire) or
--             (Child_Water_Temple and Sticks and Kokiri_Sword and Magic_Meter)",
--         "Water Temple GS Central Pillar": "
--             ((Longshot or (logic_water_central_gs_fw and Hookshot and can_use(Farores_Wind))) and
--                 ((Small_Key_Water_Temple, 5) or Bow or can_use(Dins_Fire))) or
--             (logic_water_central_gs_irons and Hookshot and Iron_Boots and
--                 (Bow or can_use(Dins_Fire))) or
--             (logic_water_central_gs_fw and Child_Water_Temple and Boomerang and can_use(Farores_Wind) and
--                 Raise_Water_Level and ((Small_Key_Water_Temple, 5) or Sticks or can_use(Dins_Fire)))"
--     },
--     "exits": {
--         "Water Temple South Basement": "
--             has_explosives and (Iron_Boots or can_dive) and (Hookshot or Hover_Boots)",
--         "Water Temple Middle Water Level": "
--             Bow or can_use(Dins_Fire) or (Child_Water_Temple and Sticks) or
--             ((Small_Key_Water_Temple, 5) and Hookshot)",
--         "Water Temple Cracked Wall": "
--             Raise_Water_Level and
--             (logic_water_cracked_wall_nothing or (logic_water_cracked_wall_hovers and Hover_Boots))",
--         "Water Temple Central Bow Target": "
--             Progressive_Strength_Upgrade and Bow and
--             (logic_water_central_bow or Hover_Boots or Longshot)",
--         "Water Temple Dragon Statue": "
--             Progressive_Strength_Upgrade and
--             ((Iron_Boots and Hookshot) or
--                 (logic_water_dragon_adult and
--                     (has_bombchus or Bow or Hookshot) and (can_dive or Iron_Boots)) or
--                 (logic_water_dragon_child and Child_Water_Temple and
--                     (has_bombchus or Slingshot or Boomerang) and can_dive))"
--     }
-- },
-- {
--     "region_name": "Water Temple South Basement",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple Behind Gate Pot 1": "True",
--         "Water Temple Behind Gate Pot 2": "True",
--         "Water Temple Behind Gate Pot 3": "True",
--         "Water Temple Behind Gate Pot 4": "True",
--         "Water Temple GS Behind Gate": "True"
--     }
-- },
-- {
--     "region_name": "Water Temple Middle Water Level",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple Central Pillar Chest": "
--             ((Small_Key_Water_Temple, 5) or Bow or can_use(Dins_Fire)) and
--             Iron_Boots and Zora_Tunic and Hookshot"
--     },
--     "exits": {
--         "Water Temple Cracked Wall": "True",
--         "Water Temple Central Bow Target": "
--             Progressive_Strength_Upgrade and
--             logic_water_central_bow and Child_Water_Temple and Slingshot"
--     }
-- },
-- {
--     "region_name": "Water Temple Cracked Wall",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple Cracked Wall Chest": "has_explosives"
--     }
-- },
-- {
--     "region_name": "Water Temple Central Bow Target",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple Central Bow Target Chest": "True",
--         "Water Temple Central Bow Target Pot 1": "True",
--         "Water Temple Central Bow Target Pot 2": "True"
--     }
-- },
-- {
--     "region_name": "Water Temple North Basement",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple North Basement Block Puzzle Pot 1": "True",
--         "Water Temple North Basement Block Puzzle Pot 2": "True",
--         # Longshot reaches without the need to actually go near
--         # Otherwise you have Hovers and can you hover over and collect with a jumpslash
--         "Water Temple GS Near Boss Key Chest": "True"
--     },
--     "exits": {
--         "Water Temple Boss Key Chest Room": "
--             (Small_Key_Water_Temple, 5) and 
--             (logic_water_bk_jump_dive or Iron_Boots) and
--             (logic_water_north_basement_ledge_jump or Hover_Boots or
--                 (has_explosives and Progressive_Strength_Upgrade))"
--     }
-- },
-- {
--     "region_name": "Water Temple Boss Key Chest Room",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple Boss Key Chest": "True",
--         "Fairy Pot": "has_bottle"
--     }
-- },
-- {
--     "region_name": "Water Temple Falling Platform Room",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple GS Falling Platform Room": "
--             can_use(Longshot) or
--             (logic_water_falling_platform_gs_hookshot and can_use(Hookshot)) or
--             (logic_water_falling_platform_gs_boomerang and can_use(Boomerang))"
--     },
--     "exits": {
--         "Water Temple Dark Link Region": "can_use(Hookshot) and (Small_Key_Water_Temple, 5)"
--     }
-- },
-- {
--     "region_name": "Water Temple Dark Link Region",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple Longshot Chest": "True",
--         "Water Temple Like Like Pot 1": "True",
--         "Water Temple Like Like Pot 2": "True"
--     },
--     "exits": {
--         "Water Temple River": "can_play(Song_of_Time)"
--     }
-- },
-- {
--     "region_name": "Water Temple River",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple River Chest": "Bow",
--         "Water Temple River Recovery Heart 1": "True",
--         "Water Temple River Recovery Heart 2": "True",
--         "Water Temple River Recovery Heart 3": "True",
--         "Water Temple River Recovery Heart 4": "True",
--         "Water Temple River Pot 1": "True",
--         "Water Temple GS River": "
--             (Iron_Boots and (Zora_Tunic or logic_fewer_tunic_requirements)) or
--             (logic_water_river_gs and Longshot and (Bow or has_bombchus))",
--         "Fairy Pot": "has_bottle"
--     },
--     "exits": {
--         "Water Temple Dragon Statue": "
--             Bow and (Zora_Tunic or logic_fewer_tunic_requirements) and
--             (Iron_Boots or logic_water_dragon_jump_dive or logic_water_dragon_adult)"
--     }
-- },
-- {
--     "region_name": "Water Temple Dragon Statue",
--     "dungeon": "Water Temple",
--     "locations": {
--         "Water Temple Dragon Chest": "True"
--     }
-- }
