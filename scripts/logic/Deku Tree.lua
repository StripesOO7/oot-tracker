[
    {
        "region_name": "Deku Tree Lobby",
        "dungeon": "Deku Tree",
        "locations": {
            "Deku Tree Map Chest": "True",
            "Deku Tree Compass Chest": "True",
            "Deku Tree Compass Room Side Chest": "True",
            "Deku Tree Lower Lobby Recovery Heart": "True",
            "Deku Tree Upper Lobby Recovery Heart": "is_adult or can_child_attack or Nuts",
            "Deku Tree GS Compass Room": "is_adult or can_child_attack",
            "Deku Baba Sticks": "is_adult or Kokiri_Sword or Boomerang",
            "Deku Baba Nuts": "
                is_adult or Slingshot or Sticks or
                has_explosives or Kokiri_Sword or can_use(Dins_Fire)"
        },
        "exits": {
            "KF Outside Deku Tree": "True",
            "Deku Tree Slingshot Room": "here(has_shield)",
            "Deku Tree Basement": "deku_tree_shortcuts or is_adult or can_child_attack or Nuts"
        }
    },
    {
        "region_name": "Deku Tree Slingshot Room",
        "dungeon": "Deku Tree",
        "locations": {
            "Deku Tree Slingshot Chest": "True",
            "Deku Tree Slingshot Room Side Chest": "True"
        }
    },
    {
        "region_name": "Deku Tree Basement",
        "dungeon": "Deku Tree",
        "locations": {
            "Deku Tree Basement Chest": "True",
            "Deku Tree GS Basement Gate": "is_adult or can_child_attack",
            "Deku Tree GS Basement Vines": "
                can_use_projectile or can_use(Dins_Fire) or
                (logic_deku_basement_gs and (is_adult or Sticks or Kokiri_Sword))"
        },
        "exits": {
            "Deku Tree Basement Back Room": "
                here(has_fire_source_with_torch or can_use(Bow)) and
                here(can_use(Slingshot) or can_use(Bow))",
            "Deku Tree Basement Ledge": "deku_tree_shortcuts or here(is_adult) or logic_deku_b1_skip"
        }
    },
    {
        "region_name": "Deku Tree Basement Back Room",
        "dungeon": "Deku Tree",
        "locations": {
            "Deku Tree GS Basement Back Room": "
                here(has_fire_source_with_torch or can_use(Bow)) and
                here(can_blast_or_smash) and
                (can_use(Boomerang) or can_use(Hookshot))"
        },
        "exits": {
            "Deku Tree Basement Ledge": "is_child"
        }
    },
    {
        "region_name": "Deku Tree Basement Ledge",
        "dungeon": "Deku Tree",
        "exits": {
            "Deku Tree Basement Back Room": "is_child",
            "Deku Tree Before Boss": "
                deku_tree_shortcuts or
                here(has_fire_source_with_torch or (logic_deku_b1_webs_with_bow and can_use(Bow)))"
        }
    },
    {
        "region_name": "Deku Tree Before Boss",
        "dungeon": "Deku Tree",
        "locations": {
            "Deku Tree Basement Recovery Heart 1": "True",
            "Deku Tree Basement Recovery Heart 2": "True",
            "Deku Tree Basement Recovery Heart 3": "True"
        },
        "exits": {
            "Deku Tree Boss Door": "deku_tree_shortcuts or here(has_shield)"
        }
    }
]
-- MQ
[
    {
        "region_name": "Bottom of the Well",
        "dungeon": "Bottom of the Well",
        "exits": {
            "Kakariko Village": "True",
            "Bottom of the Well Main Area": "is_child and (can_child_attack or Nuts)"
        }
    },
    {
        "region_name": "Bottom of the Well Main Area",
        "dungeon": "Bottom of the Well",
        "locations": {
            "Bottom of the Well Front Center Bombable Chest": "has_explosives",
            "Bottom of the Well Freestanding Key": "Sticks or can_use(Dins_Fire)",
            "Bottom of the Well Underwater Left Chest": "can_play(Zeldas_Lullaby)",
            "Bottom of the Well Underwater Front Chest": "can_play(Zeldas_Lullaby)",
            "Bottom of the Well Map Chest": "
                has_explosives or
                (Progressive_Strength_Upgrade and
                    (at('Bottom of the Well Behind Locked Doors', True) or
                        can_use(Dins_Fire) or (logic_botw_basement and Sticks)))",
            "Bottom of the Well Invisible Chest": "
                can_play(Zeldas_Lullaby) and (logic_lens_botw or can_use(Lens_of_Truth))",
            # Sword not strictly necessary but being forced to do this with sticks isn't fair
            "Bottom of the Well Lens of Truth Chest": "
                can_play(Zeldas_Lullaby) and (Kokiri_Sword or (Sticks and logic_child_deadhand))",
            "Bottom of the Well Coffin Recovery Heart 1": "Sticks or can_use(Dins_Fire)",
            "Bottom of the Well Coffin Recovery Heart 2": "True",
            "Bottom of the Well Near Entrance Pot 1": "True",
            "Bottom of the Well Near Entrance Pot 2": "True",
            "Bottom of the Well Underwater Pot": "
                can_play(Zeldas_Lullaby) or can_use(Slingshot) or can_use(Boomerang) or has_bombchus",
            "Bottom of the Well Basement Pot 1": "True",
            "Bottom of the Well Basement Pot 2": "True",
            "Bottom of the Well Basement Pot 3": "True",
            "Bottom of the Well Basement Pot 4": "True",
            "Bottom of the Well Basement Pot 5": "True",
            "Bottom of the Well Basement Pot 6": "True",
            "Bottom of the Well Basement Pot 7": "True",
            "Bottom of the Well Basement Pot 8": "True",
            "Bottom of the Well Basement Pot 9": "True",
            "Bottom of the Well Basement Pot 10": "True",
            "Bottom of the Well Basement Pot 11": "True",
            "Bottom of the Well Basement Pot 12": "True",
            "Bottom of the Well Left Side Pot 1": "True",
            "Bottom of the Well Left Side Pot 2": "True",
            "Bottom of the Well Left Side Pot 3": "True",
            "Stick Pot": "True",
            "Nut Pot": "True"
        },
        "exits": {
            "Bottom of the Well Behind Fake Walls": "logic_lens_botw or can_use(Lens_of_Truth)"
        }
    },
    {
        "region_name": "Bottom of the Well Behind Fake Walls",
        "dungeon": "Bottom of the Well",
        "locations": {
            "Bottom of the Well Front Left Fake Wall Chest": "True",
            "Bottom of the Well Right Bottom Fake Wall Chest": "True",
            "Bottom of the Well Compass Chest": "True",
            "Bottom of the Well Center Skulltula Chest": "True",
            "Bottom of the Well Back Left Bombable Chest": "has_explosives",
            "Bottom of the Well Center Room Pit Fall Blue Rupee 1": "True",
            "Bottom of the Well Center Room Pit Fall Blue Rupee 2": "True",
            "Bottom of the Well Center Room Pit Fall Blue Rupee 3": "True",
            "Bottom of the Well Center Room Pit Fall Blue Rupee 4": "True",
            "Bottom of the Well Center Room Pit Fall Blue Rupee 5": "True"
        },
        "exits": {
            "Bottom of the Well Behind Locked Doors": "(Small_Key_Bottom_of_the_Well, 3)"
        }
    },
    {
        "region_name": "Bottom of the Well Behind Locked Doors",
        "dungeon": "Bottom of the Well",
        "locations": {
            # Lens required because these pits are really unfair.
            "Bottom of the Well Fire Keese Chest": "True",
            "Bottom of the Well Like Like Chest": "True",
            "Bottom of the Well West Inner Room Flying Pot 1": "True",
            "Bottom of the Well West Inner Room Flying Pot 2": "True",
            "Bottom of the Well West Inner Room Flying Pot 3": "True",
            "Bottom of the Well Fire Keese Pot": "True",
            "Bottom of the Well GS West Inner Room": "Boomerang",
            "Bottom of the Well GS East Inner Room": "Boomerang",
            "Bottom of the Well GS Like Like Cage": "Boomerang"
        }
    }
]