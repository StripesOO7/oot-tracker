Child_Fire_Temple_Lower = OOTLocation.new("Child_Fire_Temple_Lower")
Child_Fire_Temple_Lower_Locked_Door = OOTLocation.new("Child_Fire_Temple_Lower_Locked_Door")
Child_Fire_Temple_Big_Lava_Room = OOTLocation.new("Child_Fire_Temple_Big_Lava_Room")
Child_Fire_Temple_Elevator_Room = OOTLocation.new("Child_Fire_Temple_Elevator_Room")
Child_Fire_Temple_Boulder_Maze_Lower = OOTLocation.new("Child_Fire_Temple_Boulder_Maze_Lower")
Child_Fire_Temple_Narrow_Path_Room = OOTLocation.new("Child_Fire_Temple_Narrow_Path_Room")
Child_Fire_Temple_Boulder_Maze_Upper = OOTLocation.new("Child_Fire_Temple_Boulder_Maze_Upper")
Child_Fire_Temple_Flame_Maze = OOTLocation.new("Child_Fire_Temple_Flame_Maze")
Child_Fire_Temple_Upper = OOTLocation.new("Child_Fire_Temple_Upper")

Adult_Fire_Temple_Lower = OOTLocation.new("Adult_Fire_Temple_Lower")
Adult_Fire_Temple_Lower_Locked_Door = OOTLocation.new("Adult_Fire_Temple_Lower_Locked_Door")
Adult_Fire_Temple_Big_Lava_Room = OOTLocation.new("Adult_Fire_Temple_Big_Lava_Room")
Adult_Fire_Temple_Elevator_Room = OOTLocation.new("Adult_Fire_Temple_Elevator_Room")
Adult_Fire_Temple_Boulder_Maze_Lower = OOTLocation.new("Adult_Fire_Temple_Boulder_Maze_Lower")
Adult_Fire_Temple_Narrow_Path_Room = OOTLocation.new("Adult_Fire_Temple_Narrow_Path_Room")
Adult_Fire_Temple_Boulder_Maze_Upper = OOTLocation.new("Adult_Fire_Temple_Boulder_Maze_Upper")
Adult_Fire_Temple_Flame_Maze = OOTLocation.new("Adult_Fire_Temple_Flame_Maze")
Adult_Fire_Temple_Upper = OOTLocation.new("Adult_Fire_Temple_Upper")


Child_Fire_Temple_Lower:connect_one_way()
Adult_Fire_Temple_Lower:connect_one_way()

Child_Fire_Temple_Lower:connect_one_way_entrance()
Adult_Fire_Temple_Lower:connect_one_way_entrance()

Child_Fire_Temple_Lower_Locked_Door:connect_one_way()
Adult_Fire_Temple_Lower_Locked_Door:connect_one_way()

Child_Fire_Temple_Lower_Locked_Door:connect_one_way_entrance()
Adult_Fire_Temple_Lower_Locked_Door:connect_one_way_entrance()

Child_Fire_Temple_Big_Lava_Room:connect_one_way()
Adult_Fire_Temple_Big_Lava_Room:connect_one_way()

Child_Fire_Temple_Big_Lava_Room:connect_one_way_entrance()
Adult_Fire_Temple_Big_Lava_Room:connect_one_way_entrance()

Child_Fire_Temple_Elevator_Room:connect_one_way()
Adult_Fire_Temple_Elevator_Room:connect_one_way()

Child_Fire_Temple_Elevator_Room:connect_one_way_entrance()
Adult_Fire_Temple_Elevator_Room:connect_one_way_entrance()

Child_Fire_Temple_Boulder_Maze_Lower:connect_one_way()
Adult_Fire_Temple_Boulder_Maze_Lower:connect_one_way()

Child_Fire_Temple_Boulder_Maze_Lower:connect_one_way_entrance()
Adult_Fire_Temple_Boulder_Maze_Lower:connect_one_way_entrance()

Child_Fire_Temple_Narrow_Path_Room:connect_one_way()
Adult_Fire_Temple_Narrow_Path_Room:connect_one_way()

Child_Fire_Temple_Narrow_Path_Room:connect_one_way_entrance()
Adult_Fire_Temple_Narrow_Path_Room:connect_one_way_entrance()

Child_Fire_Temple_Boulder_Maze_Upper:connect_one_way()
Adult_Fire_Temple_Boulder_Maze_Upper:connect_one_way()

Child_Fire_Temple_Boulder_Maze_Upper:connect_one_way_entrance()
Adult_Fire_Temple_Boulder_Maze_Upper:connect_one_way_entrance()

Child_Fire_Temple_Flame_Maze:connect_one_way()
Adult_Fire_Temple_Flame_Maze:connect_one_way()

Child_Fire_Temple_Flame_Maze:connect_one_way_entrance()
Adult_Fire_Temple_Flame_Maze:connect_one_way_entrance()

Child_Fire_Temple_Upper:connect_one_way()
Adult_Fire_Temple_Upper:connect_one_way()

Child_Fire_Temple_Upper:connect_one_way_entrance()
Adult_Fire_Temple_Upper:connect_one_way_entrance()






    {
        "region_name": "Fire Temple Lower",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple Near Boss Chest": "
                logic_fewer_tunic_requirements or can_use(Goron_Tunic)",
            "Fire Temple Near Boss Pot 1": "
                is_adult and (Hover_Boots or Hookshot) and
                (logic_fewer_tunic_requirements or Goron_Tunic)",
            "Fire Temple Near Boss Pot 2": "
                is_adult and (Hover_Boots or Hookshot) and
                (logic_fewer_tunic_requirements or Goron_Tunic)",
            "Fairy Pot": "
                is_adult and has_bottle and (Hover_Boots or Hookshot) and
                (logic_fewer_tunic_requirements or Goron_Tunic)"
        },
        "exits": {
            "DMC Fire Temple Entrance": "True",
            "Fire Temple Big Lava Room": "
                (Small_Key_Fire_Temple, 2) and
                (logic_fewer_tunic_requirements or can_use(Goron_Tunic))",
            "Fire Temple Lower Locked Door": "
                ((Small_Key_Fire_Temple, 8) or not keysanity) and can_use(Megaton_Hammer)",
            "Fire Temple Boss Door": "
                is_adult and (logic_fewer_tunic_requirements or Goron_Tunic) and
                (fire_temple_shortcuts or logic_fire_boss_door_jump or Hover_Boots)"
        }
    },
    {
        "region_name": "Fire Temple Lower Locked Door",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple Flare Dancer Chest": "True",
            "Fire Temple Boss Key Chest": "True",
            "Fire Temple GS Boss Key Loop": "True"
        }
    },
    {
        "region_name": "Fire Temple Big Lava Room",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple Big Lava Room Lower Open Door Chest": "True",
            "Fire Temple Big Lava Room Blocked Door Chest": "is_adult and has_explosives",
            "Fire Temple Big Lava Room Pot 1": "True",
            "Fire Temple Big Lava Room Pot 2": "True",
            "Fire Temple Big Lava Room Pot 3": "True",
            "Fire Temple GS Song of Time Room": "
                is_adult and (can_play(Song_of_Time) or logic_fire_song_of_time)"
        },
        "exits": {
            "Fire Temple Elevator Room": "
                is_adult and Goron_Tunic and (Small_Key_Fire_Temple, 3)"
        }
    },
    {
        "region_name": "Fire Temple Elevator Room",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple Elevator Room Recovery Heart 1": "True",
            "Fire Temple Elevator Room Recovery Heart 2": "True",
            "Fire Temple Elevator Room Recovery Heart 3": "True"
        },
        "exits": {
            "Fire Temple Boulder Maze Lower": "
                (Small_Key_Fire_Temple, 4) and
                (Progressive_Strength_Upgrade or logic_fire_strength) and
                (has_explosives or Bow or Hookshot)"
        }
    },
    {
        "region_name": "Fire Temple Boulder Maze Lower",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple Boulder Maze Lower Chest": "True",
            "Fire Temple Boulder Maze Side Room Chest": "True",
            "Fire Temple GS Boulder Maze": "has_explosives"
        },
        "exits": {
            "Fire Temple Narrow Path Room": "(Small_Key_Fire_Temple, 5)"
        }
    },
    {
        "region_name": "Fire Temple Narrow Path Room",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple Map Chest": "Bow or (Small_Key_Fire_Temple, 6)",
            "Fire Temple Narrow Path Room Recovery Heart 1": "True",
            "Fire Temple Narrow Path Room Recovery Heart 2": "True",
            "Fire Temple Narrow Path Room Recovery Heart 3": "True"
        },
        "exits": {
            "Fire Temple Boulder Maze Upper": "(Small_Key_Fire_Temple, 6)"
        }
    },
    {
        "region_name": "Fire Temple Boulder Maze Upper",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple Boulder Maze Upper Chest": "True",
            "Fire Temple Boulder Maze Shortcut Chest": "has_explosives",
            "Fire Temple Scarecrow Chest": "
                can_use(Scarecrow) or (logic_fire_scarecrow and Longshot)",
            "Fire Temple Moving Fire Room Recovery Heart 1": "True",
            "Fire Temple Moving Fire Room Recovery Heart 2": "True",
            "Fire Temple Moving Fire Room Recovery Heart 3": "True",
            "Fire Temple GS Scarecrow Climb": "
                can_use(Scarecrow) or (logic_fire_scarecrow and Longshot)",
            "Fire Temple GS Scarecrow Top": "
                can_use(Scarecrow) or (logic_fire_scarecrow and Longshot)"
        },
        "exits": {
            "Fire Temple Flame Maze": "(Small_Key_Fire_Temple, 7)"
        }
    },
    {
        "region_name": "Fire Temple Flame Maze",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple Compass Chest": "True",
            "Fire Temple Flame Maze Left Side Pot 1": "True",
            "Fire Temple Flame Maze Left Side Pot 2": "True",
            "Fire Temple Flame Maze Left Side Pot 3": "True",
            "Fire Temple Flame Maze Left Side Pot 4": "True"
        },
        "exits": {
            "Fire Temple Upper": "
                (Small_Key_Fire_Temple, 8) or
                (Hover_Boots and Megaton_Hammer) or logic_fire_flame_maze"
        }
    },
    {
        "region_name": "Fire Temple Upper",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple Highest Goron Chest": "
                Megaton_Hammer and
                (can_play(Song_of_Time) or
                    (logic_rusted_switches and (Hover_Boots or has_explosives)))",
            "Fire Temple Megaton Hammer Chest": "has_explosives",
            "Fire Temple Flame Maze Right Side Pot 1": "True",
            "Fire Temple Flame Maze Right Side Pot 2": "True",
            "Fire Temple Flame Maze Right Side Pot 3": "True",
            "Fire Temple Flame Maze Right Side Pot 4": "True"
        },
        "exits": {
            "Fire Temple Boss Door": "
                Megaton_Hammer and (can_play(Song_of_Time) or has_explosives)"
        }
    }

--MQ

    {
        "region_name": "Fire Temple Lower",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ Map Room Side Chest": "
                is_adult or Kokiri_Sword or Sticks or Slingshot or Bombs or can_use(Dins_Fire)",
            "Fire Temple MQ First Room Pot 1": "True",
            "Fire Temple MQ First Room Pot 2": "True"
        },
        "exits": {
            "DMC Fire Temple Entrance": "True",
            "Fire Temple Near Boss": "
                is_adult and has_fire_source and
                (logic_fewer_tunic_requirements or can_use(Goron_Tunic))",
            "Fire Temple Lower Locked Door": "
                (Small_Key_Fire_Temple, 5) and (is_adult or Kokiri_Sword)",
            "Fire Temple Big Lava Room": "
                is_adult and Megaton_Hammer and (logic_fewer_tunic_requirements or Goron_Tunic)"
        }
    },
    {
        "region_name": "Fire Temple Near Boss",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ Near Boss Chest": "
                is_adult and
                ((logic_fire_mq_near_boss and has_fire_source and Bow) or
                    ((Hover_Boots or Hookshot) and
                        ((can_use(Fire_Arrows) and can_break_heated_crate) or
                            (can_use(Dins_Fire) and
                                ((damage_multiplier != 'ohko' and damage_multiplier != 'quadruple') or
                                    Goron_Tunic or Hover_Boots or Bow or Longshot)))))",
            "Fire Temple MQ Near Boss Pot 1": "can_use(Hookshot) or can_use(Hover_Boots)",
            "Fire Temple MQ Near Boss Pot 2": "can_use(Hookshot) or can_use(Hover_Boots)",
            "Fire Temple MQ Near Boss Left Crate 1": "can_break_heated_crate",
            "Fire Temple MQ Near Boss Left Crate 2": "can_break_heated_crate",
            "Fire Temple MQ Near Boss Right Lower Crate 1": "
                (can_use(Hookshot) or can_use(Hover_Boots)) and can_break_heated_crate",
            "Fire Temple MQ Near Boss Right Lower Crate 2": "
                (can_use(Hookshot) or can_use(Hover_Boots)) and can_break_heated_crate",
            "Fire Temple MQ Near Boss Right Mid Crate": "
                (can_use(Hookshot) or can_use(Hover_Boots)) and can_break_heated_crate",
            "Fire Temple MQ Near Boss Right Upper Crate": "
                (can_use(Hookshot) or can_use(Hover_Boots)) and can_break_heated_crate"
        },
        "exits": {
            "Fire Temple Boss Door": "
                is_adult and (fire_temple_shortcuts or logic_fire_boss_door_jump or Hover_Boots)"
        }
    },
    {
        "region_name": "Fire Temple Lower Locked Door",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ Megaton Hammer Chest": "
                is_adult and (has_explosives or Megaton_Hammer or Hookshot)",
            "Fire Temple MQ Map Chest": "can_use(Megaton_Hammer)",
            "Fire Temple MQ Iron Knuckle Room Pot 1": "True",
            "Fire Temple MQ Iron Knuckle Room Pot 2": "True",
            "Fire Temple MQ Iron Knuckle Room Pot 3": "True",
            "Fire Temple MQ Iron Knuckle Room Pot 4": "True",
            "Fairy Pot": "has_bottle"
        }
    },
    {
        "region_name": "Fire Temple Big Lava Room",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ Boss Key Chest": "
                has_fire_source and (Bow or logic_fire_mq_bk_chest) and Hookshot",
            "Fire Temple MQ Big Lava Room Blocked Door Chest": "
                (Hookshot or logic_fire_mq_blocked_chest) and has_explosives and has_fire_source",
            "Fire Temple MQ Big Lava Room Left Pot": "True",
            "Fire Temple MQ Big Lava Room Right Pot": "Hookshot or logic_fire_mq_blocked_chest",
            "Fire Temple MQ Big Lava Room Alcove Pot": "True",
            "Fire Temple MQ Boss Key Chest Room Pot": "
                has_fire_source and (Bow or logic_fire_mq_bk_chest) and Hookshot",
            "Fire Temple MQ GS Big Lava Room Open Door": "True",
            "Fairy Pot": "
                has_bottle and has_fire_source and (Bow or logic_fire_mq_bk_chest) and
                (Hookshot or logic_fire_song_of_time)"

        },
        "exits": {
            "Fire Temple Elevator Room": "Goron_Tunic and (Small_Key_Fire_Temple, 2)"
        }
    },
    {
        "region_name": "Fire Temple Elevator Room",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ Elevator Room Recovery Heart 1": "True",
            "Fire Temple MQ Elevator Room Recovery Heart 2": "True",
            "Fire Temple MQ Elevator Room Recovery Heart 3": "True"
        },
        "exits": {
            "Fire Temple Lower Lizalfos Maze": "has_fire_source or (logic_fire_mq_climb and Hover_Boots)"
        }
    },
    {
        "region_name": "Fire Temple Lower Lizalfos Maze",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ Lizalfos Maze Lower Chest": "True",
            "Fire Temple MQ Lizalfos Maze Side Room Chest": "
                has_explosives and
                (logic_fire_mq_maze_side_room or at('Fire Temple Upper Lizalfos Maze', True))",
            "Fire Temple MQ Lower Lizalfos Maze Crate 1": "True",
            "Fire Temple MQ Lower Lizalfos Maze Crate 2": "True",
            "Fire Temple MQ Lower Lizalfos Maze Crate 3": "True"
        },
        "exits": {
            "Fire Temple Upper Lizalfos Maze": "
                ((has_explosives or logic_rusted_switches) and Hookshot) or
                (logic_fire_mq_maze_hovers and Hover_Boots) or logic_fire_mq_maze_jump"
        }
    },
    {
        "region_name": "Fire Temple Upper Lizalfos Maze",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ Lizalfos Maze Upper Chest": "True",
            "Fire Temple MQ Upper Lizalfos Maze Crate 1": "True",
            "Fire Temple MQ Upper Lizalfos Maze Crate 2": "True",
            "Fire Temple MQ Upper Lizalfos Maze Crate 3": "True"
        },
        "exits": {
            "Fire Temple Shortcut": "has_explosives",
            "Fire Temple Block On Fire Room": "
                (Longshot or (can_play(Song_of_Time) and Hookshot)) and
                (has_explosives or logic_rusted_switches or (Longshot and logic_fire_scarecrow))",
            "Fire Temple Shoot Torch On Wall Room": "(Small_Key_Fire_Temple, 3)"
        }
    },
    {
        "region_name": "Fire Temple Shortcut",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ Compass Chest": "True",
            "Fire Temple MQ Shortcut Crate 1": "True",
            "Fire Temple MQ Shortcut Crate 2": "True",
            "Fire Temple MQ Shortcut Crate 3": "True",
            "Fire Temple MQ Shortcut Crate 4": "True",
            "Fire Temple MQ Shortcut Crate 5": "True",
            "Fire Temple MQ Shortcut Crate 6": "True"
        }
    },
    {
        "region_name": "Fire Temple Block On Fire Room",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ GS Skull On Fire": "True",
            "Wall Fairy": "has_bottle"
        },
        "exits": {
            "Fire Temple Narrow Path Room": "
                (damage_multiplier != 'ohko' and damage_multiplier != 'quadruple') or
                    Fairy or can_use(Nayrus_Love)"
        }
    },
    {
        "region_name": "Fire Temple Narrow Path Room",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ Narrow Path Room Pot 1": "True",
            "Fire Temple MQ Narrow Path Room Pot 2": "True",
            "Fairy Pot": "has_bottle"
        }
    },
    {
        "region_name": "Fire Temple Shoot Torch On Wall Room",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ Shoot Torch On Wall Room Pot 1": "True",
            "Fire Temple MQ Shoot Torch On Wall Room Pot 2": "True",
            "Fire Temple MQ Shoot Torch On Wall Room Right Crate 1": "True",
            "Fire Temple MQ Shoot Torch On Wall Room Right Crate 2": "True",
            "Fire Temple MQ Shoot Torch On Wall Room Center Crate": "True",
            "Fire Temple MQ Shoot Torch On Wall Room Left Crate 1": "True",
            "Fire Temple MQ Shoot Torch On Wall Room Left Crate 2": "True"
        },
        "exits": {
            "Fire Temple Narrow Path Room": "True",
            "Fire Temple Flame Maze": "(can_use(Bow) and can_use(Hookshot)) or can_use(Fire_Arrows)"
        }
    },
    {
        "region_name": "Fire Temple Flame Maze",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ Flame Maze Left Pot 1": "True",
            "Fire Temple MQ GS Flame Maze Center": "has_explosives",
            "Fire Temple MQ GS Above Flame Maze": "
                (Hookshot and (Small_Key_Fire_Temple, 5)) or
                (logic_fire_mq_above_maze_gs and Longshot)"
        },
        "exits": {
            "Fire Temple Near Boss": "True",
            "Fire Temple Flame Maze Side Room": "
                can_play(Song_of_Time) or Hover_Boots or logic_fire_mq_flame_maze",
            "Fire Temple Upper": "Hookshot or logic_fire_mq_flame_maze",
            "Fire Temple Boss Door": "True"
        }
    },
    {
        "region_name": "Fire Temple Flame Maze Side Room",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ Flame Maze Right Pot 1": "True",
            "Fire Temple MQ Flame Maze Right Pot 2": "True",
            "Fire Temple MQ GS Flame Maze Side Room": "True"
        }
    },
    {
        "region_name": "Fire Temple Upper",
        "dungeon": "Fire Temple",
        "locations": {
            "Fire Temple MQ Freestanding Key": "True",
            "Fire Temple MQ Chest On Fire": "(Small_Key_Fire_Temple, 4)",
            "Fire Temple MQ Flame Maze Right Upper Pot 1": "True",
            "Fire Temple MQ Flame Maze Right Upper Pot 2": "True"
        }
    }
