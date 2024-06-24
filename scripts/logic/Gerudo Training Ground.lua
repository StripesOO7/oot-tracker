
[
    {
        "region_name": "Gerudo Training Ground Lobby",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            "Gerudo Training Ground Lobby Left Chest": "can_use(Bow) or can_use(Slingshot)",
            "Gerudo Training Ground Lobby Right Chest": "can_use(Bow) or can_use(Slingshot)",
            "Gerudo Training Ground Stalfos Chest": "is_adult or Kokiri_Sword",
            "Gerudo Training Ground Beamos Chest": "has_explosives and (is_adult or Kokiri_Sword)",
            "Gerudo Training Ground Hidden Ceiling Chest": "
                (Small_Key_Gerudo_Training_Ground, 3) and (logic_lens_gtg or can_use(Lens_of_Truth))",
            "Gerudo Training Ground Maze Path First Chest": "(Small_Key_Gerudo_Training_Ground, 4)",
            "Gerudo Training Ground Maze Path Second Chest": "(Small_Key_Gerudo_Training_Ground, 6)",
            "Gerudo Training Ground Maze Path Third Chest": "(Small_Key_Gerudo_Training_Ground, 7)",
            "Gerudo Training Ground Maze Path Final Chest": "(Small_Key_Gerudo_Training_Ground, 9)",
            "Gerudo Training Ground Beamos Recovery Heart 1": "True",
            "Gerudo Training Ground Beamos Recovery Heart 2": "True",
            # In the Beamos room, shoot the Gerudo symbol above the door to the lava room.
            "Wall Fairy": "has_bottle and can_use(Bow)"
        },
        "exits": {
            "Gerudo Fortress": "True",
            "Gerudo Training Ground Lava Room": "
                here(has_explosives and (is_adult or Kokiri_Sword))",
            "Gerudo Training Ground Central Maze Right": "(Small_Key_Gerudo_Training_Ground, 9)",
            "Gerudo Training Ground Heavy Block Room": "
                (is_adult or Kokiri_Sword) and
                (can_use(Hookshot) or logic_gtg_without_hookshot)"
        }
    },
    {
        "region_name": "Gerudo Training Ground Lava Room",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            "Gerudo Training Ground Underwater Silver Rupee Chest": "
                is_adult and Hookshot and can_play(Song_of_Time) and
                Iron_Boots and (logic_fewer_tunic_requirements or Zora_Tunic)"
        },
        "exits": {
            "Gerudo Training Ground Central Maze Right": "can_play(Song_of_Time) or is_child",
            "Gerudo Training Ground Hammer Room": "
                is_adult and (Longshot or (Hookshot and Hover_Boots))"
        }
    },
    {
        "region_name": "Gerudo Training Ground Central Maze Right",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            "Gerudo Training Ground Maze Right Central Chest": "True",
            "Gerudo Training Ground Maze Right Side Chest": "True",
            "Gerudo Training Ground Freestanding Key": "True"
        },
        "exits": {
            "Gerudo Training Ground Lava Room": "True",
            "Gerudo Training Ground Hammer Room": "can_use(Hookshot)"
        }
    },
    {
        "region_name": "Gerudo Training Ground Heavy Block Room",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            "Gerudo Training Ground Before Heavy Block Chest": "True"
        },
        "exits": {
            "Gerudo Training Ground Eye Statue Upper": "
                is_adult and (logic_lens_gtg or can_use(Lens_of_Truth)) and
                (Hookshot or (logic_gtg_fake_wall and Hover_Boots))"
        }
    },
    {
        "region_name": "Gerudo Training Ground Eye Statue Upper",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            "Gerudo Training Ground Near Scarecrow Chest": "Bow"
        },
        "exits": {
            "Gerudo Training Ground Like Like Room": "Silver_Gauntlets",
            "Gerudo Training Ground Eye Statue Lower": "True"
        }
    },
    {
        "region_name": "Gerudo Training Ground Like Like Room",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            "Gerudo Training Ground Heavy Block First Chest": "True",
            "Gerudo Training Ground Heavy Block Second Chest": "True",
            "Gerudo Training Ground Heavy Block Third Chest": "True",
            "Gerudo Training Ground Heavy Block Fourth Chest": "True"
        }
    },
    {
        "region_name": "Gerudo Training Ground Eye Statue Lower",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            "Gerudo Training Ground Eye Statue Chest": "Bow"
        },
        "exits": {
            "Gerudo Training Ground Hammer Room": "True"
        }
    },
    {
        "region_name": "Gerudo Training Ground Hammer Room",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            "Gerudo Training Ground Hammer Room Clear Chest": "True",
            "Gerudo Training Ground Hammer Room Switch Chest": "Megaton_Hammer"
        },
        "exits": {
            "Gerudo Training Ground Lava Room": "True",
            "Gerudo Training Ground Eye Statue Lower": "Megaton_Hammer and Bow"
        }
    }
]
--MQ
[
    {
        "region_name": "Gerudo Training Ground Lobby",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            "Gerudo Training Ground MQ Lobby Left Chest": "True",
            "Gerudo Training Ground MQ Lobby Right Chest": "True",
            "Gerudo Training Ground MQ Hidden Ceiling Chest": "logic_lens_gtg_mq or can_use(Lens_of_Truth)",
            "Gerudo Training Ground MQ Maze Path First Chest": "True",
            "Gerudo Training Ground MQ Maze Path Second Chest": "True",
            "Gerudo Training Ground MQ Maze Path Third Chest": "(Small_Key_Gerudo_Training_Ground, 1)",
            "Gerudo Training Ground MQ Lobby Left Pot 1": "True",
            "Gerudo Training Ground MQ Lobby Left Pot 2": "True",
            "Gerudo Training Ground MQ Lobby Right Pot 1": "True",
            "Gerudo Training Ground MQ Lobby Right Pot 2": "True",
            "Gerudo Training Ground MQ Maze Crate": "(Small_Key_Gerudo_Training_Ground, 3) and can_break_crate"
        },
        "exits": {
            "Gerudo Fortress": "True",
            "Gerudo Training Ground Right Side": "here(can_use(Bow) or can_use(Slingshot))",
            "Gerudo Training Ground Left Side": "here(has_fire_source)"
        }
    },
    {
        "region_name": "Gerudo Training Ground Right Side",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            "Gerudo Training Ground MQ Dinolfos Chest": "is_adult",
            # In the Dinalfos room, shoot the Gerudo symbol above the door to the lava room.
            "Wall Fairy": "has_bottle and can_use(Bow)"
        },
        "exits": {
            # Fire source is checked in the water room itself.
            "Gerudo Training Ground Underwater": "is_adult and (Bow or Longshot) and Hover_Boots"
        }
    },
    {
        "region_name": "Gerudo Training Ground Underwater",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            "Gerudo Training Ground MQ Underwater Silver Rupee Chest": "
                has_fire_source and Iron_Boots and
                (logic_fewer_tunic_requirements or Zora_Tunic) and can_take_damage"
        }
    },
    {
        "region_name": "Gerudo Training Ground Left Side",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            "Gerudo Training Ground MQ First Iron Knuckle Chest": "is_adult or Kokiri_Sword or has_explosives"
        },
        "exits": {
            "Gerudo Training Ground Stalfos Room": "
                can_use(Longshot) or logic_gtg_mq_without_hookshot or
                (logic_gtg_mq_with_hookshot and can_use(Hookshot))"
        }
    },
    {
        "region_name": "Gerudo Training Ground Stalfos Room",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            # Very difficult to fight the Stalfos and Stulltulas under the time limit as child.
            "Gerudo Training Ground MQ Before Heavy Block Chest": "is_adult",
            "Gerudo Training Ground MQ Heavy Block Chest": "can_use(Silver_Gauntlets)",
            "Blue Fire": "has_bottle"
        },
        "exits": {
            "Gerudo Training Ground Back Areas": "
                is_adult and (logic_lens_gtg_mq or can_use(Lens_of_Truth)) and Blue_Fire and
                (can_play(Song_of_Time) or (logic_gtg_fake_wall and Hover_Boots))"
        }
    },
    {
        "region_name": "Gerudo Training Ground Back Areas",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            # The switch that opens the door to the Ice Arrows chest can be hit with a precise jumpslash.
            "Gerudo Training Ground MQ Ice Arrows Chest": "
                (Small_Key_Gerudo_Training_Ground, 3) and Megaton_Hammer",
            "Gerudo Training Ground MQ Eye Statue Chest": "Bow",
            "Gerudo Training Ground MQ Second Iron Knuckle Chest": "True",
            "Gerudo Training Ground MQ Flame Circle Chest": "Hookshot or Bow or has_explosives"
        },
        "exits": {
            "Gerudo Training Ground Central Maze Right": "Megaton_Hammer",
            "Gerudo Training Ground Right Side": "Longshot"
        }
    },
    {
        "region_name": "Gerudo Training Ground Central Maze Right",
        "dungeon": "Gerudo Training Ground",
        "locations": {
            "Gerudo Training Ground MQ Maze Right Central Chest": "True",
            "Gerudo Training Ground MQ Maze Right Side Chest": "True"
        },
        "exits": {
            "Gerudo Training Ground Underwater": "Longshot or (Hookshot and Bow)",
            "Gerudo Training Ground Right Side": "Hookshot"
        }
    }
]