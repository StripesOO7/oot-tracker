
[
    {
        "region_name": "Water Temple Lobby",
        "dungeon": "Water Temple",
        "events": {
            # Child can access only falling platform room and L2 pots as the sole entrant into the temple
            # Use Child_Water_Temple for cases where child assists after the water is lowered
            "Child Water Temple": "is_child",
            # Use Raise_Water_Level to ensure the water level can be raised if it were to be lowered.
            "Raise Water Level": "
                (is_adult and (Hookshot or Hover_Boots or Bow)) or
                (has_fire_source_with_torch and can_use_projectile)"
        },
        "locations": {
            "Water Temple Main Room L2 Pot 1": "
                at('Water Temple Lowered Water Levels', True) or can_use(Boomerang) or
                ((can_use(Iron_Boots) or (Progressive_Scale, 2)) and
                    (can_use(Bow) or can_use(Hookshot) or can_use(Slingshot)) and
                    (can_use(Zora_Tunic) or logic_fewer_tunic_requirements))", 
            "Water Temple Main Room L2 Pot 2": "
                at('Water Temple Lowered Water Levels', True) or can_use(Boomerang) or
                ((can_use(Iron_Boots) or (Progressive_Scale, 2)) and
                    (can_use(Bow) or can_use(Hookshot) or can_use(Slingshot)) and
                    (can_use(Zora_Tunic) or logic_fewer_tunic_requirements))",
            "Fairy Pot": "has_bottle and can_use(Longshot)"
        },
        "exits": {
            "Lake Hylia": "True",
            "Water Temple Dive": "
                is_adult and (Zora_Tunic or logic_fewer_tunic_requirements) and
                ((logic_water_temple_torch_longshot and Longshot) or Iron_Boots)",
            "Water Temple Falling Platform Room": "Raise_Water_Level and (Small_Key_Water_Temple, 4)",
            "Water Temple Boss Door": "can_use(Longshot)"
        }
    },
    {
        "region_name": "Water Temple Dive",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple Map Chest": "Raise_Water_Level",
            "Water Temple Compass Chest": "(can_play(Zeldas_Lullaby) or Iron_Boots) and Hookshot",
            "Water Temple L1 Torch Pot 1": "(Iron_Boots and Hookshot) or can_play(Zeldas_Lullaby)",
            "Water Temple L1 Torch Pot 2": "(Iron_Boots and Hookshot) or can_play(Zeldas_Lullaby)",
            "Water Temple Near Compass Pot 1": "(can_play(Zeldas_Lullaby) or Iron_Boots) and Hookshot",
            "Water Temple Near Compass Pot 2": "(can_play(Zeldas_Lullaby) or Iron_Boots) and Hookshot",
            "Water Temple Near Compass Pot 3": "(can_play(Zeldas_Lullaby) or Iron_Boots) and Hookshot"
        },
        "exits": {
            "Water Temple Lowered Water Levels": "can_play(Zeldas_Lullaby)",
            "Water Temple North Basement": "
                (Iron_Boots or can_play(Zeldas_Lullaby)) and
                (Longshot or (logic_water_boss_key_region and Hover_Boots)) and
                (Small_Key_Water_Temple, 4)"
        }
    },
    {
        "region_name": "Water Temple Lowered Water Levels",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple Torches Chest": "
                Bow or can_use(Dins_Fire) or
                (Child_Water_Temple and Sticks and Kokiri_Sword and Magic_Meter)",
            "Water Temple GS Central Pillar": "
                ((Longshot or (logic_water_central_gs_fw and Hookshot and can_use(Farores_Wind))) and
                    ((Small_Key_Water_Temple, 5) or Bow or can_use(Dins_Fire))) or
                (logic_water_central_gs_irons and Hookshot and Iron_Boots and
                    (Bow or can_use(Dins_Fire))) or
                (logic_water_central_gs_fw and Child_Water_Temple and Boomerang and can_use(Farores_Wind) and
                    Raise_Water_Level and ((Small_Key_Water_Temple, 5) or Sticks or can_use(Dins_Fire)))"
        },
        "exits": {
            "Water Temple South Basement": "
                has_explosives and (Iron_Boots or can_dive) and (Hookshot or Hover_Boots)",
            "Water Temple Middle Water Level": "
                Bow or can_use(Dins_Fire) or (Child_Water_Temple and Sticks) or
                ((Small_Key_Water_Temple, 5) and Hookshot)",
            "Water Temple Cracked Wall": "
                Raise_Water_Level and
                (logic_water_cracked_wall_nothing or (logic_water_cracked_wall_hovers and Hover_Boots))",
            "Water Temple Central Bow Target": "
                Progressive_Strength_Upgrade and Bow and
                (logic_water_central_bow or Hover_Boots or Longshot)",
            "Water Temple Dragon Statue": "
                Progressive_Strength_Upgrade and
                ((Iron_Boots and Hookshot) or
                    (logic_water_dragon_adult and
                        (has_bombchus or Bow or Hookshot) and (can_dive or Iron_Boots)) or
                    (logic_water_dragon_child and Child_Water_Temple and
                        (has_bombchus or Slingshot or Boomerang) and can_dive))"
        }
    },
    {
        "region_name": "Water Temple South Basement",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple Behind Gate Pot 1": "True",
            "Water Temple Behind Gate Pot 2": "True",
            "Water Temple Behind Gate Pot 3": "True",
            "Water Temple Behind Gate Pot 4": "True",
            "Water Temple GS Behind Gate": "True"
        }
    },
    {
        "region_name": "Water Temple Middle Water Level",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple Central Pillar Chest": "
                ((Small_Key_Water_Temple, 5) or Bow or can_use(Dins_Fire)) and
                Iron_Boots and Zora_Tunic and Hookshot"
        },
        "exits": {
            "Water Temple Cracked Wall": "True",
            "Water Temple Central Bow Target": "
                Progressive_Strength_Upgrade and
                logic_water_central_bow and Child_Water_Temple and Slingshot"
        }
    },
    {
        "region_name": "Water Temple Cracked Wall",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple Cracked Wall Chest": "has_explosives"
        }
    },
    {
        "region_name": "Water Temple Central Bow Target",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple Central Bow Target Chest": "True",
            "Water Temple Central Bow Target Pot 1": "True",
            "Water Temple Central Bow Target Pot 2": "True"
        }
    },
    {
        "region_name": "Water Temple North Basement",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple North Basement Block Puzzle Pot 1": "True",
            "Water Temple North Basement Block Puzzle Pot 2": "True",
            # Longshot reaches without the need to actually go near
            # Otherwise you have Hovers and can you hover over and collect with a jumpslash
            "Water Temple GS Near Boss Key Chest": "True"
        },
        "exits": {
            "Water Temple Boss Key Chest Room": "
                (Small_Key_Water_Temple, 5) and 
                (logic_water_bk_jump_dive or Iron_Boots) and
                (logic_water_north_basement_ledge_jump or Hover_Boots or
                    (has_explosives and Progressive_Strength_Upgrade))"
        }
    },
    {
        "region_name": "Water Temple Boss Key Chest Room",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple Boss Key Chest": "True",
            "Fairy Pot": "has_bottle"
        }
    },
    {
        "region_name": "Water Temple Falling Platform Room",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple GS Falling Platform Room": "
                can_use(Longshot) or
                (logic_water_falling_platform_gs_hookshot and can_use(Hookshot)) or
                (logic_water_falling_platform_gs_boomerang and can_use(Boomerang))"
        },
        "exits": {
            "Water Temple Dark Link Region": "can_use(Hookshot) and (Small_Key_Water_Temple, 5)"
        }
    },
    {
        "region_name": "Water Temple Dark Link Region",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple Longshot Chest": "True",
            "Water Temple Like Like Pot 1": "True",
            "Water Temple Like Like Pot 2": "True"
        },
        "exits": {
            "Water Temple River": "can_play(Song_of_Time)"
        }
    },
    {
        "region_name": "Water Temple River",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple River Chest": "Bow",
            "Water Temple River Recovery Heart 1": "True",
            "Water Temple River Recovery Heart 2": "True",
            "Water Temple River Recovery Heart 3": "True",
            "Water Temple River Recovery Heart 4": "True",
            "Water Temple River Pot 1": "True",
            "Water Temple GS River": "
                (Iron_Boots and (Zora_Tunic or logic_fewer_tunic_requirements)) or
                (logic_water_river_gs and Longshot and (Bow or has_bombchus))",
            "Fairy Pot": "has_bottle"
        },
        "exits": {
            "Water Temple Dragon Statue": "
                Bow and (Zora_Tunic or logic_fewer_tunic_requirements) and
                (Iron_Boots or logic_water_dragon_jump_dive or logic_water_dragon_adult)"
        }
    },
    {
        "region_name": "Water Temple Dragon Statue",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple Dragon Chest": "True"
        }
    }
]
--MQ
[
    {
        "region_name": "Water Temple Lobby",
        "dungeon": "Water Temple",
        "exits": {
            "Lake Hylia": "True",
            "Water Temple Dive": "is_adult and (Zora_Tunic or logic_fewer_tunic_requirements) and Iron_Boots",
            "Water Temple Dark Link Region": "Small_Key_Water_Temple and can_use(Longshot)",
            "Water Temple Boss Door": "can_use(Longshot)"
        }
    },
    {
        "region_name": "Water Temple Dive",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple MQ Map Chest": "has_fire_source and Hookshot",
            "Water Temple MQ L1 Torch Pot 1": "Hookshot or can_play(Zeldas_Lullaby)",
            "Water Temple MQ L1 Torch Pot 2": "Hookshot or can_play(Zeldas_Lullaby)",
            "Water Temple MQ Lizalfos Hallway Pot 1": "Hookshot or can_play(Zeldas_Lullaby)",
            "Water Temple MQ Lizalfos Hallway Pot 2": "Hookshot or can_play(Zeldas_Lullaby)",
            "Water Temple MQ Lizalfos Hallway Pot 3": "Hookshot or can_play(Zeldas_Lullaby)",
            "Water Temple MQ Central Pillar Upper Crate 1": "can_break_crate",
            "Water Temple MQ Central Pillar Upper Crate 2": "can_break_crate",
            "Water Temple MQ Lizalfos Hallway Hall Crate 1": "
                can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
            "Water Temple MQ Lizalfos Hallway Hall Crate 2": "
                can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
            "Water Temple MQ Lizalfos Hallway Hall Crate 3": "
                can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
            "Water Temple MQ Lizalfos Hallway Room Crate 1": "
                can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
            "Water Temple MQ Lizalfos Hallway Room Crate 2": "
                can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
            "Water Temple MQ Lizalfos Hallway Room Crate 3": "
                can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
            "Water Temple MQ Lizalfos Hallway Room Crate 4": "
                can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)",
            "Water Temple MQ Lizalfos Hallway Room Crate 5": "
                can_bonk or (can_play(Zeldas_Lullaby) and can_blast_or_smash)"
        },
        "exits": {
            "Water Temple Below Central Pillar": "
                Zora_Tunic and ((logic_water_mq_central_pillar and can_use(Fire_Arrows)) or
                    (can_use(Dins_Fire) and can_play(Song_of_Time)))",
            "Water Temple Storage Room": "Hookshot",
            "Water Temple Lowered Water Levels": "can_play(Zeldas_Lullaby)"
        }
    },
    {
        "region_name": "Water Temple Below Central Pillar",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple MQ Central Pillar Chest": "Hookshot",
            "Water Temple MQ Central Pillar Lower Crate 1": "can_bonk",
            "Water Temple MQ Central Pillar Lower Crate 2": "can_bonk",
            "Water Temple MQ Central Pillar Lower Crate 3": "can_bonk",
            "Water Temple MQ Central Pillar Lower Crate 4": "can_bonk",
            "Water Temple MQ Central Pillar Lower Crate 5": "can_bonk",
            "Water Temple MQ Central Pillar Lower Crate 6": "can_bonk",
            "Water Temple MQ Central Pillar Lower Crate 7": "can_bonk",
            "Water Temple MQ Central Pillar Lower Crate 8": "can_bonk",
            "Water Temple MQ Central Pillar Lower Crate 9": "can_bonk",
            "Water Temple MQ Central Pillar Lower Crate 10": "can_bonk",
            "Water Temple MQ Central Pillar Lower Crate 11": "can_bonk",
            "Water Temple MQ Central Pillar Lower Crate 12": "can_bonk",
            "Water Temple MQ Central Pillar Lower Crate 13": "can_bonk",
            "Water Temple MQ Central Pillar Lower Crate 14": "can_bonk"
        }
    },
    {
        "region_name": "Water Temple Storage Room",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple MQ Storage Room Pot 1": "True",
            "Water Temple MQ Storage Room Pot 2": "True",
            "Water Temple MQ Storage Room Pot 3": "True",
            "Water Temple MQ Storage Room Crate 1": "can_break_crate",
            "Water Temple MQ Storage Room Crate 2": "can_break_crate",
            "Water Temple MQ Storage Room Crate 3": "can_break_crate",
            "Water Temple MQ Storage Room Crate 4": "can_break_crate",
            "Water Temple MQ Storage Room Crate 5": "can_break_crate",
            "Water Temple MQ Storage Room Crate 6": "can_break_crate",
            "Water Temple MQ Storage Room Crate 7": "can_break_crate"
        }
    },
    {
        "region_name": "Water Temple Lowered Water Levels",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple MQ Compass Chest": "
                Bow or can_use(Dins_Fire) or at('Water Temple Lobby', can_use(Sticks))",
            "Water Temple MQ Longshot Chest": "Hookshot",
            "Water Temple MQ Lizalfos Hallway Gate Pot 1": "can_use(Dins_Fire)",
            "Water Temple MQ Lizalfos Hallway Gate Pot 2": "can_use(Dins_Fire)",
            "Water Temple MQ Lizalfos Hallway Gate Crate 1": "can_use(Dins_Fire) and can_break_crate",
            "Water Temple MQ Lizalfos Hallway Gate Crate 2": "can_use(Dins_Fire) and can_break_crate",
            "Water Temple MQ GS Lizalfos Hallway": "can_use(Dins_Fire)"
        },
        "exits": {
            "Water Temple Before Upper Water Switch": "Hookshot"
        }
    },
    {
        "region_name": "Water Temple Before Upper Water Switch",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple MQ Before Upper Water Switch Pot 1": "True",
            "Water Temple MQ Before Upper Water Switch Pot 2": "True",
            "Water Temple MQ Before Upper Water Switch Pot 3": "True",
            "Water Temple MQ Before Upper Water Switch Lower Crate 1": "can_break_crate",
            "Water Temple MQ Before Upper Water Switch Lower Crate 2": "can_break_crate",
            "Water Temple MQ Before Upper Water Switch Lower Crate 3": "can_break_crate",
            "Water Temple MQ Before Upper Water Switch Lower Crate 4": "can_break_crate",
            "Water Temple MQ Before Upper Water Switch Lower Crate 5": "can_break_crate",
            "Water Temple MQ Before Upper Water Switch Lower Crate 6": "can_break_crate",
            "Water Temple MQ Before Upper Water Switch Upper Crate 1": "Longshot and can_break_crate",
            "Water Temple MQ Before Upper Water Switch Upper Crate 2": "Longshot and can_break_crate",
            "Water Temple MQ GS Before Upper Water Switch": "Longshot"
        }
    },
    {
        "region_name": "Water Temple Dark Link Region",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple MQ Before Dark Link Lower Pot": "True",
            "Water Temple MQ Before Dark Link Top Pot 1": "True",
            "Water Temple MQ Before Dark Link Top Pot 2": "True",
            "Water Temple MQ Room After Dark Link Pot": "True",
            "Water Temple MQ River Pot": "True",
            "Water Temple MQ Dragon Statue Near Door Crate 1": "can_break_crate",
            "Water Temple MQ Dragon Statue Near Door Crate 2": "can_break_crate",
            "Water Temple MQ GS River": "True",
            "Fairy Pot": "has_bottle",
            "Nut Pot": "True"
        },
        "exits": {
            "Water Temple Dragon Statue": "
                (Zora_Tunic or logic_fewer_tunic_requirements) and
                (logic_water_dragon_jump_dive or can_dive or Iron_Boots)"
        }
    },
    {
        "region_name": "Water Temple Dragon Statue",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple MQ Dragon Statue By Torches Crate 1": "can_break_crate",
            "Water Temple MQ Dragon Statue By Torches Crate 2": "can_break_crate",
            "Water Temple MQ Dragon Statue Submerged Crate 1": "
                (Iron_Boots and can_bonk) or (has_bombchus and (can_dive or Iron_Boots))",
            "Water Temple MQ Dragon Statue Submerged Crate 2": "
                (Iron_Boots and can_bonk) or (has_bombchus and (can_dive or Iron_Boots))",
            "Water Temple MQ Dragon Statue Submerged Crate 3": "
                (Iron_Boots and can_bonk) or (has_bombchus and (can_dive or Iron_Boots))",
            "Water Temple MQ Dragon Statue Submerged Crate 4": "
                (Iron_Boots and can_bonk) or (has_bombchus and (can_dive or Iron_Boots))"
        },
        "exits": {
            "Water Temple Boss Key Chest Room": "has_fire_source"
        }
    },
    {
        "region_name": "Water Temple Boss Key Chest Room",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple MQ Boss Key Chest": "can_use(Dins_Fire)",
            "Water Temple MQ Boss Key Chest Room Pot": "True",
            "Water Temple MQ Boss Key Chest Room Upper Crate": "can_break_crate",
            "Water Temple MQ Boss Key Chest Room Lower Crate 1": "can_break_crate",
            "Water Temple MQ Boss Key Chest Room Lower Crate 2": "can_break_crate",
            "Water Temple MQ Boss Key Chest Room Lower Crate 3": "can_break_crate",
            "Water Temple MQ Boss Key Chest Room Lower Crate 4": "can_break_crate"
        },
        "exits": {
            "Water Temple Basement Gated Areas": "can_use(Dins_Fire) and Iron_Boots"
        }
    },
    {
        "region_name": "Water Temple Basement Gated Areas",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple MQ Freestanding Key Area Front Crate 1": "can_break_crate",
            "Water Temple MQ Freestanding Key Area Front Crate 2": "can_break_crate",
            "Water Temple MQ Freestanding Key Area Submerged Crate 1": "can_bonk or has_bombchus",
            "Water Temple MQ Freestanding Key Area Submerged Crate 2": "can_bonk or has_bombchus",
            "Water Temple MQ Freestanding Key Area Submerged Crate 3": "can_bonk or has_bombchus",
            "Water Temple MQ Freestanding Key Area Submerged Crate 4": "can_bonk or has_bombchus",
            "Water Temple MQ Freestanding Key Area Submerged Crate 5": "can_bonk or has_bombchus",
            "Water Temple MQ Freestanding Key Area Submerged Crate 6": "can_bonk or has_bombchus",
            "Water Temple MQ Triple Wall Torch Submerged Crate 1": "can_bonk or has_bombchus",
            "Water Temple MQ Triple Wall Torch Submerged Crate 2": "can_bonk or has_bombchus",
            "Water Temple MQ Triple Wall Torch Submerged Crate 3": "can_bonk or has_bombchus",
            "Water Temple MQ Triple Wall Torch Submerged Crate 4": "can_bonk or has_bombchus",
            "Water Temple MQ Triple Wall Torch Submerged Crate 5": "can_bonk or has_bombchus",
            "Water Temple MQ Triple Wall Torch Submerged Crate 6": "can_bonk or has_bombchus"
        },
        "exits": {
            "Water Temple Freestanding Key Room": "
                Hover_Boots or can_use(Scarecrow) or logic_water_north_basement_ledge_jump",
            "Water Temple Dodongo Room": "logic_water_mq_locked_gs",
            "Water Temple Triple Wall Torch": "can_use(Fire_Arrows) and (Hover_Boots or can_use(Scarecrow))"
        }
    },
    {
        "region_name": "Water Temple Freestanding Key Room",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple MQ Freestanding Key": "can_break_crate",
            "Water Temple MQ Freestanding Key Room Pot": "True",
            "Water Temple MQ Freestanding Key Room Crate 1": "can_break_crate",
            "Water Temple MQ Freestanding Key Room Crate 2": "can_break_crate",
            "Water Temple MQ Freestanding Key Room Crate 3": "can_break_crate",
            "Water Temple MQ Freestanding Key Room Crate 4": "can_break_crate",
            "Water Temple MQ Freestanding Key Room Crate 5": "can_break_crate"
        },
        "exits": {
            "Water Temple Dodongo Room": "(Small_Key_Water_Temple, 2)"
        }
    },
    {
        "region_name": "Water Temple Dodongo Room",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple MQ Dodongo Room Pot 1": "True",
            "Water Temple MQ Dodongo Room Pot 2": "True",
            "Water Temple MQ Dodongo Room Lower Crate 1": "can_break_crate",
            "Water Temple MQ Dodongo Room Lower Crate 2": "can_break_crate",
            "Water Temple MQ Dodongo Room Lower Crate 3": "can_break_crate",
            "Water Temple MQ Dodongo Room Upper Crate": "can_break_crate",
            "Water Temple MQ Dodongo Room Hall Crate": "can_break_crate",
            "Water Temple MQ Freestanding Key Area Behind Gate Crate 1": "can_break_crate",
            "Water Temple MQ Freestanding Key Area Behind Gate Crate 2": "can_break_crate",
            "Water Temple MQ Freestanding Key Area Behind Gate Crate 3": "can_break_crate",
            "Water Temple MQ Freestanding Key Area Behind Gate Crate 4": "can_break_crate",
            "Water Temple MQ GS Freestanding Key Area": "True"
        },
        "exits": {
            "Water Temple Freestanding Key Room": "(Small_Key_Water_Temple, 2)"
        }
    },
    {
        "region_name": "Water Temple Triple Wall Torch",
        "dungeon": "Water Temple",
        "locations": {
            "Water Temple MQ Triple Wall Torch Pot 1": "True",
            "Water Temple MQ Triple Wall Torch Pot 2": "True",
            "Water Temple MQ Triple Wall Torch Pot 3": "True",
            "Water Temple MQ Triple Wall Torch Pot 4": "True",
            "Water Temple MQ Triple Wall Torch Behind Gate Crate 1": "can_break_crate",
            "Water Temple MQ Triple Wall Torch Behind Gate Crate 2": "can_break_crate",
            "Water Temple MQ Triple Wall Torch Behind Gate Crate 3": "can_break_crate",
            "Water Temple MQ GS Triple Wall Torch": "True"
        }
    }
]