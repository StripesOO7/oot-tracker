-- Child_Fire_Temple_Lower = OOTLocation.new("Child_Fire_Temple_Lower")
-- Child_Fire_Temple_Lower_Locked_Door = OOTLocation.new("Child_Fire_Temple_Lower_Locked_Door")
-- Child_Fire_Temple_Big_Lava_Room = OOTLocation.new("Child_Fire_Temple_Big_Lava_Room")
-- Child_Fire_Temple_Elevator_Room = OOTLocation.new("Child_Fire_Temple_Elevator_Room")
-- Child_Fire_Temple_Boulder_Maze_Lower = OOTLocation.new("Child_Fire_Temple_Boulder_Maze_Lower")
-- Child_Fire_Temple_Narrow_Path_Room = OOTLocation.new("Child_Fire_Temple_Narrow_Path_Room")
-- Child_Fire_Temple_Boulder_Maze_Upper = OOTLocation.new("Child_Fire_Temple_Boulder_Maze_Upper")
-- Child_Fire_Temple_Flame_Maze = OOTLocation.new("Child_Fire_Temple_Flame_Maze")
-- Child_Fire_Temple_Upper = OOTLocation.new("Child_Fire_Temple_Upper")

-- Adult_Fire_Temple_Lower = OOTLocation.new("Adult_Fire_Temple_Lower")
-- Adult_Fire_Temple_Lower_Locked_Door = OOTLocation.new("Adult_Fire_Temple_Lower_Locked_Door")
-- Adult_Fire_Temple_Big_Lava_Room = OOTLocation.new("Adult_Fire_Temple_Big_Lava_Room")
-- Adult_Fire_Temple_Elevator_Room = OOTLocation.new("Adult_Fire_Temple_Elevator_Room")
-- Adult_Fire_Temple_Boulder_Maze_Lower = OOTLocation.new("Adult_Fire_Temple_Boulder_Maze_Lower")
-- Adult_Fire_Temple_Narrow_Path_Room = OOTLocation.new("Adult_Fire_Temple_Narrow_Path_Room")
-- Adult_Fire_Temple_Boulder_Maze_Upper = OOTLocation.new("Adult_Fire_Temple_Boulder_Maze_Upper")
-- Adult_Fire_Temple_Flame_Maze = OOTLocation.new("Adult_Fire_Temple_Flame_Maze")
-- Adult_Fire_Temple_Upper = OOTLocation.new("Adult_Fire_Temple_Upper")


Child_Fire_Temple_Lower:connect_one_way("Child Fire Temple Near Boss Chest", function() 
    return Any(
        Has("logic_fewer_tunic_requirements"),
        Can_use("GoronTunic", "child")
    )
end)
Child_Fire_Temple_Lower:connect_one_way("Child Fire Temple Near Boss Pot 1", function() 
    return All(
        false,
        Any(
            Can_use("HoverBoots", "child"),
            Can_use("Hookshot", "child")
        ),
        Any(
            Has("logic_fewer_tunic_requirements"),
            Can_use("GoronTunic", "child")
        )
    )
end)
Child_Fire_Temple_Lower:connect_one_way("Child Fire Temple Near Boss Pot 2", function() 
    return All(
        true,
        Any(
            Can_use("HoverBoots", "child"),
            Can_use("Hookshot", "child")
        ),
        Any(
            Has("logic_fewer_tunic_requirements"),
            Can_use("GoronTunic", "child")
        )
    )
end)
Child_Fire_Temple_Lower:connect_one_way("Child Fairy Pot", function() 
    return All(
        true,
        Has("Bottle"),
        Any(
            Can_use("HoverBoots", "child"),
            Can_use("Hookshot", "child")
        ),
        Any(
            Has("logic_fewer_tunic_requirements"),
            Can_use("GoronTunic", "child")
        )
    )
end)

Adult_Fire_Temple_Lower:connect_one_way("Adult Fire Temple Near Boss Chest", function() 
    return Any(
        Has("logic_fewer_tunic_requirements"),
        Can_use("GoronTunic", "adult")
    )
end)
Adult_Fire_Temple_Lower:connect_one_way("Adult Fire Temple Near Boss Pot 1", function() 
    return All(
        true,
        Any(
            Can_use("HoverBoots", "adult"),
            Can_use("Hookshot", "adult")
        ),
        Any(
            Has("logic_fewer_tunic_requirements"),
            Can_use("GoronTunic", "adult")
        )
    )
end)
Adult_Fire_Temple_Lower:connect_one_way("Adult Fire Temple Near Boss Pot 2", function() 
    return All(
        true,
        Any(
            Can_use("HoverBoots", "adult"),
            Can_use("Hookshot", "adult")
        ),
        Any(
            Has("logic_fewer_tunic_requirements"),
            Can_use("GoronTunic", "adult")
        )
    )
end)
Adult_Fire_Temple_Lower:connect_one_way("Adult Fairy Pot", function() 
    return All(
        true,
        Has("Bottle"),
        Any(
            Can_use("HoverBoots", "adult"),
            Can_use("Hookshot", "adult")
        ),
        Any(
            Has("logic_fewer_tunic_requirements"),
            Can_use("GoronTunic", "adult")
        )
    )
end)


Child_Fire_Temple_Lower:connect_one_way_entrance("Child DMC Fire Temple Entrance", Child_DMC_Fire_Temple_Entrance)
Child_Fire_Temple_Lower:connect_one_way_entrance("Child Fire Temple Big Lava Room", Child_Fire_Temple_Big_Lava_Room, function()
    return All(
        Has("SmallKey(FireTemple)", 2),
        Any(
            Has("logic_fewer_tunic_requirements"),
            Can_use("GoronTunic", "child")
        )
    )
end)
Child_Fire_Temple_Lower:connect_one_way_entrance("Child Fire Temple Lower Locked Door", Child_Fire_Temple_Lower_Locked_Door, function()
    return All(
        Any(
            Has("SmallKey(FireTemple)", 8),
            not Has("keysanity")
        ),
        Can_use("MegatonHammer" ,"child")
    )
end)
Child_Fire_Temple_Lower:connect_one_way_entrance("Child Fire Temple Boss Door", Child_Fire_Temple_Boss_Door, function()
    return All(
        false,
        Any(
            Has("logic_fewer_tunic_requirements"),
            Can_use("GoronTunic", "xgild")
        ),
        Any(
            Has("fire_temple_shortcuts"),
            Has("logic_fire_boss_door_jump"),
            Can_use(child)
        )
    )
end)

Adult_Fire_Temple_Lower:connect_one_way_entrance("Adult DMC Fire Temple Entrance", Adult_DMC_Fire_Temple_Entrance)
Adult_Fire_Temple_Lower:connect_one_way_entrance("Adult Fire Temple Big Lava Room", Adult_Fire_Temple_Big_Lava_Room,function()
    return All(
        Has("SmallKey(FireTemple)", 2),
        Any(
            Has("logic_fewer_tunic_requirements"),
            Can_use("GoronTunic", "adult")
        )
    )
end)
Adult_Fire_Temple_Lower:connect_one_way_entrance("Adult Fire Temple Lower Locked Door", Adult_Fire_Temple_Lower_Locked_Door,function()
    return All(
        Any(
            Has("SmallKey(FireTemple)", 8),
            not Has("keysanity")
        ),
        Can_use("MegatonHammer" ,"adult")
    )
end)
Adult_Fire_Temple_Lower:connect_one_way_entrance("Adult Fire Temple Boss Door", Adult_Fire_Temple_Boss_Door, function()
    return All(
        true,
        Any(
            Has("logic_fewer_tunic_requirements"),
            Can_use("GoronTunic", "adult")
        ),
        Any(
            Has("fire_temple_shortcuts"),
            Has("logic_fire_boss_door_jump"),
            Can_use("HoverBoots", "adult")
        )
    )
end)


Child_Fire_Temple_Lower_Locked_Door:connect_one_way("Child Fire Temple Flare Dancer Chest")
Child_Fire_Temple_Lower_Locked_Door:connect_one_way("Child Fire Temple Boss Key Chest")
Child_Fire_Temple_Lower_Locked_Door:connect_one_way("Child Fire Temple GS Boss Key Loop")

Adult_Fire_Temple_Lower_Locked_Door:connect_one_way("Adult Fire Temple Flare Dancer Chest")
Adult_Fire_Temple_Lower_Locked_Door:connect_one_way("Adult Fire Temple Boss Key Chest")
Adult_Fire_Temple_Lower_Locked_Door:connect_one_way("Adult Fire Temple GS Boss Key Loop")


-- Child_Fire_Temple_Lower_Locked_Door:connect_one_way_entrance()
-- Adult_Fire_Temple_Lower_Locked_Door:connect_one_way_entrance()

Child_Fire_Temple_Big_Lava_Room:connect_one_way("Child Fire Temple Big Lava Room Lower Open Door Chest")
Child_Fire_Temple_Big_Lava_Room:connect_one_way("Child Fire Temple Big Lava Room Blocked Door Chest", function() 
    return All(
        false,
        Has_explosives()
    ) 
end)
Child_Fire_Temple_Big_Lava_Room:connect_one_way("Child Fire Temple Big Lava Room Pot 1")
Child_Fire_Temple_Big_Lava_Room:connect_one_way("Child Fire Temple Big Lava Room Pot 2")
Child_Fire_Temple_Big_Lava_Room:connect_one_way("Child Fire Temple Big Lava Room Pot 3")
Child_Fire_Temple_Big_Lava_Room:connect_one_way("Child Fire Temple GS Song of Time Room", function() 
    return All(
        false,
        Any(
            Can_play("SongofTime"),
            Has("logic_fire_song_of_time")
        )
    ) 
end)

Adult_Fire_Temple_Big_Lava_Room:connect_one_way("Adult Fire Temple Big Lava Room Lower Open Door Chest")
Adult_Fire_Temple_Big_Lava_Room:connect_one_way("Adult Fire Temple Big Lava Room Blocked Door Chest", function() 
    return All(
        true,
        Has_explosives()
    ) 
end)
Adult_Fire_Temple_Big_Lava_Room:connect_one_way("Adult Fire Temple Big Lava Room Pot 1")
Adult_Fire_Temple_Big_Lava_Room:connect_one_way("Adult Fire Temple Big Lava Room Pot 2")
Adult_Fire_Temple_Big_Lava_Room:connect_one_way("Adult Fire Temple Big Lava Room Pot 3")
Adult_Fire_Temple_Big_Lava_Room:connect_one_way("Adult Fire Temple GS Song of Time Room", function() 
    return All(
        true,
        Any(
            Can_play("SongofTime"),
            Has("logic_fire_song_of_time")
        )
    ) 
end)


Child_Fire_Temple_Big_Lava_Room:connect_one_way_entrance("Child Fire Temple Elevator Room", Child_Fire_Temple_Elevator_Room, function() 
    return All(
        false,
        Can_use("GoronTunic", "child"),
        Has("SmallKey(FireTemple)", 3)
    ) 
end)
Adult_Fire_Temple_Big_Lava_Room:connect_one_way_entrance("Adult Fire Temple Elevator Room", Adult_Fire_Temple_Elevator_Room, function() 
    return All(
        true,
        Can_use("GoronTunic", "adult"),
        Has("SmallKey(FireTemple)", 3)
    ) 
end)

Child_Fire_Temple_Elevator_Room:connect_one_way("Child Fire Temple Elevator Room Recovery Heart 1")
Child_Fire_Temple_Elevator_Room:connect_one_way("Child Fire Temple Elevator Room Recovery Heart 2")
Child_Fire_Temple_Elevator_Room:connect_one_way("Child Fire Temple Elevator Room Recovery Heart 3")

Adult_Fire_Temple_Elevator_Room:connect_one_way("Adult Fire Temple Elevator Room Recovery Heart 1")
Adult_Fire_Temple_Elevator_Room:connect_one_way("Adult Fire Temple Elevator Room Recovery Heart 2")
Adult_Fire_Temple_Elevator_Room:connect_one_way("Adult Fire Temple Elevator Room Recovery Heart 3")


Child_Fire_Temple_Elevator_Room:connect_one_way_entrance("Child Fire Temple Boulder Maze Lower", Child_Fire_Temple_Boulder_Maze_Lower, function() 
    return All(
        Has("SmallKey(FireTemple)", 4),
        Any(
            Has("ProgressiveStrengthUpgrade"),
            Has("logic_fire_strength")
        ),
        Any(
            Has_explosives(),
            Can_use("Bow", "child"),
            Can_use("Hookshot", "child")
        )
    )
end)
Adult_Fire_Temple_Elevator_Room:connect_one_way_entrance("Adult Fire Temple Boulder Maze Lower", Adult_Fire_Temple_Boulder_Maze_Lower, function() 
    return All(
        Has("SmallKey(FireTemple)", 4),
        Any(
            Has("ProgressiveStrengthUpgrade"),
            Has("logic_fire_strength")
        ),
        Any(
            Has_explosives(),
            Can_use("Bow", "adult"),
            Can_use("Hookshot", "adult")
        )
    )
end)

Child_Fire_Temple_Boulder_Maze_Lower:connect_one_way("Child Fire Temple Boulder Maze Lower Chest")
Child_Fire_Temple_Boulder_Maze_Lower:connect_one_way("Child Fire Temple Boulder Maze Side Room Chest")
Child_Fire_Temple_Boulder_Maze_Lower:connect_one_way("Child Fire Temple GS Boulder Maze", function() return Has_explosives() end)

Adult_Fire_Temple_Boulder_Maze_Lower:connect_one_way("Adult Fire Temple Boulder Maze Lower Chest")
Adult_Fire_Temple_Boulder_Maze_Lower:connect_one_way("Adult Fire Temple Boulder Maze Side Room Chest")
Adult_Fire_Temple_Boulder_Maze_Lower:connect_one_way("Adult Fire Temple GS Boulder Maze", function() return Has_explosives() end)


Child_Fire_Temple_Boulder_Maze_Lower:connect_one_way_entrance("Child Fire Temple Narrow Path Room", Child_Fire_Temple_Narrow_Path_Room, function() return Has("SmallKey(FireTemple)", 5) end)
Adult_Fire_Temple_Boulder_Maze_Lower:connect_one_way_entrance("Adult Fire Temple Narrow Path Room", Adult_Fire_Temple_Narrow_Path_Room, function() return Has("SmallKey(FireTemple)", 5) end)

Child_Fire_Temple_Narrow_Path_Room:connect_one_way("Child Fire Temple Map Chest", function()
    return Any(
        Can_use("Bow", "child"),
        Has("SmallKey(FireTemple)", 6)
    )
end)
Child_Fire_Temple_Narrow_Path_Room:connect_one_way("Child Fire Temple Narrow Path Room Recovery Heart 1")
Child_Fire_Temple_Narrow_Path_Room:connect_one_way("Child Fire Temple Narrow Path Room Recovery Heart 2")
Child_Fire_Temple_Narrow_Path_Room:connect_one_way("Child Fire Temple Narrow Path Room Recovery Heart 3")

Adult_Fire_Temple_Narrow_Path_Room:connect_one_way("Adult Fire Temple Map Chest", function()
    return Any(
        Can_use("Bow", "adult"),
        Has("SmallKey(FireTemple)", 6)
    )
end)
Adult_Fire_Temple_Narrow_Path_Room:connect_one_way("Adult Fire Temple Narrow Path Room Recovery Heart 1")
Adult_Fire_Temple_Narrow_Path_Room:connect_one_way("Adult Fire Temple Narrow Path Room Recovery Heart 2")
Adult_Fire_Temple_Narrow_Path_Room:connect_one_way("Adult Fire Temple Narrow Path Room Recovery Heart 3")

Child_Fire_Temple_Narrow_Path_Room:connect_one_way_entrance("Child Fire Temple Boulder Maze Upper", Child_Fire_Temple_Boulder_Maze_Upper, function() return Has("SmallKey(FireTemple)", 6) end)
Adult_Fire_Temple_Narrow_Path_Room:connect_one_way_entrance("Adult Fire Temple Boulder Maze Upper", Adult_Fire_Temple_Boulder_Maze_Upper, function() return Has("SmallKey(FireTemple)", 6) end)


Child_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Child Fire Temple Boulder Maze Upper Chest")
Child_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Child Fire Temple Boulder Maze Shortcut Chest", function() return Has_explosives() end)
Child_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Child Fire Temple Scarecrow Chest", function() 
    return Any(
        Can_use("Scarecrow", "child"),
        All(
            Has("logic_fire_scarecrow"),
            Can_use("Longshot", "child")
        )
    ) 
end)
Child_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Child Fire Temple Moving Fire Room Recovery Heart 1")
Child_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Child Fire Temple Moving Fire Room Recovery Heart 2")
Child_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Child Fire Temple Moving Fire Room Recovery Heart 3")
Child_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Child Fire Temple GS Scarecrow Climb", function() 
    return Any(
        Can_use("Scarecrow", "child"),
        All(
            Has("logic_fire_scarecrow"),
            Can_use("Longshot", "child")
        )
    ) 
end)
Child_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Child Fire Temple GS Scarecrow Top", function() 
    return Any(
        Can_use("Scarecrow", "child"),
        All(
            Has("logic_fire_scarecrow"),
            Can_use("Longshot", "child")
        )
    ) 
end)

Adult_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Adult Fire Temple Boulder Maze Upper Chest")
Adult_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Adult Fire Temple Boulder Maze Shortcut Chest", function() return Has_explosives() end)
Adult_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Adult Fire Temple Scarecrow Chest", function() 
    return Any(
        Can_use("Scarecrow", "adult"),
        All(
            Has("logic_fire_scarecrow"),
            Can_use("Longshot", "adult")
        )
    ) 
end)
Adult_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Adult Fire Temple Moving Fire Room Recovery Heart 1")
Adult_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Adult Fire Temple Moving Fire Room Recovery Heart 2")
Adult_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Adult Fire Temple Moving Fire Room Recovery Heart 3")
Adult_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Adult Fire Temple GS Scarecrow Climb", function() 
    return Any(
        Can_use("Scarecrow", "adult"),
        All(
            Has("logic_fire_scarecrow"),
            Can_use("Longshot", "adult")
        )
    ) 
end)
Adult_Fire_Temple_Boulder_Maze_Upper:connect_one_way("Adult Fire Temple GS Scarecrow Top", function() 
    return Any(
        Can_use("Scarecrow", "adult"),
        All(
            Has("logic_fire_scarecrow"),
            Can_use("Longshot", "adult")
        )
    ) 
end)


Child_Fire_Temple_Boulder_Maze_Upper:connect_one_way_entrance("Child Fire Temple Flame Maze", Child_Fire_Temple_Flame_Maze, function() return Has("SmallKey(FireTemple)", 7) end)
Adult_Fire_Temple_Boulder_Maze_Upper:connect_one_way_entrance("Adult Fire Temple Flame Maze", Adult_Fire_Temple_Flame_Maze, function() return Has("SmallKey(FireTemple)", 7) end)

Child_Fire_Temple_Flame_Maze:connect_one_way("Child Fire Temple Compass Chest")
Child_Fire_Temple_Flame_Maze:connect_one_way("Child Fire Temple Flame Maze Left Side Pot 1")
Child_Fire_Temple_Flame_Maze:connect_one_way("Child Fire Temple Flame Maze Left Side Pot 2")
Child_Fire_Temple_Flame_Maze:connect_one_way("Child Fire Temple Flame Maze Left Side Pot 3")
Child_Fire_Temple_Flame_Maze:connect_one_way("Child Fire Temple Flame Maze Left Side Pot 4")

Adult_Fire_Temple_Flame_Maze:connect_one_way("Adult Fire Temple Compass Chest")
Adult_Fire_Temple_Flame_Maze:connect_one_way("Adult Fire Temple Flame Maze Left Side Pot 1")
Adult_Fire_Temple_Flame_Maze:connect_one_way("Adult Fire Temple Flame Maze Left Side Pot 2")
Adult_Fire_Temple_Flame_Maze:connect_one_way("Adult Fire Temple Flame Maze Left Side Pot 3")
Adult_Fire_Temple_Flame_Maze:connect_one_way("Adult Fire Temple Flame Maze Left Side Pot 4")


Child_Fire_Temple_Flame_Maze:connect_one_way_entrance("Child Fire Temple Upper", Child_Fire_Temple_Upper, function() 
    return Any(
        Has("SmallKey(FireTemple)", 8),
        All(
            Can_use("HoverBoots", "child"),
            Can_use("MegatonHammer", "child")
        ),
        Has("logic_fire_flame_maze")
    ) 
end)
Adult_Fire_Temple_Flame_Maze:connect_one_way_entrance("Adult Fire Temple Upper", Adult_Fire_Temple_Upper, function() 
    return Any(
        Has("SmallKey(FireTemple)", 8),
        All(
            Can_use("HoverBoots", "adult"),
            Can_use("MegatonHammer", "adult")
        ),
        Has("logic_fire_flame_maze")
    ) 
end)

Child_Fire_Temple_Upper:connect_one_way("Child Fire Temple Highest Goron Chest", function() 
    return All(
        Has("MegatonHammer"),
        Any(
            Can_play("SongofTime"),
            All(
                Has("logic_rusted_switches"),
                Any(
                    Can_use("HoverBoots", "child"),
                    Has_explosives()
                )
            )
        )
    )
end)
Child_Fire_Temple_Upper:connect_one_way("Child Fire Temple Megaton Hammer Chest", function() return Has_explosives() end)
Child_Fire_Temple_Upper:connect_one_way("Child Fire Temple Flame Maze Right Side Pot 1")
Child_Fire_Temple_Upper:connect_one_way("Child Fire Temple Flame Maze Right Side Pot 2")
Child_Fire_Temple_Upper:connect_one_way("Child Fire Temple Flame Maze Right Side Pot 3")
Child_Fire_Temple_Upper:connect_one_way("Child Fire Temple Flame Maze Right Side Pot 4")

Adult_Fire_Temple_Upper:connect_one_way("Adult Fire Temple Highest Goron Chest", function() 
    return All(
        Has("MegatonHammer"),
        Any(
            Can_play("SongofTime"),
            All(
                Has("logic_rusted_switches"),
                Any(
                    Can_use("HoverBoots", "adult"),
                    Has_explosives()
                )
            )
        )
    )
end)
Adult_Fire_Temple_Upper:connect_one_way("Adult Fire Temple Megaton Hammer Chest", function() return Has_explosives() end)
Adult_Fire_Temple_Upper:connect_one_way("Adult Fire Temple Flame Maze Right Side Pot 1")
Adult_Fire_Temple_Upper:connect_one_way("Adult Fire Temple Flame Maze Right Side Pot 2")
Adult_Fire_Temple_Upper:connect_one_way("Adult Fire Temple Flame Maze Right Side Pot 3")
Adult_Fire_Temple_Upper:connect_one_way("Adult Fire Temple Flame Maze Right Side Pot 4")


Child_Fire_Temple_Upper:connect_one_way_entrance("Child Fire Temple Boss Door", Child_Fire_Temple_Boss_Door, function() 
    return All(
        Has("MegatonHammer"),
        Any(
            Can_play("SongofTime"),
            Has_explosives()
        )
    )
end)
Adult_Fire_Temple_Upper:connect_one_way_entrance("Adult Fire Temple Boss Door", Adult_Fire_Temple_Boss_Door, function() 
    return All(
        Has("MegatonHammer"),
        Any(
            Can_play("SongofTime"),
            Has_explosives()
        )
    )
end)






--     {
--         "region_name": "Fire Temple Lower",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple Near Boss Chest": "
--                 logic_fewer_tunic_requirements or can_use(Goron_Tunic)",
--             "Fire Temple Near Boss Pot 1": "
--                 is_adult and (HoverBoots or Hookshot) and
--                 (logic_fewer_tunic_requirements or Goron_Tunic)",
--             "Fire Temple Near Boss Pot 2": "
--                 is_adult and (HoverBoots or Hookshot) and
--                 (logic_fewer_tunic_requirements or Goron_Tunic)",
--             "Fairy Pot": "
--                 is_adult and has_bottle and (HoverBoots or Hookshot) and
--                 (logic_fewer_tunic_requirements or Goron_Tunic)"
--         },
--         "exits": {
--             "DMC Fire Temple Entrance": "True",
--             "Fire Temple Big Lava Room": "
--                 (SmallKey(FireTemple), 2) and
--                 (logic_fewer_tunic_requirements or can_use(Goron_Tunic))",
--             "Fire Temple Lower Locked Door": "
--                 ((SmallKey(FireTemple), 8) or not keysanity) and can_use(Megaton_Hammer)",
--             "Fire Temple Boss Door": "
--                 is_adult and (logic_fewer_tunic_requirements or Goron_Tunic) and
--                 (fire_temple_shortcuts or logic_fire_boss_door_jump or HoverBoots)"
--         }
--     },
--     {
--         "region_name": "Fire Temple Lower Locked Door",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple Flare Dancer Chest": "True",
--             "Fire Temple Boss Key Chest": "True",
--             "Fire Temple GS Boss Key Loop": "True"
--         }
--     },
--     {
--         "region_name": "Fire Temple Big Lava Room",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple Big Lava Room Lower Open Door Chest": "True",
--             "Fire Temple Big Lava Room Blocked Door Chest": "is_adult and has_explosives",
--             "Fire Temple Big Lava Room Pot 1": "True",
--             "Fire Temple Big Lava Room Pot 2": "True",
--             "Fire Temple Big Lava Room Pot 3": "True",
--             "Fire Temple GS Song of Time Room": "
--                 is_adult and (can_play(Song_of_Time) or logic_fire_song_of_time)"
--         },
--         "exits": {
--             "Fire Temple Elevator Room": "
--                 is_adult and Goron_Tunic and (SmallKey(FireTemple), 3)"
--         }
--     },
--     {
--         "region_name": "Fire Temple Elevator Room",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple Elevator Room Recovery Heart 1": "True",
--             "Fire Temple Elevator Room Recovery Heart 2": "True",
--             "Fire Temple Elevator Room Recovery Heart 3": "True"
--         },
--         "exits": {
--             "Fire Temple Boulder Maze Lower": "
--                 (SmallKey(FireTemple), 4) and
--                 (Progressive_Strength_Upgrade or logic_fire_strength) and
--                 (has_explosives or Bow or Hookshot)"
--         }
--     },
--     {
--         "region_name": "Fire Temple Boulder Maze Lower",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple Boulder Maze Lower Chest": "True",
--             "Fire Temple Boulder Maze Side Room Chest": "True",
--             "Fire Temple GS Boulder Maze": "has_explosives"
--         },
--         "exits": {
--             "Fire Temple Narrow Path Room": "(SmallKey(FireTemple), 5)"
--         }
--     },
--     {
--         "region_name": "Fire Temple Narrow Path Room",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple Map Chest": "Bow or (SmallKey(FireTemple), 6)",
--             "Fire Temple Narrow Path Room Recovery Heart 1": "True",
--             "Fire Temple Narrow Path Room Recovery Heart 2": "True",
--             "Fire Temple Narrow Path Room Recovery Heart 3": "True"
--         },
--         "exits": {
--             "Fire Temple Boulder Maze Upper": "(SmallKey(FireTemple), 6)"
--         }
--     },
--     {
--         "region_name": "Fire Temple Boulder Maze Upper",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple Boulder Maze Upper Chest": "True",
--             "Fire Temple Boulder Maze Shortcut Chest": "has_explosives",
--             "Fire Temple Scarecrow Chest": "
--                 can_use(Scarecrow) or (logic_fire_scarecrow and Longshot)",
--             "Fire Temple Moving Fire Room Recovery Heart 1": "True",
--             "Fire Temple Moving Fire Room Recovery Heart 2": "True",
--             "Fire Temple Moving Fire Room Recovery Heart 3": "True",
--             "Fire Temple GS Scarecrow Climb": "
--                 can_use(Scarecrow) or (logic_fire_scarecrow and Longshot)",
--             "Fire Temple GS Scarecrow Top": "
--                 can_use(Scarecrow) or (logic_fire_scarecrow and Longshot)"
--         },
--         "exits": {
--             "Fire Temple Flame Maze": "(SmallKey(FireTemple), 7)"
--         }
--     },
--     {
--         "region_name": "Fire Temple Flame Maze",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple Compass Chest": "True",
--             "Fire Temple Flame Maze Left Side Pot 1": "True",
--             "Fire Temple Flame Maze Left Side Pot 2": "True",
--             "Fire Temple Flame Maze Left Side Pot 3": "True",
--             "Fire Temple Flame Maze Left Side Pot 4": "True"
--         },
--         "exits": {
--             "Fire Temple Upper": "
--                 (SmallKey(FireTemple), 8) or
--                 (HoverBoots and Megaton_Hammer) or logic_fire_flame_maze"
--         }
--     },
--     {
--         "region_name": "Fire Temple Upper",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple Highest Goron Chest": "
--                 Megaton_Hammer and
--                 (can_play(Song_of_Time) or
--                     (logic_rusted_switches and (HoverBoots or has_explosives)))",
--             "Fire Temple Megaton Hammer Chest": "has_explosives",
--             "Fire Temple Flame Maze Right Side Pot 1": "True",
--             "Fire Temple Flame Maze Right Side Pot 2": "True",
--             "Fire Temple Flame Maze Right Side Pot 3": "True",
--             "Fire Temple Flame Maze Right Side Pot 4": "True"
--         },
--         "exits": {
--             "Fire Temple Boss Door": "
--                 Megaton_Hammer and (can_play(Song_of_Time) or has_explosives)"
--         }
--     }

-- --MQ

--     {
--         "region_name": "Fire Temple Lower",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ Map Room Side Chest": "
--                 is_adult or Kokiri_Sword or Sticks or Slingshot or Bombs or can_use(Dins_Fire)",
--             "Fire Temple MQ First Room Pot 1": "True",
--             "Fire Temple MQ First Room Pot 2": "True"
--         },
--         "exits": {
--             "DMC Fire Temple Entrance": "True",
--             "Fire Temple Near Boss": "
--                 is_adult and has_fire_source and
--                 (logic_fewer_tunic_requirements or can_use(Goron_Tunic))",
--             "Fire Temple Lower Locked Door": "
--                 (SmallKey(FireTemple), 5) and (is_adult or Kokiri_Sword)",
--             "Fire Temple Big Lava Room": "
--                 is_adult and Megaton_Hammer and (logic_fewer_tunic_requirements or Goron_Tunic)"
--         }
--     },
--     {
--         "region_name": "Fire Temple Near Boss",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ Near Boss Chest": "
--                 is_adult and
--                 ((logic_fire_mq_near_boss and has_fire_source and Bow) or
--                     ((HoverBoots or Hookshot) and
--                         ((can_use(Fire_Arrows) and can_break_heated_crate) or
--                             (can_use(Dins_Fire) and
--                                 ((damage_multiplier != 'ohko' and damage_multiplier != 'quadruple') or
--                                     Goron_Tunic or HoverBoots or Bow or Longshot)))))",
--             "Fire Temple MQ Near Boss Pot 1": "can_use(Hookshot) or can_use(HoverBoots)",
--             "Fire Temple MQ Near Boss Pot 2": "can_use(Hookshot) or can_use(HoverBoots)",
--             "Fire Temple MQ Near Boss Left Crate 1": "can_break_heated_crate",
--             "Fire Temple MQ Near Boss Left Crate 2": "can_break_heated_crate",
--             "Fire Temple MQ Near Boss Right Lower Crate 1": "
--                 (can_use(Hookshot) or can_use(HoverBoots)) and can_break_heated_crate",
--             "Fire Temple MQ Near Boss Right Lower Crate 2": "
--                 (can_use(Hookshot) or can_use(HoverBoots)) and can_break_heated_crate",
--             "Fire Temple MQ Near Boss Right Mid Crate": "
--                 (can_use(Hookshot) or can_use(HoverBoots)) and can_break_heated_crate",
--             "Fire Temple MQ Near Boss Right Upper Crate": "
--                 (can_use(Hookshot) or can_use(HoverBoots)) and can_break_heated_crate"
--         },
--         "exits": {
--             "Fire Temple Boss Door": "
--                 is_adult and (fire_temple_shortcuts or logic_fire_boss_door_jump or HoverBoots)"
--         }
--     },
--     {
--         "region_name": "Fire Temple Lower Locked Door",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ Megaton Hammer Chest": "
--                 is_adult and (has_explosives or Megaton_Hammer or Hookshot)",
--             "Fire Temple MQ Map Chest": "can_use(Megaton_Hammer)",
--             "Fire Temple MQ Iron Knuckle Room Pot 1": "True",
--             "Fire Temple MQ Iron Knuckle Room Pot 2": "True",
--             "Fire Temple MQ Iron Knuckle Room Pot 3": "True",
--             "Fire Temple MQ Iron Knuckle Room Pot 4": "True",
--             "Fairy Pot": "has_bottle"
--         }
--     },
--     {
--         "region_name": "Fire Temple Big Lava Room",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ Boss Key Chest": "
--                 has_fire_source and (Bow or logic_fire_mq_bk_chest) and Hookshot",
--             "Fire Temple MQ Big Lava Room Blocked Door Chest": "
--                 (Hookshot or logic_fire_mq_blocked_chest) and has_explosives and has_fire_source",
--             "Fire Temple MQ Big Lava Room Left Pot": "True",
--             "Fire Temple MQ Big Lava Room Right Pot": "Hookshot or logic_fire_mq_blocked_chest",
--             "Fire Temple MQ Big Lava Room Alcove Pot": "True",
--             "Fire Temple MQ Boss Key Chest Room Pot": "
--                 has_fire_source and (Bow or logic_fire_mq_bk_chest) and Hookshot",
--             "Fire Temple MQ GS Big Lava Room Open Door": "True",
--             "Fairy Pot": "
--                 has_bottle and has_fire_source and (Bow or logic_fire_mq_bk_chest) and
--                 (Hookshot or logic_fire_song_of_time)"

--         },
--         "exits": {
--             "Fire Temple Elevator Room": "Goron_Tunic and (SmallKey(FireTemple), 2)"
--         }
--     },
--     {
--         "region_name": "Fire Temple Elevator Room",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ Elevator Room Recovery Heart 1": "True",
--             "Fire Temple MQ Elevator Room Recovery Heart 2": "True",
--             "Fire Temple MQ Elevator Room Recovery Heart 3": "True"
--         },
--         "exits": {
--             "Fire Temple Lower Lizalfos Maze": "has_fire_source or (logic_fire_mq_climb and HoverBoots)"
--         }
--     },
--     {
--         "region_name": "Fire Temple Lower Lizalfos Maze",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ Lizalfos Maze Lower Chest": "True",
--             "Fire Temple MQ Lizalfos Maze Side Room Chest": "
--                 has_explosives and
--                 (logic_fire_mq_maze_side_room or at('Fire Temple Upper Lizalfos Maze', True))",
--             "Fire Temple MQ Lower Lizalfos Maze Crate 1": "True",
--             "Fire Temple MQ Lower Lizalfos Maze Crate 2": "True",
--             "Fire Temple MQ Lower Lizalfos Maze Crate 3": "True"
--         },
--         "exits": {
--             "Fire Temple Upper Lizalfos Maze": "
--                 ((has_explosives or logic_rusted_switches) and Hookshot) or
--                 (logic_fire_mq_maze_hovers and HoverBoots) or logic_fire_mq_maze_jump"
--         }
--     },
--     {
--         "region_name": "Fire Temple Upper Lizalfos Maze",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ Lizalfos Maze Upper Chest": "True",
--             "Fire Temple MQ Upper Lizalfos Maze Crate 1": "True",
--             "Fire Temple MQ Upper Lizalfos Maze Crate 2": "True",
--             "Fire Temple MQ Upper Lizalfos Maze Crate 3": "True"
--         },
--         "exits": {
--             "Fire Temple Shortcut": "has_explosives",
--             "Fire Temple Block On Fire Room": "
--                 (Longshot or (can_play(Song_of_Time) and Hookshot)) and
--                 (has_explosives or logic_rusted_switches or (Longshot and logic_fire_scarecrow))",
--             "Fire Temple Shoot Torch On Wall Room": "(SmallKey(FireTemple), 3)"
--         }
--     },
--     {
--         "region_name": "Fire Temple Shortcut",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ Compass Chest": "True",
--             "Fire Temple MQ Shortcut Crate 1": "True",
--             "Fire Temple MQ Shortcut Crate 2": "True",
--             "Fire Temple MQ Shortcut Crate 3": "True",
--             "Fire Temple MQ Shortcut Crate 4": "True",
--             "Fire Temple MQ Shortcut Crate 5": "True",
--             "Fire Temple MQ Shortcut Crate 6": "True"
--         }
--     },
--     {
--         "region_name": "Fire Temple Block On Fire Room",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ GS Skull On Fire": "True",
--             "Wall Fairy": "has_bottle"
--         },
--         "exits": {
--             "Fire Temple Narrow Path Room": "
--                 (damage_multiplier != 'ohko' and damage_multiplier != 'quadruple') or
--                     Fairy or can_use(Nayrus_Love)"
--         }
--     },
--     {
--         "region_name": "Fire Temple Narrow Path Room",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ Narrow Path Room Pot 1": "True",
--             "Fire Temple MQ Narrow Path Room Pot 2": "True",
--             "Fairy Pot": "has_bottle"
--         }
--     },
--     {
--         "region_name": "Fire Temple Shoot Torch On Wall Room",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ Shoot Torch On Wall Room Pot 1": "True",
--             "Fire Temple MQ Shoot Torch On Wall Room Pot 2": "True",
--             "Fire Temple MQ Shoot Torch On Wall Room Right Crate 1": "True",
--             "Fire Temple MQ Shoot Torch On Wall Room Right Crate 2": "True",
--             "Fire Temple MQ Shoot Torch On Wall Room Center Crate": "True",
--             "Fire Temple MQ Shoot Torch On Wall Room Left Crate 1": "True",
--             "Fire Temple MQ Shoot Torch On Wall Room Left Crate 2": "True"
--         },
--         "exits": {
--             "Fire Temple Narrow Path Room": "True",
--             "Fire Temple Flame Maze": "(can_use(Bow) and can_use(Hookshot)) or can_use(Fire_Arrows)"
--         }
--     },
--     {
--         "region_name": "Fire Temple Flame Maze",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ Flame Maze Left Pot 1": "True",
--             "Fire Temple MQ GS Flame Maze Center": "has_explosives",
--             "Fire Temple MQ GS Above Flame Maze": "
--                 (Hookshot and (SmallKey(FireTemple), 5)) or
--                 (logic_fire_mq_above_maze_gs and Longshot)"
--         },
--         "exits": {
--             "Fire Temple Near Boss": "True",
--             "Fire Temple Flame Maze Side Room": "
--                 can_play(Song_of_Time) or HoverBoots or logic_fire_mq_flame_maze",
--             "Fire Temple Upper": "Hookshot or logic_fire_mq_flame_maze",
--             "Fire Temple Boss Door": "True"
--         }
--     },
--     {
--         "region_name": "Fire Temple Flame Maze Side Room",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ Flame Maze Right Pot 1": "True",
--             "Fire Temple MQ Flame Maze Right Pot 2": "True",
--             "Fire Temple MQ GS Flame Maze Side Room": "True"
--         }
--     },
--     {
--         "region_name": "Fire Temple Upper",
--         "dungeon": "Fire Temple",
--         "locations": {
--             "Fire Temple MQ Freestanding Key": "True",
--             "Fire Temple MQ Chest On Fire": "(SmallKey(FireTemple), 4)",
--             "Fire Temple MQ Flame Maze Right Upper Pot 1": "True",
--             "Fire Temple MQ Flame Maze Right Upper Pot 2": "True"
--         }
--     }
