
[
    {
        "region_name": "Forest Temple Lobby",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple First Room Chest": "True",
            "Forest Temple GS First Room": "
                (is_adult and (Hookshot or Bow or Bombs)) or (is_child and (Boomerang or Slingshot)) or
                has_bombchus or can_use(Dins_Fire) or (logic_forest_first_gs and (Bombs or can_jumpslash))"
        },
        "exits": {
            "SFM Forest Temple Entrance Ledge": "True",
            "Forest Temple Central Area": "is_adult or can_child_attack or Nuts"
        }
    },
    {
        "region_name": "Forest Temple Central Area",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple First Stalfos Chest": "is_adult or Kokiri_Sword",
            "Forest Temple Center Room Right Pot 1": "True",
            "Forest Temple Center Room Right Pot 2": "True",
            "Forest Temple Center Room Right Pot 3": "True",
            "Forest Temple Center Room Left Pot 1": "True",
            "Forest Temple Center Room Left Pot 2": "True",
            "Forest Temple Center Room Left Pot 3": "True",
            "Forest Temple Lower Stalfos Pot": "True",
            "Forest Temple GS Lobby": "can_use(Hookshot) or can_use(Boomerang)",
            "Fairy Pot": "has_bottle"
        },
        "exits": {
            "Forest Temple NW Outdoors": "can_play(Song_of_Time) or is_child",
            "Forest Temple NE Outdoors": "can_use(Bow) or can_use(Slingshot)",
            "Forest Temple Block Push Room": "(Small_Key_Forest_Temple, 1)",
            "Forest Temple Before Boss": "
                (Forest_Temple_Jo_and_Beth and Forest_Temple_Amy_and_Meg) or forest_temple_shortcuts"
        }
    },
    {
        "region_name": "Forest Temple NW Outdoors",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple GS Level Island Courtyard": "
                can_use(Longshot) or
                at('Forest Temple Outside Upper Ledge', can_use(Hookshot) or can_use(Boomerang))",
            "Deku Baba Sticks": "is_adult or Kokiri_Sword or Boomerang",
            "Deku Baba Nuts": "
                is_adult or Slingshot or Sticks or
                has_explosives or Kokiri_Sword or can_use(Dins_Fire)"
        },
        "exits": {
            "Forest Temple NE Outdoors": "(Progressive_Scale, 2)",
            # Other methods of crossing through the well are not currently relevant.
            "Forest Temple Outdoors High Balconies": "
                here(is_adult or has_explosives or
                    ((Boomerang or Nuts or Deku_Shield) and (Sticks or Kokiri_Sword or Slingshot)))"
        }
    },
    {
        "region_name": "Forest Temple Outdoors High Balconies",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple Well Chest": "True",
            "Forest Temple Map Chest": "True",
            "Forest Temple Well Recovery Heart 1": "True",
            "Forest Temple Well Recovery Heart 2": "True"
        },
        "exits": {
            "Forest Temple NW Outdoors": "True",
            "Forest Temple NE Outdoors": "True",
            "Forest Temple Falling Room": "
                logic_forest_door_frame and can_use(Hover_Boots) and can_use(Scarecrow)"
        }
    },
    {
        "region_name": "Forest Temple NE Outdoors",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple Raised Island Courtyard Chest": "
                can_use(Hookshot) or at('Forest Temple Falling Room', True) or
                (logic_forest_outdoors_ledge and can_use(Hover_Boots) and
                    at('Forest Temple Outdoors High Balconies', True))",
            "Forest Temple GS Raised Island Courtyard": "
                can_use(Hookshot) or (logic_forest_outdoor_east_gs and can_use(Boomerang)) or
                at('Forest Temple Falling Room', can_use(Bow) or can_use(Dins_Fire) or has_explosives)",
            "Deku Baba Sticks": "is_adult or Kokiri_Sword or Boomerang",
            "Deku Baba Nuts": "
                is_adult or Slingshot or Sticks or
                has_explosives or Kokiri_Sword or can_use(Dins_Fire)"
        },
        "exits": {
            "Forest Temple Outdoors High Balconies": "
                can_use(Longshot) or (logic_forest_vines and can_use(Hookshot))",
                # Longshot can grab some very high up vines to drain the well.
            "Forest Temple NW Outdoors": "can_use(Iron_Boots) or (Progressive_Scale, 2)"
        }
    },
    {
        "region_name": "Forest Temple Block Push Room",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple Eye Switch Chest": "
                Progressive_Strength_Upgrade and (can_use(Bow) or can_use(Slingshot))"
        },
        "exits": {
            "Forest Temple Outside Upper Ledge": "
                can_use(Hover_Boots) or
                (logic_forest_outside_backdoor and Progressive_Strength_Upgrade and can_jumpslash)",
            "Forest Temple Bow Region": "
                Progressive_Strength_Upgrade and (Small_Key_Forest_Temple, 3) and is_adult",
            "Forest Temple Straightened Hall": "
                Progressive_Strength_Upgrade and (Small_Key_Forest_Temple, 2) and can_use(Bow)"
            # Child cannot climb these large blocks
        }
    },
    {
        "region_name": "Forest Temple Straightened Hall",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple Boss Key Chest": "True"
        },
        "exits": {
            "Forest Temple Outside Upper Ledge": "True"
        }
    },
    {
        "region_name": "Forest Temple Outside Upper Ledge",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple Floormaster Chest": "True",
            "Forest Temple Courtyard Recovery Heart 1": "True",
            "Forest Temple Courtyard Recovery Heart 2": "True"
        },
        "exits": {
            "Forest Temple NW Outdoors": "True"
        }
    },
    {
        "region_name": "Forest Temple Bow Region",
        "dungeon": "Forest Temple",
        "events": {
            "Forest Temple Jo and Beth": "can_use(Bow)"
        },
        "locations": {
            "Forest Temple Bow Chest": "True",
            "Forest Temple Red Poe Chest": "can_use(Bow)",
            "Forest Temple Blue Poe Chest": "can_use(Bow)",
            "Forest Temple Upper Stalfos Pot 1": "True",
            "Forest Temple Upper Stalfos Pot 2": "True",
            "Forest Temple Upper Stalfos Pot 3": "True",
            "Forest Temple Upper Stalfos Pot 4": "True",
            "Forest Temple Blue Poe Room Pot 1": "True",
            "Forest Temple Blue Poe Room Pot 2": "True",
            "Forest Temple Blue Poe Room Pot 3": "True"
        },
        "exits": {
            "Forest Temple Frozen Eye Switch Room": "(Small_Key_Forest_Temple, 5)"
        }
    },
    {
        "region_name": "Forest Temple Frozen Eye Switch Room",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple Frozen Eye Switch Room Pot 1": "True",
            "Forest Temple Frozen Eye Switch Room Pot 2": "True"
        },
        "exits": {
            "Forest Temple Falling Room": "Bow or can_use(Dins_Fire)"
        }
    },
    {
        "region_name": "Forest Temple Falling Room",
        "dungeon": "Forest Temple",
        "events": {
            "Forest Temple Amy and Meg": "can_use(Bow)"
        },
        "locations": {
            "Forest Temple Falling Ceiling Room Chest": "True",
            "Forest Temple Green Poe Room Pot 1": "True",
            "Forest Temple Green Poe Room Pot 2": "True"
        },
        "exits": {
            "Forest Temple NE Outdoors": "True"
        }
    },
    {
        "region_name": "Forest Temple Before Boss",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple Basement Chest": "True",
            "Forest Temple GS Basement": "can_use(Hookshot) or can_use(Boomerang)"
        },
        "exits": {
            "Forest Temple Boss Door": "True"
        }
    }
]
--MQ
[
    {
        "region_name": "Forest Temple Lobby",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple MQ First Room Chest": "
                is_adult or Bombs or can_use(Sticks) or Nuts or can_use(Boomerang) or
                can_use(Dins_Fire) or Kokiri_Sword or can_use(Slingshot)",
            "Forest Temple MQ GS First Hallway": "can_use(Hookshot) or can_use(Boomerang)"
        },
        "exits": {
            "SFM Forest Temple Entrance Ledge": "True",
            "Forest Temple Central Area": "
                (Small_Key_Forest_Temple, 1) and (is_adult or can_child_attack or Nuts)"
        }
    },
    {
        "region_name": "Forest Temple Central Area",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple MQ Wolfos Chest": "
                (can_play(Song_of_Time) or is_child) and
                (is_adult or can_use(Dins_Fire) or
                    can_use(Sticks) or can_use(Slingshot) or Kokiri_Sword)",
            "Forest Temple MQ Center Room Right Pot 1": "True",
            "Forest Temple MQ Center Room Right Pot 2": "True",
            "Forest Temple MQ Center Room Right Pot 3": "True",
            "Forest Temple MQ Center Room Left Pot 1": "True",
            "Forest Temple MQ Center Room Left Pot 2": "True",
            "Forest Temple MQ Center Room Left Pot 3": "True",
            "Forest Temple MQ Wolfos Room Pot": "(can_play(Song_of_Time) or is_child)",
            "Fairy Pot": "has_bottle and (can_play(Song_of_Time) or is_child)"
        },
        "exits": {
            "Forest Temple NW Outdoors": "can_use(Bow) or can_use(Slingshot)",
            "Forest Temple NE Outdoors": "can_use(Bow) or can_use(Slingshot)",
            "Forest Temple Before Block Puzzle": "here(is_adult or Kokiri_Sword)",
            "Forest Temple Before Boss": "
                (Forest_Temple_Jo_and_Beth and Forest_Temple_Amy_and_Meg) or forest_temple_shortcuts"
        }
    },
    {
        "region_name": "Forest Temple Before Block Puzzle",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple MQ GS Block Push Room": "True"
        },
        "exits": {
            "Forest Temple After Block Puzzle": "
                is_adult and (Progressive_Strength_Upgrade or
                    (logic_forest_mq_block_puzzle and has_bombchus and Hookshot))",
            # Child cannot climb these large blocks
            "Forest Temple Outside Upper Ledge": "
                (at('Forest Temple Outside Upper Ledge', True) or
                    here((logic_forest_mq_hallway_switch_boomerang and can_use(Boomerang)) or
                        (logic_forest_mq_hallway_switch_jumpslash and
                        (can_use(Hover_Boots) or
                            (((logic_forest_mq_block_puzzle and has_bombchus) or
                                (Progressive_Strength_Upgrade and (is_adult or Slingshot))) and
                            (Progressive_Strength_Upgrade or can_use(Hookshot)) and
                            (is_adult or Sticks)))))) and
                (can_use(Hover_Boots) or can_use(Hookshot) or
                    (Progressive_Strength_Upgrade and
                    logic_forest_outside_backdoor and can_jumpslash))"
        }
    },
    {
        "region_name": "Forest Temple After Block Puzzle",
        "dungeon": "Forest Temple",
        "exits": {
            "Forest Temple Straightened Hall": "(Small_Key_Forest_Temple, 3)",
            "Forest Temple NW Outdoors": "(Small_Key_Forest_Temple, 2)"
            # Only 2 keys because you must have had access to falling ceiling room to have wasted a key there
            # Access to falling ceiling room means you must also have had to access to the lower area of this courtyard
        }
    },
    {
        "region_name": "Forest Temple Straightened Hall",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple MQ Boss Key Chest": "True"
        },
        "exits": {
            "Forest Temple Outside Upper Ledge": "True",
            "Forest Temple Bow Region": "(Small_Key_Forest_Temple, 4)"
        }
    },
    {
        "region_name": "Forest Temple Outside Upper Ledge",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple MQ Redead Chest": "True",
            "Forest Temple MQ Courtyard Recovery Heart 1": "True",
            "Forest Temple MQ Courtyard Recovery Heart 2": "True",
            "Forest Temple MQ Courtyard Recovery Heart 3": "True"
        },
        "exits": {
            "Forest Temple NW Outdoors": "True"
        }
    },
    {
        "region_name": "Forest Temple NW Outdoors",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple MQ GS Level Island Courtyard": "True"
        },
        "exits": {
            "Forest Temple NE Outdoors": "
                can_use(Iron_Boots) or can_use(Longshot) or
                (Progressive_Scale, 2) or (logic_forest_well_swim and can_use(Hookshot))",
            "Forest Temple Outdoors High Balconies": "can_use(Fire_Arrows)"
        }
    },
    {
        "region_name": "Forest Temple NE Outdoors",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple MQ Well Chest": "can_use(Bow) or can_use(Slingshot)",
            "Forest Temple MQ Well Recovery Heart 1": "can_use(Iron_Boots) or can_use(Bow) or can_use(Slingshot)",
            "Forest Temple MQ Well Recovery Heart 2": "can_use(Iron_Boots) or can_use(Bow) or can_use(Slingshot)",
            "Forest Temple MQ Well Recovery Heart 3": "can_use(Iron_Boots) or can_use(Bow) or can_use(Slingshot)",
            "Forest Temple MQ GS Raised Island Courtyard": "
                can_use(Hookshot) or can_use(Boomerang) or
                (can_use(Fire_Arrows) and
                    (can_play(Song_of_Time) or (can_use(Hover_Boots) and logic_forest_door_frame)))",
            "Forest Temple MQ GS Well": "
                (can_use(Iron_Boots) and can_use(Hookshot)) or can_use(Bow) or can_use(Slingshot)",
            "Deku Baba Sticks": "is_adult or Kokiri_Sword or Boomerang",
            "Deku Baba Nuts": "
                is_adult or Slingshot or Sticks or
                has_explosives or Kokiri_Sword or can_use(Dins_Fire)"
        },
        "exits": {
            "Forest Temple Outdoors High Balconies": "
                can_use(Hookshot) and 
                (can_use(Longshot) or can_use(Hover_Boots) or can_play(Song_of_Time) or
                    logic_forest_vines)",
            "Forest Temple NE Outdoors Ledge": "can_use(Longshot)"
        }
    },
    {
        "region_name": "Forest Temple Outdoors High Balconies",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple MQ Raised Island Courtyard Upper Chest": "True"
        },
        "exits": {
            "Forest Temple NE Outdoors": "True",
            "Forest Temple NE Outdoors Ledge": "logic_forest_outdoors_ledge and can_use(Hover_Boots)"
        }
    },
    {
        "region_name": "Forest Temple NE Outdoors Ledge",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple MQ Raised Island Courtyard Lower Chest": "True"
        },
        "exits": {
            "Forest Temple NE Outdoors": "True",
            "Forest Temple Falling Room": "can_play(Song_of_Time)"
        }
    },
    {
        "region_name": "Forest Temple Bow Region",
        "dungeon": "Forest Temple",
        "events": {
            "Forest Temple Jo and Beth": "can_use(Bow)"
        },
        "locations": {
            "Forest Temple MQ Bow Chest": "True",
            "Forest Temple MQ Map Chest": "can_use(Bow)",
            "Forest Temple MQ Compass Chest": "can_use(Bow)",
            "Forest Temple MQ Upper Stalfos Pot 1": "True",
            "Forest Temple MQ Upper Stalfos Pot 2": "True",
            "Forest Temple MQ Upper Stalfos Pot 3": "True",
            "Forest Temple MQ Upper Stalfos Pot 4": "True",
            "Forest Temple MQ Blue Poe Room Pot 1": "True",
            "Forest Temple MQ Blue Poe Room Pot 2": "True",
            "Forest Temple MQ Blue Poe Room Pot 3": "True",
            "Forest Temple MQ Frozen Eye Switch Room Small Wooden Crate 1": "(Small_Key_Forest_Temple, 6)",
            "Forest Temple MQ Frozen Eye Switch Room Small Wooden Crate 2": "(Small_Key_Forest_Temple, 6)",
            "Forest Temple MQ Frozen Eye Switch Room Small Wooden Crate 3": "(Small_Key_Forest_Temple, 6)"
        },
        "exits": {
            "Forest Temple Falling Room": "
                (Small_Key_Forest_Temple, 5) and (can_use(Bow) or can_use(Dins_Fire))"
            # Only 5 keys because you must have had access to falling ceiling room to have wasted a key there
        }
    },
    {
        "region_name": "Forest Temple Falling Room",
        "dungeon": "Forest Temple",
        "events": {
            "Forest Temple Amy and Meg": "can_use(Bow) and (Small_Key_Forest_Temple, 6)"
        },
        "locations": {
            "Forest Temple MQ Falling Ceiling Room Chest": "True",
            "Forest Temple MQ Green Poe Room Pot 1": "(Small_Key_Forest_Temple, 6)",
            "Forest Temple MQ Green Poe Room Pot 2": "(Small_Key_Forest_Temple, 6)"
        },
        "exits": {
            "Forest Temple NE Outdoors Ledge": "True"
        }
    },
    {
        "region_name": "Forest Temple Before Boss",
        "dungeon": "Forest Temple",
        "locations": {
            "Forest Temple MQ Basement Chest": "True",
            "Forest Temple MQ Basement Pot 1": "True",
            "Forest Temple MQ Basement Pot 2": "True",
            "Forest Temple MQ Basement Pot 3": "True",
            "Forest Temple MQ Basement Pot 4": "True"
        },
        "exits": {
            "Forest Temple Boss Door": "True"
        }
    }
]