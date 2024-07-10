-- Child_Forest_Temple_Lobby = OOTLocation.new("Child_Forest_Temple_Lobby")
-- Child_Forest_Temple_Central_Area = OOTLocation.new("Child_Forest_Temple_Central_Area")
-- Child_Forest_Temple_NW_Outdoors = OOTLocation.new("Child_Forest_Temple_NW_Outdoors")
-- Child_Forest_Temple_Outdoors_High_Balconies = OOTLocation.new("Child_Forest_Temple_Outdoors_High_Balconies")
-- Child_Forest_Temple_NE_Outdoors = OOTLocation.new("Child_Forest_Temple_NE_Outdoors")
-- Child_Forest_Temple_Block_Push_Room = OOTLocation.new("Child_Forest_Temple_Block_Push_Room")
-- Child_Forest_Temple_Straightened_Hall = OOTLocation.new("Child_Forest_Temple_Straightened_Hall")
-- Child_Forest_Temple_Outside_Upper_Ledge = OOTLocation.new("Child_Forest_Temple_Outside_Upper_Ledge")
-- Child_Forest_Temple_Bow_Region = OOTLocation.new("Child_Forest_Temple_Bow_Region")
-- Child_Forest_Temple_Frozen_Eye_Switch_Room = OOTLocation.new("Child_Forest_Temple_Frozen_Eye_Switch_Room")
-- Child_Forest_Temple_Falling_Room = OOTLocation.new("Child_Forest_Temple_Falling_Room")
-- Child_Forest_Temple_Before_Boss = OOTLocation.new("Child_Forest_Temple_Before_Boss")

-- Adult_Forest_Temple_Lobby = OOTLocation.new("Adult_Forest_Temple_Lobby")
-- Adult_Forest_Temple_Central_Area = OOTLocation.new("Adult_Forest_Temple_Central_Area")
-- Adult_Forest_Temple_NW_Outdoors = OOTLocation.new("Adult_Forest_Temple_NW_Outdoors")
-- Adult_Forest_Temple_Outdoors_High_Balconies = OOTLocation.new("Adult_Forest_Temple_Outdoors_High_Balconies")
-- Adult_Forest_Temple_NE_Outdoors = OOTLocation.new("Adult_Forest_Temple_NE_Outdoors")
-- Adult_Forest_Temple_Block_Push_Room = OOTLocation.new("Adult_Forest_Temple_Block_Push_Room")
-- Adult_Forest_Temple_Straightened_Hall = OOTLocation.new("Adult_Forest_Temple_Straightened_Hall")
-- Adult_Forest_Temple_Outside_Upper_Ledge = OOTLocation.new("Adult_Forest_Temple_Outside_Upper_Ledge")
-- Adult_Forest_Temple_Bow_Region = OOTLocation.new("Adult_Forest_Temple_Bow_Region")
-- Adult_Forest_Temple_Frozen_Eye_Switch_Room = OOTLocation.new("Adult_Forest_Temple_Frozen_Eye_Switch_Room")
-- Adult_Forest_Temple_Falling_Room = OOTLocation.new("Adult_Forest_Temple_Falling_Room")
-- Adult_Forest_Temple_Before_Boss = OOTLocation.new("Adult_Forest_Temple_Before_Boss")


Child_Forest_Temple_Lobby:connect_one_way("Child Forest Temple First Room Chest")
Child_Forest_Temple_Lobby:connect_one_way("Child Forest Temple GS First Room", function() 
    return Any(
        All(
            false,
            Any(
                Can_use("Hookshot", "child"),
                Can_use("Bow", "child"),
                Bombs()
            )
        ),
        All(
            true,
            Any(
                Can_use("Boomerang", "child"),
                Can_use("Slingshot", "child")
            )
        ),
        Has_bombchus(),
        Can_use("DinsFire", "child"),
        All(
            Has("logic_forest_first_gs"),
            Any(
                Bombs(),
                Can_jumpslash("child")
            )
        )
    )
end)

Adult_Forest_Temple_Lobby:connect_one_way("Adult Forest Temple First Room Chest")
Adult_Forest_Temple_Lobby:connect_one_way("Adult Forest Temple GS First Room", function() 
    return Any(
        All(
            true,
            Any(
                Can_use("Hookshot", "adult"),
                Can_use("Bow", "adult"),
                Bombs()
            )
        ),
        All(
            false,
            Any(
                Can_use("Boomerang", "adult"),
                Can_use("Slingshot", "adult")
            )
        ),
        Has_bombchus(),
        Can_use("DinsFire", "adult"),
        All(
            Has("logic_forest_first_gs"),
            Any(
                Bombs(),
                Can_jumpslash("adult")
            )
        )
    )
end)


Child_Forest_Temple_Lobby:connect_one_way_entrance("Child SFM Forest Temple Entrance Ledge", Child_SFM_Forest_Temple_Entrance_Ledge)
Child_Forest_Temple_Lobby:connect_one_way_entrance("Child Forest Temple Central Area", Child_Forest_Temple_Central_Area, function() 
    return Any(
        false,
        Can_child_attack("child"),
        Nuts()
    )
end)

Adult_Forest_Temple_Lobby:connect_one_way_entrance("Adult SFM Forest Temple Entrance Ledge", Adult_SFM_Forest_Temple_Entrance_Ledge)
Adult_Forest_Temple_Lobby:connect_one_way_entrance("Adult Forest Temple Central Area", Adult_Forest_Temple_Central_Area, function() 
    return Any(
        true,
        Can_child_attack("adult"),
        Nuts()
    )
end)


Child_Forest_Temple_Central_Area:connect_one_way("Child Forest Temple First Stalfos Chest", function() 
    return Any(
        false,
        Can_use("KokiriSword", "child")
    )
end)
Child_Forest_Temple_Central_Area:connect_one_way("Child Forest Temple Center Room Right Pot 1")
Child_Forest_Temple_Central_Area:connect_one_way("Child Forest Temple Center Room Right Pot 2")
Child_Forest_Temple_Central_Area:connect_one_way("Child Forest Temple Center Room Right Pot 3")
Child_Forest_Temple_Central_Area:connect_one_way("Child Forest Temple Center Room Left Pot 1")
Child_Forest_Temple_Central_Area:connect_one_way("Child Forest Temple Center Room Left Pot 2")
Child_Forest_Temple_Central_Area:connect_one_way("Child Forest Temple Center Room Left Pot 3")
Child_Forest_Temple_Central_Area:connect_one_way("Child Forest Temple Lower Stalfos Pot")
Child_Forest_Temple_Central_Area:connect_one_way("Child Forest Temple GS Lobby", function() 
    return Any(
        Can_use("Hookshot", "child"),
        Can_use("Boomerang", "child")
    )
end)

Adult_Forest_Temple_Central_Area:connect_one_way("Adult Forest Temple First Stalfos Chest", function() 
    return Any(
        true,
        Can_use("KokiriSword", "adult")
    )
end)
Adult_Forest_Temple_Central_Area:connect_one_way("Adult Forest Temple Center Room Right Pot 1")
Adult_Forest_Temple_Central_Area:connect_one_way("Adult Forest Temple Center Room Right Pot 2")
Adult_Forest_Temple_Central_Area:connect_one_way("Adult Forest Temple Center Room Right Pot 3")
Adult_Forest_Temple_Central_Area:connect_one_way("Adult Forest Temple Center Room Left Pot 1")
Adult_Forest_Temple_Central_Area:connect_one_way("Adult Forest Temple Center Room Left Pot 2")
Adult_Forest_Temple_Central_Area:connect_one_way("Adult Forest Temple Center Room Left Pot 3")
Adult_Forest_Temple_Central_Area:connect_one_way("Adult Forest Temple Lower Stalfos Pot")
Adult_Forest_Temple_Central_Area:connect_one_way("Adult Forest Temple GS Lobby", function() 
    return Any(
        Can_use("Hookshot", "child"),
        Can_use("Boomerang", "child")
    )
end)


Child_Forest_Temple_Central_Area:connect_one_way_entrance("Child Forest Temple NW Outdoors", Child_Forest_Temple_NW_Outdoors, function() 
    return Any(
        Can_play("SongofTime"),
        true
    ) 
end)
Child_Forest_Temple_Central_Area:connect_one_way_entrance("Child Forest Temple NE Outdoors", Child_Forest_Temple_NE_Outdoors, function() 
    return Any(
        Can_use("Bow", "child"),
        Can_use("Slingshot", "child")
    ) 
end)
Child_Forest_Temple_Central_Area:connect_one_way_entrance("Child Forest Temple Block Push Room", Child_Forest_Temple_Block_Push_Room, function(keys) return Has("SmallKey(ForestTemple)", 1), keys+1 end)
Child_Forest_Temple_Central_Area:connect_one_way_entrance("Child Forest Temple Before Boss", Child_Forest_Temple_Before_Boss, function() 
    return Any(
        All(
            All(
                Child_Forest_Temple_Bow_Region.accessibility_level,
                Can_use("Bow", "child")
            ),
            All(
                Child_Forest_Temple_Falling_Room.accessibility_level,
                Can_use("Bow", "child")
            )
        ),
        Has("forest_temple_shortcuts")
    ) 
end)

Adult_Forest_Temple_Central_Area:connect_one_way_entrance("Adult Forest Temple NW Outdoors", Adult_Forest_Temple_NW_Outdoors, function() 
    return Any(
        Can_play("SongofTime"),
        false
    ) 
end)
Adult_Forest_Temple_Central_Area:connect_one_way_entrance("Adult Forest Temple NE Outdoors", Adult_Forest_Temple_NE_Outdoors, function() 
    return Any(
        Can_use("Bow", "adult"),
        Can_use("Slingshot", "adult")
    ) 
end)
Adult_Forest_Temple_Central_Area:connect_one_way_entrance("Adult Forest Temple Block Push Room", Adult_Forest_Temple_Block_Push_Room, function(keys) return Has("SmallKey(ForestTemple)", 1), keys+1 end)
Adult_Forest_Temple_Central_Area:connect_one_way_entrance("Adult Forest Temple Before Boss", Adult_Forest_Temple_Before_Boss, function() 
    return Any(
        All(
            All(
                Adult_Forest_Temple_Bow_Region.accessibility_level,
                Can_use("Bow", "adult")
            ),
            All(
                Adult_Forest_Temple_Falling_Room.accessibility_level,
                Can_use("Bow", "adult")
            )
        ),
        Has("forest_temple_shortcuts")
    ) 
end)


Child_Forest_Temple_NW_Outdoors:connect_one_way("Child Forest Temple GS Level Island Courtyard", function() 
    return Any(
        Can_use("Longshot", "child"),
        All(
            Child_Forest_Temple_Outside_Upper_Ledge.accessibility_level, 
            Any(
                Can_use("Hookshot", "child"),
                Can_use("Boomerang", "child")
            )
        )
    )
end)
Adult_Forest_Temple_NW_Outdoors:connect_one_way("Adult Forest Temple GS Level Island Courtyard", function() 
    return Any(
        Can_use("Longshot", "adult"),
        All(
            Adult_Forest_Temple_Outside_Upper_Ledge.accessibility_level, 
            Any(
                Can_use("Hookshot", "adult"),
                Can_use("Boomerang", "adult")
            )
        )
    )
end)

Child_Forest_Temple_NW_Outdoors:connect_one_way_entrance("Child Forest Temple NE Outdoors", Child_Forest_Temple_NE_Outdoors, function() return Can_use("GoldenScale", "child") end)
Child_Forest_Temple_NW_Outdoors:connect_one_way_entrance("Child Forest Temple Outdoors High Balconies", Child_Forest_Temple_Outdoors_High_Balconies, function()
    return Any(
        false,
        Has_explosives(),
        All(
            Any(
                Can_use("Boomerang", "child"),
                Nuts(),
                Can_use("DekuShield", "child")
            ),
            Any(
                Can_use("DekuStick", "child"),
                Can_use("KokiriSword", "child"),
                Can_use("Slingshot", "child")
            )
        )
    )
end)

Adult_Forest_Temple_NW_Outdoors:connect_one_way_entrance("Adult Forest Temple NE Outdoors", Adult_Forest_Temple_NE_Outdoors, function() return Can_use("GoldenScale", "adult") end)
Adult_Forest_Temple_NW_Outdoors:connect_one_way_entrance("Adult Forest Temple Outdoors High Balconies", Adult_Forest_Temple_Outdoors_High_Balconies, function()
    return Any(
        true,
        Has_explosives(),
        All(
            Any(
                Can_use("Boomerang", "adult"),
                Nuts(),
                Can_use("DekuShield", "adult")
            ),
            Any(
                Can_use("DekuStick", "adult"),
                Can_use("KokiriSword", "adult"),
                Can_use("Slingshot", "adult")
            )
        )
    )
end)


Child_Forest_Temple_Outdoors_High_Balconies:connect_one_way("Child Forest Temple Well Chest")
Child_Forest_Temple_Outdoors_High_Balconies:connect_one_way("Child Forest Temple Map Chest")
Child_Forest_Temple_Outdoors_High_Balconies:connect_one_way("Child Forest Temple Well Recovery Heart 1")
Child_Forest_Temple_Outdoors_High_Balconies:connect_one_way("Child Forest Temple Well Recovery Heart 2")

Adult_Forest_Temple_Outdoors_High_Balconies:connect_one_way("Adult Forest Temple Well Chest")
Adult_Forest_Temple_Outdoors_High_Balconies:connect_one_way("Adult Forest Temple Map Chest")
Adult_Forest_Temple_Outdoors_High_Balconies:connect_one_way("Adult Forest Temple Well Recovery Heart 1")
Adult_Forest_Temple_Outdoors_High_Balconies:connect_one_way("Adult Forest Temple Well Recovery Heart 2")


Child_Forest_Temple_Outdoors_High_Balconies:connect_one_way_entrance("Child Forest Temple NW Outdoors", Child_Forest_Temple_NW_Outdoors)
Child_Forest_Temple_Outdoors_High_Balconies:connect_one_way_entrance("Child Forest Temple NE Outdoors", Child_Forest_Temple_NE_Outdoors)
Child_Forest_Temple_Outdoors_High_Balconies:connect_one_way_entrance("Child Forest Temple Falling Room", Child_Forest_Temple_Falling_Room, function() 
    return All(
        Has("logic_forest_door_frame"),
        Can_use("HoverBoots", "child"),
        Scarecrow("child")
    )
end)

Adult_Forest_Temple_Outdoors_High_Balconies:connect_one_way_entrance("Adult Forest Temple NW Outdoors", Adult_Forest_Temple_NW_Outdoors)
Adult_Forest_Temple_Outdoors_High_Balconies:connect_one_way_entrance("Adult Forest Temple NE Outdoors", Adult_Forest_Temple_NE_Outdoors)
Adult_Forest_Temple_Outdoors_High_Balconies:connect_one_way_entrance("Adult Forest Temple Falling Room", Adult_Forest_Temple_Falling_Room, function() 
    return All(
        Has("logic_forest_door_frame"),
        Can_use("HoverBoots", "adult"),
        Scarecrow("adult")
    )
end)


Child_Forest_Temple_NE_Outdoors:connect_one_way("Child Forest Temple Raised Island Courtyard Chest", function() 
    return Any(
        Can_use("Hookshot", "child"),
        Child_Forest_Temple_Falling_Room.accessibility_level,
        All(
            Has("logic_forest_outdoors_ledge"),
            Can_use("HoverBoots", "child"),
            Child_Forest_Temple_Outdoors_High_Balconies.accessibility_level
        )
    )
end)
Child_Forest_Temple_NE_Outdoors:connect_one_way("Child Forest Temple GS Raised Island Courtyard", function() 
    return Any(
        Can_use("Hookshot", "child"),
        All(
            Has("logic_forest_outdoor_east_gs"),
            Can_use("Boomerang", "child")
        ),
        All(
            Child_Forest_Temple_Falling_Room.accessibility_level,
            Any(
                Can_use("Bow", "child"),
                Can_use("DinsFire", "child"),
                Has_explosives()
            )
        )
    )
end)

Adult_Forest_Temple_NE_Outdoors:connect_one_way("Adult Forest Temple Raised Island Courtyard Chest", function() 
    return Any(
        Can_use("Hookshot", "adult"),
        Adult_Forest_Temple_Falling_Room.accessibility_level,
        All(
            Has("logic_forest_outdoors_ledge"),
            Can_use("HoverBoots", "adult"),
            Adult_Forest_Temple_Outdoors_High_Balconies.accessibility_level
        )
    )
end)
Adult_Forest_Temple_NE_Outdoors:connect_one_way("Adult Forest Temple GS Raised Island Courtyard", function() 
    return Any(
        Can_use("Hookshot", "adult"),
        All(
            Has("logic_forest_outdoor_east_gs"),
            Can_use("Boomerang", "adult")
        ),
        All(
            Adult_Forest_Temple_Falling_Room.accessibility_level,
            Any(
                Can_use("Bow", "adult"),
                Can_use("DinsFire", "adult"),
                Has_explosives()
            )
        )
    )
end)

Child_Forest_Temple_NE_Outdoors:connect_one_way_entrance("Child Forest Temple Outdoors High Balconies", Child_Forest_Temple_Outdoors_High_Balconies, function() 
    return Any(
        Can_use("Longshot", "child"),
        All(
            Has("logic_forest_vines"),
            Can_use("Hookshot", "child")
        )
    ) 
end)
Child_Forest_Temple_NE_Outdoors:connect_one_way_entrance("Child Forest Temple NW Outdoors", Child_Forest_Temple_NW_Outdoors, function() 
    return Any(
        Can_use("IronBoots", "child"),
        Can_use("GoldenScale", "child")
    ) 
end)

Adult_Forest_Temple_NE_Outdoors:connect_one_way_entrance("Adult Forest Temple Outdoors High Balconies", Adult_Forest_Temple_Outdoors_High_Balconies, function() 
    return Any(
        Can_use("Longshot", "adult"),
        All(
            Has("logic_forest_vines"),
            Can_use("Hookshot", "adult")
        )
    ) 
end)
Adult_Forest_Temple_NE_Outdoors:connect_one_way_entrance("Adult Forest Temple NW Outdoors", Adult_Forest_Temple_NW_Outdoors, function() 
    return Any(
        Can_use("IronBoots", "adult"),
        Can_use("GoldenScale", "adult")
    ) 
end)


Child_Forest_Temple_Block_Push_Room:connect_one_way("Child Forest Temple Eye Switch Chest", function() 
    return All(
        Can_use("ProgressiveStrengthUpgrade", "child"),
        Any(
            Can_use("Bow", "child"),
            Can_use("Slingshot", "child")
        )
    ) 
end)
Adult_Forest_Temple_Block_Push_Room:connect_one_way("Adult Forest Temple Eye Switch Chest", function() 
    return All(
        Can_use("ProgressiveStrengthUpgrade", "adult"),
        Any(
            Can_use("Bow", "adult"),
            Can_use("Slingshot", "adult")
        )
    ) 
end)

Child_Forest_Temple_Block_Push_Room:connect_one_way_entrance("Child Forest Temple Outside Upper Ledge", Child_Forest_Temple_Outside_Upper_Ledge, function() 
    return Any(
        Can_use("HoverBoots", "child"),
        All(
            Has("logic_forest_outside_backdoor"),
            Can_use("ProgressiveStrengthUpgrade", "child"),
            Can_jumpslash("child")
        )
    )
end)
Child_Forest_Temple_Block_Push_Room:connect_one_way_entrance("Child Forest Temple Bow Region", Child_Forest_Temple_Bow_Region, function(keys) 
    return All(
        Can_use("ProgressiveStrengthUpgrade", "child"),
        Has("SmallKey(ForestTemple)", 3),
        false
    ), keys+1
end)
Child_Forest_Temple_Block_Push_Room:connect_one_way_entrance("Child Forest Temple Straightened Hall", Child_Forest_Temple_Straightened_Hall, function(keys) 
    return All(
        Can_use("ProgressiveStrengthUpgrade", "child"),
        Has("SmallKey(ForestTemple)", 2),
        Can_use("Bow", "child")
    ), keys+1
end)

Adult_Forest_Temple_Block_Push_Room:connect_one_way_entrance("Adult Forest Temple Outside Upper Ledge", Adult_Forest_Temple_Outside_Upper_Ledge, function() 
    return Any(
        Can_use("HoverBoots", "adult"),
        All(
            Has("logic_forest_outside_backdoor"),
            Can_use("ProgressiveStrengthUpgrade", "adult"),
            Can_jumpslash("adult")
        )
    )
end)
Adult_Forest_Temple_Block_Push_Room:connect_one_way_entrance("Adult Forest Temple Bow Region", Adult_Forest_Temple_Bow_Region, function(keys) 
    return All(
        Can_use("ProgressiveStrengthUpgrade", "adult"),
        Has("SmallKey(ForestTemple)", 3),
        true
    ), keys+1
end)
Adult_Forest_Temple_Block_Push_Room:connect_one_way_entrance("Adult Forest Temple Straightened Hall", Adult_Forest_Temple_Straightened_Hall, function(keys) 
    return All(
        Can_use("ProgressiveStrengthUpgrade", "adult"),
        Has("SmallKey(ForestTemple)", 2),
        Can_use("Bow", "adult")
    ), keys+1
end)


Child_Forest_Temple_Straightened_Hall:connect_one_way("Child Forest Temple Boss Key Chest")
Adult_Forest_Temple_Straightened_Hall:connect_one_way("Adult Forest Temple Boss Key Chest")

Child_Forest_Temple_Straightened_Hall:connect_one_way_entrance("Child Forest Temple Outside Upper Ledge", Child_Forest_Temple_Outside_Upper_Ledge)
Adult_Forest_Temple_Straightened_Hall:connect_one_way_entrance("Adult Forest Temple Outside Upper Ledge", Adult_Forest_Temple_Outside_Upper_Ledge)

Child_Forest_Temple_Outside_Upper_Ledge:connect_one_way("Child Forest Temple Floormaster Chest")
Child_Forest_Temple_Outside_Upper_Ledge:connect_one_way("Child Forest Temple Courtyard Recovery Heart 1")
Child_Forest_Temple_Outside_Upper_Ledge:connect_one_way("Child Forest Temple Courtyard Recovery Heart 2")

Adult_Forest_Temple_Outside_Upper_Ledge:connect_one_way("Adult Forest Temple Floormaster Chest")
Adult_Forest_Temple_Outside_Upper_Ledge:connect_one_way("Adult Forest Temple Courtyard Recovery Heart 1")
Adult_Forest_Temple_Outside_Upper_Ledge:connect_one_way("Adult Forest Temple Courtyard Recovery Heart 2")


Child_Forest_Temple_Outside_Upper_Ledge:connect_one_way_entrance("Child Forest Temple NW Outdoors", Child_Forest_Temple_NW_Outdoors)
Adult_Forest_Temple_Outside_Upper_Ledge:connect_one_way_entrance("Adult Forest Temple NW Outdoors", Adult_Forest_Temple_NW_Outdoors)

Child_Forest_Temple_Bow_Region:connect_one_way("Child Forest Temple Bow Chest")
Child_Forest_Temple_Bow_Region:connect_one_way("Child Forest Temple Red Poe Chest", function() return Can_use("Bow", "child") end)
Child_Forest_Temple_Bow_Region:connect_one_way("Child Forest Temple Blue Poe Chest", function() return Can_use("Bow", "child") end)
Child_Forest_Temple_Bow_Region:connect_one_way("Child Forest Temple Upper Stalfos Pot 1")
Child_Forest_Temple_Bow_Region:connect_one_way("Child Forest Temple Upper Stalfos Pot 2")
Child_Forest_Temple_Bow_Region:connect_one_way("Child Forest Temple Upper Stalfos Pot 3")
Child_Forest_Temple_Bow_Region:connect_one_way("Child Forest Temple Upper Stalfos Pot 4")
Child_Forest_Temple_Bow_Region:connect_one_way("Child Forest Temple Blue Poe Room Pot 1")
Child_Forest_Temple_Bow_Region:connect_one_way("Child Forest Temple Blue Poe Room Pot 2")
Child_Forest_Temple_Bow_Region:connect_one_way("Child Forest Temple Blue Poe Room Pot 3")

Adult_Forest_Temple_Bow_Region:connect_one_way("Adult Forest Temple Bow Chest")
Adult_Forest_Temple_Bow_Region:connect_one_way("Adult Forest Temple Red Poe Chest", function() return Can_use("Bow", "adult") end)
Adult_Forest_Temple_Bow_Region:connect_one_way("Adult Forest Temple Blue Poe Chest", function() return Can_use("Bow", "adult") end)
Adult_Forest_Temple_Bow_Region:connect_one_way("Adult Forest Temple Upper Stalfos Pot 1")
Adult_Forest_Temple_Bow_Region:connect_one_way("Adult Forest Temple Upper Stalfos Pot 2")
Adult_Forest_Temple_Bow_Region:connect_one_way("Adult Forest Temple Upper Stalfos Pot 3")
Adult_Forest_Temple_Bow_Region:connect_one_way("Adult Forest Temple Upper Stalfos Pot 4")
Adult_Forest_Temple_Bow_Region:connect_one_way("Adult Forest Temple Blue Poe Room Pot 1")
Adult_Forest_Temple_Bow_Region:connect_one_way("Adult Forest Temple Blue Poe Room Pot 2")
Adult_Forest_Temple_Bow_Region:connect_one_way("Adult Forest Temple Blue Poe Room Pot 3")


Child_Forest_Temple_Bow_Region:connect_one_way_entrance("Child Forest Temple Frozen Eye Switch Room", Child_Forest_Temple_Frozen_Eye_Switch_Room, function(keys) return Has("SmallKey(ForestTemple)", 5), keys+1 end)
Adult_Forest_Temple_Bow_Region:connect_one_way_entrance("Adult Forest Temple Frozen Eye Switch Room", Adult_Forest_Temple_Frozen_Eye_Switch_Room, function(keys) return Has("SmallKey(ForestTemple)", 5), keys+1 end)

Child_Forest_Temple_Frozen_Eye_Switch_Room:connect_one_way("Child Forest Temple Frozen Eye Switch Room Pot 1")
Child_Forest_Temple_Frozen_Eye_Switch_Room:connect_one_way("Child Forest Temple Frozen Eye Switch Room Pot 2")

Adult_Forest_Temple_Frozen_Eye_Switch_Room:connect_one_way("Adult Forest Temple Frozen Eye Switch Room Pot 1", function() 
    return Any(
        Can_use("Bow", "child"),
        Can_use("DinsFire", "child")
    ) 
end)
Adult_Forest_Temple_Frozen_Eye_Switch_Room:connect_one_way("Adult Forest Temple Frozen Eye Switch Room Pot 2", function() 
    return Any(
        Can_use("Bow", "adult"),
        Can_use("DinsFire", "adult")
    ) 
end)

Child_Forest_Temple_Frozen_Eye_Switch_Room:connect_one_way_entrance("Child Forest Temple Falling Room", Child_Forest_Temple_Falling_Room, function() 
    return Any(
        Can_use("Bow", "child"),
        Can_use("DinsFire", "child")
    ) 
end)
Adult_Forest_Temple_Frozen_Eye_Switch_Room:connect_one_way_entrance("Adult Forest Temple Falling Room", Adult_Forest_Temple_Falling_Room, function() 
    return Any(
        Can_use("Bow", "adult"),
        Can_use("DinsFire", "adult")
    ) 
end)

Child_Forest_Temple_Falling_Room:connect_one_way("Child Forest Temple Falling Ceiling Room Chest")
Child_Forest_Temple_Falling_Room:connect_one_way("Child Forest Temple Green Poe Room Pot 1")
Child_Forest_Temple_Falling_Room:connect_one_way("Child Forest Temple Green Poe Room Pot 2")

Adult_Forest_Temple_Falling_Room:connect_one_way("Adult Forest Temple Falling Ceiling Room Chest")
Adult_Forest_Temple_Falling_Room:connect_one_way("Adult Forest Temple Green Poe Room Pot 1")
Adult_Forest_Temple_Falling_Room:connect_one_way("Adult Forest Temple Green Poe Room Pot 2")


Child_Forest_Temple_Falling_Room:connect_one_way_entrance("Child Forest Temple NE Outdoors", Child_Forest_Temple_NE_Outdoors)
Adult_Forest_Temple_Falling_Room:connect_one_way_entrance("Adult Forest Temple NE Outdoors", Adult_Forest_Temple_NE_Outdoors)

Child_Forest_Temple_Before_Boss:connect_one_way("Child Forest Temple Basement Chest")
Child_Forest_Temple_Before_Boss:connect_one_way("Child Forest Temple GS Basement", function() 
    return Any(
        Can_use("Hookshot", "child"),
        Can_use("Boomerang", "child")
    ) 
end)

Adult_Forest_Temple_Before_Boss:connect_one_way("Adult Forest Temple Basement Chest")
Adult_Forest_Temple_Before_Boss:connect_one_way("Adult Forest Temple GS Basement", function() 
    return Any(
        Can_use("Hookshot", "adult"),
        Can_use("Boomerang", "adult")
    ) 
end)


Child_Forest_Temple_Before_Boss:connect_one_way_entrance("Child Forest Temple Boss Door", Child_Forest_Temple_Boss_Door)
Adult_Forest_Temple_Before_Boss:connect_one_way_entrance("Adult Forest Temple Boss Door", Adult_Forest_Temple_Boss_Door)





-- {
--     "region_name": "Forest Temple Lobby",
--     "dungeon": "Forest Temple",
--     "locations": {
--         "Forest Temple First Room Chest": "True",
--         "Forest Temple GS First Room": "
--             (is_adult and (Hookshot or Bow or Bombs)) or (is_child and (Boomerang or Slingshot)) or
--             has_bombchus or can_use(Dins_Fire) or (logic_forest_first_gs and (Bombs or can_jumpslash))"
--     },
--     "exits": {
--         "SFM Forest Temple Entrance Ledge": "True",
--         "Forest Temple Central Area": "is_adult or can_child_attack or Nuts"
--     }
-- },
-- {
--     "region_name": "Forest Temple Central Area",
--     "dungeon": "Forest Temple",
--     "locations": {
--         "Forest Temple First Stalfos Chest": "is_adult or Kokiri_Sword",
--         "Forest Temple Center Room Right Pot 1": "True",
--         "Forest Temple Center Room Right Pot 2": "True",
--         "Forest Temple Center Room Right Pot 3": "True",
--         "Forest Temple Center Room Left Pot 1": "True",
--         "Forest Temple Center Room Left Pot 2": "True",
--         "Forest Temple Center Room Left Pot 3": "True",
--         "Forest Temple Lower Stalfos Pot": "True",
--         "Forest Temple GS Lobby": "can_use(Hookshot) or can_use(Boomerang)",
--         "Fairy Pot": "has_bottle"
--     },
--     "exits": {
--         "Forest Temple NW Outdoors": "can_play(Song_of_Time) or is_child",
--         "Forest Temple NE Outdoors": "can_use(Bow) or can_use(Slingshot)",
--         "Forest Temple Block Push Room": "(Small_Key_Forest_Temple, 1)",
--         "Forest Temple Before Boss": "
--             (Forest_Temple_Jo_and_Beth and Forest_Temple_Amy_and_Meg) or forest_temple_shortcuts"
--     }
-- },
-- {
--     "region_name": "Forest Temple NW Outdoors",
--     "dungeon": "Forest Temple",
--     "locations": {
--         "Forest Temple GS Level Island Courtyard": "
--             can_use(Longshot) or
--             at('Forest Temple Outside Upper Ledge', can_use(Hookshot) or can_use(Boomerang))",
--         "Deku Baba Sticks": "is_adult or Kokiri_Sword or Boomerang",
--         "Deku Baba Nuts": "
--             is_adult or Slingshot or Sticks or
--             has_explosives or Kokiri_Sword or can_use(Dins_Fire)"
--     },
--     "exits": {
--         "Forest Temple NE Outdoors": "(Progressive_Scale, 2)",
--         # Other methods of crossing through the well are not currently relevant.
--         "Forest Temple Outdoors High Balconies": "
--             here(is_adult or has_explosives or
--                 ((Boomerang or Nuts or Deku_Shield) and (Sticks or Kokiri_Sword or Slingshot)))"
--     }
-- },
-- {
--     "region_name": "Forest Temple Outdoors High Balconies",
--     "dungeon": "Forest Temple",
--     "locations": {
--         "Forest Temple Well Chest": "True",
--         "Forest Temple Map Chest": "True",
--         "Forest Temple Well Recovery Heart 1": "True",
--         "Forest Temple Well Recovery Heart 2": "True"
--     },
--     "exits": {
--         "Forest Temple NW Outdoors": "True",
--         "Forest Temple NE Outdoors": "True",
--         "Forest Temple Falling Room": "
--             logic_forest_door_frame and can_use(Hover_Boots) and can_use(Scarecrow)"
--     }
-- },
-- {
--     "region_name": "Forest Temple NE Outdoors",
--     "dungeon": "Forest Temple",
--     "locations": {
--         "Forest Temple Raised Island Courtyard Chest": "
--             can_use(Hookshot) or at('Forest Temple Falling Room', True) or
--             (logic_forest_outdoors_ledge and can_use(Hover_Boots) and
--                 at('Forest Temple Outdoors High Balconies', True))",
--         "Forest Temple GS Raised Island Courtyard": "
--             can_use(Hookshot) or (logic_forest_outdoor_east_gs and can_use(Boomerang)) or
--             at('Forest Temple Falling Room', can_use(Bow) or can_use(Dins_Fire) or has_explosives)",
--         "Deku Baba Sticks": "is_adult or Kokiri_Sword or Boomerang",
--         "Deku Baba Nuts": "
--             is_adult or Slingshot or Sticks or
--             has_explosives or Kokiri_Sword or can_use(Dins_Fire)"
--     },
--     "exits": {
--         "Forest Temple Outdoors High Balconies": "
--             can_use(Longshot) or (logic_forest_vines and can_use(Hookshot))",
--             # Longshot can grab some very high up vines to drain the well.
--         "Forest Temple NW Outdoors": "can_use(Iron_Boots) or (Progressive_Scale, 2)"
--     }
-- },
-- {
--     "region_name": "Forest Temple Block Push Room",
--     "dungeon": "Forest Temple",
--     "locations": {
--         "Forest Temple Eye Switch Chest": "
--             Progressive_Strength_Upgrade and (can_use(Bow) or can_use(Slingshot))"
--     },
--     "exits": {
--         "Forest Temple Outside Upper Ledge": "
--             can_use(Hover_Boots) or
--             (logic_forest_outside_backdoor and Progressive_Strength_Upgrade and can_jumpslash)",
--         "Forest Temple Bow Region": "
--             Progressive_Strength_Upgrade and (Small_Key_Forest_Temple, 3) and is_adult",
--         "Forest Temple Straightened Hall": "
--             Progressive_Strength_Upgrade and (Small_Key_Forest_Temple, 2) and can_use(Bow)"
--         # Child cannot climb these large blocks
--     }
-- },
-- {
--     "region_name": "Forest Temple Straightened Hall",
--     "dungeon": "Forest Temple",
--     "locations": {
--         "Forest Temple Boss Key Chest": "True"
--     },
--     "exits": {
--         "Forest Temple Outside Upper Ledge": "True"
--     }
-- },
-- {
--     "region_name": "Forest Temple Outside Upper Ledge",
--     "dungeon": "Forest Temple",
--     "locations": {
--         "Forest Temple Floormaster Chest": "True",
--         "Forest Temple Courtyard Recovery Heart 1": "True",
--         "Forest Temple Courtyard Recovery Heart 2": "True"
--     },
--     "exits": {
--         "Forest Temple NW Outdoors": "True"
--     }
-- },
-- {
--     "region_name": "Forest Temple Bow Region",
--     "dungeon": "Forest Temple",
--     "events": {
--         "Forest Temple Jo and Beth": "can_use(Bow)"
--     },
--     "locations": {
--         "Forest Temple Bow Chest": "True",
--         "Forest Temple Red Poe Chest": "can_use(Bow)",
--         "Forest Temple Blue Poe Chest": "can_use(Bow)",
--         "Forest Temple Upper Stalfos Pot 1": "True",
--         "Forest Temple Upper Stalfos Pot 2": "True",
--         "Forest Temple Upper Stalfos Pot 3": "True",
--         "Forest Temple Upper Stalfos Pot 4": "True",
--         "Forest Temple Blue Poe Room Pot 1": "True",
--         "Forest Temple Blue Poe Room Pot 2": "True",
--         "Forest Temple Blue Poe Room Pot 3": "True"
--     },
--     "exits": {
--         "Forest Temple Frozen Eye Switch Room": "(Small_Key_Forest_Temple, 5)"
--     }
-- },
-- {
--     "region_name": "Forest Temple Frozen Eye Switch Room",
--     "dungeon": "Forest Temple",
--     "locations": {
--         "Forest Temple Frozen Eye Switch Room Pot 1": "True",
--         "Forest Temple Frozen Eye Switch Room Pot 2": "True"
--     },
--     "exits": {
--         "Forest Temple Falling Room": "Bow or can_use(Dins_Fire)"
--     }
-- },
-- {
--     "region_name": "Forest Temple Falling Room",
--     "dungeon": "Forest Temple",
--     "events": {
--         "Forest Temple Amy and Meg": "can_use(Bow)"
--     },
--     "locations": {
--         "Forest Temple Falling Ceiling Room Chest": "True",
--         "Forest Temple Green Poe Room Pot 1": "True",
--         "Forest Temple Green Poe Room Pot 2": "True"
--     },
--     "exits": {
--         "Forest Temple NE Outdoors": "True"
--     }
-- },
-- {
--     "region_name": "Forest Temple Before Boss",
--     "dungeon": "Forest Temple",
--     "locations": {
--         "Forest Temple Basement Chest": "True",
--         "Forest Temple GS Basement": "can_use(Hookshot) or can_use(Boomerang)"
--     },
--     "exits": {
--         "Forest Temple Boss Door": "True"
--     }
-- }