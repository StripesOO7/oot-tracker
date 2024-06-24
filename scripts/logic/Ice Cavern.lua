
[
    {
        "region_name": "Ice Cavern Beginning",
        "dungeon": "Ice Cavern",
        "locations":{
            "Ice Cavern Frozen Blue Rupee": "Blue_Fire"
        },
        "exits": {
            "ZF Ice Ledge": "True",
            # Freezards are immune to Kokiri Sword. It would take a lot of sticks.
            "Ice Cavern Spinning Blades": "here(is_adult or has_explosives or can_use(Dins_Fire))"
        }
    },
    {
        "region_name": "Ice Cavern Spinning Blades",
        "dungeon": "Ice Cavern",
        "locations": {
            "Ice Cavern Hall Pot 1": "True",
            "Ice Cavern Hall Pot 2": "True",
            "Ice Cavern Spinning Blade Pot 1": "True",
            "Ice Cavern Spinning Blade Pot 2": "True",
            "Ice Cavern Spinning Blade Pot 3": "True",
            "Ice Cavern Spinning Blade Flying Pot":  "True",
            "Ice Cavern GS Spinning Scythe Room": "can_use(Hookshot) or can_use(Boomerang)"
        },
        "exits": {
            "Ice Cavern Map Room": "is_adult",
            "Ice Cavern Behind Ice Walls": "here(Blue_Fire)"
        }
    },
    {
        "region_name": "Ice Cavern Map Room",
        "dungeon": "Ice Cavern",
        "locations": {
            "Ice Cavern Map Chest": "Blue_Fire",
            "Ice Cavern Map Room Recovery Heart 1": "True",
            "Ice Cavern Map Room Recovery Heart 2": "True",
            "Ice Cavern Map Room Recovery Heart 3": "True",
            "Ice Cavern Frozen Pot": "Blue_Fire",
            "Blue Fire": "has_bottle"
        }
    },
    {
        "region_name": "Ice Cavern Behind Ice Walls",
        "dungeon": "Ice Cavern",
        "locations": {
            "Ice Cavern Compass Chest": "True",
            "Ice Cavern Freestanding PoH": "True",
            "Ice Cavern Iron Boots Chest": "
                is_adult or Slingshot or Sticks or Kokiri_Sword or can_use(Dins_Fire)",
            "Sheik in Ice Cavern": "
                is_adult or Slingshot or Sticks or Kokiri_Sword or can_use(Dins_Fire)",
            "Ice Cavern Block Room Red Rupee 1": "can_play(Song_of_Time) or can_use(Boomerang)",
            "Ice Cavern Block Room Red Rupee 2": "can_play(Song_of_Time) or can_use(Boomerang)",
            "Ice Cavern Block Room Red Rupee 3": "can_play(Song_of_Time) or can_use(Boomerang)",
            "Ice Cavern Near End Pot 1": "True",
            "Ice Cavern Near End Pot 2": "True",
            "Ice Cavern GS Heart Piece Room": "can_use(Hookshot) or can_use(Boomerang)",
            "Ice Cavern GS Push Block Room": "
                can_use(Hookshot) or can_use(Boomerang) or
                (logic_ice_block_gs and can_use(Hover_Boots))"
        }
    }
]
--MQ
[
    {
        "region_name": "Ice Cavern Beginning",
        "dungeon": "Ice Cavern",
        "locations": {
            "Ice Cavern MQ First Hall Pot": "True",
            "Ice Cavern MQ Tektite Room Pot 1": "True",
            "Ice Cavern MQ Tektite Room Pot 2": "True",
            # The crystal switch in the tektite room can be hit with the pot in the first hall.
            "Ice Cavern MQ Center Room Pot 1": "True",
            "Ice Cavern MQ Center Room Pot 2": "True",
            "Fairy Pot": "has_bottle"
        },
        "exits": {
            "ZF Ice Ledge": "True",
            "Ice Cavern Map Room": "
                is_adult or can_use(Dins_Fire) or
                (has_explosives and (can_use(Sticks) or can_use(Slingshot) or Kokiri_Sword))",
            "Ice Cavern Compass Room": "is_adult and Blue_Fire",
            "Ice Cavern Iron Boots Region": "Blue_Fire"
        }
    },
    {
        "region_name": "Ice Cavern Map Room",
        "dungeon": "Ice Cavern",
        "locations": {
            "Ice Cavern MQ Map Chest": "
                Blue_Fire and
                (is_adult or can_use(Sticks) or Kokiri_Sword or can_use_projectile)",
            "Blue Fire": "has_bottle"
        }
    },
    {
        "region_name": "Ice Cavern Compass Room",
        "dungeon": "Ice Cavern",
        "locations": {
            "Ice Cavern MQ Compass Chest": "True",
            "Ice Cavern MQ Freestanding PoH": "has_explosives",
            "Ice Cavern MQ Compass Room Pot 1": "True",
            "Ice Cavern MQ Compass Room Pot 2": "True",
            "Ice Cavern MQ GS Red Ice": "can_play(Song_of_Time) or logic_ice_mq_red_ice_gs"
        }
    },
    {
        "region_name": "Ice Cavern Iron Boots Region",
        "dungeon": "Ice Cavern",
        "locations": {
            "Ice Cavern MQ Iron Boots Chest": "is_adult",
            "Sheik in Ice Cavern": "is_adult",
            "Ice Cavern MQ Near End Pot": "is_adult",
            "Ice Cavern MQ GS Ice Block": "is_adult or can_child_attack",
            "Ice Cavern MQ GS Scarecrow": "
                can_use(Scarecrow) or (Hover_Boots and can_use(Longshot)) or
                (logic_ice_mq_scarecrow and is_adult)"
        }
    }
]