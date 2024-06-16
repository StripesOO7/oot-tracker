{
    "region_name": "Kakariko Village",
    "scene": "Kakariko Village",
    "hint": "KAKARIKO_VILLAGE",
    "events": {
        "Cojiro Access": "is_adult and 'Wake Up Adult Talon'",
        "Kakariko Village Gate Open": "is_child and (Zeldas_Letter or open_kakariko == 'open')"
    },
    "locations": {
        "Sheik in Kakariko": "
            is_adult and Forest_Medallion and Fire_Medallion and Water_Medallion",
        "Kak Anju as Adult": "is_adult and at_day",
        "Kak Anju as Child": "is_child and at_day and (can_break_crate or chicken_count < 7)",
        "Kak Near Guards House Pot 1": "is_child",
        "Kak Near Guards House Pot 2": "is_child",
        "Kak Near Guards House Pot 3": "is_child",
        "Kak Near Potion Shop Pot 1": "is_child",
        "Kak Near Potion Shop Pot 2": "is_child",
        "Kak Near Potion Shop Pot 3": "is_child",
        "Kak Near Impas House Pot 1": "is_child",
        "Kak Near Impas House Pot 2": "is_child",
        "Kak Near Impas House Pot 3": "is_child",
        "Kak Adult Arrows Crate": "is_adult and can_break_crate",
        "Kak GS House Under Construction": "is_child and at_night",
        "Kak GS Skulltula House": "is_child and at_night",
        "Kak GS Near Gate Guard": "is_child and at_night",
        "Kak GS Tree": "is_child and at_night and can_bonk",
        "Kak GS Watchtower": "
            is_child and at_night and
            (Slingshot or has_bombchus or (logic_kakariko_tower_gs and (Sticks or Kokiri_Sword)))",
        "Bug Rock": "has_bottle"
    },
    "exits": {
        "Hyrule Field": "True",
        "Kak Carpenter Boss House": "True",
        "Kak House of Skulltula": "True",
        "Kak Impas House": "True",
        "Kak Windmill": "True",
        "Kak Bazaar": "is_adult and at_day",
        "Kak Shooting Gallery": "is_adult and at_day",
        "Bottom of the Well": "'Drain Well' and (is_child or shuffle_dungeon_entrances)",
        "Kak Potion Shop Front": "is_child or at_day",
        "Kak Redead Grotto": "can_open_bomb_grotto",
        "Kak Impas Ledge": "(is_child and at_day) or (is_adult and logic_visible_collisions)",
        "Kak Impas Rooftop": "
            can_use(Hookshot) or (logic_kakariko_rooftop_gs and can_use(Hover_Boots))",
        "Kak Odd Medicine Rooftop": "
            can_use(Hookshot) or
            (logic_man_on_roof and
                (is_adult or at_day or Slingshot or has_bombchus or
                    (logic_kakariko_tower_gs and (Sticks or Kokiri_Sword))))",
        "Kak Backyard": "is_adult or at_day",
        "Graveyard": "True",
        "Kak Behind Gate": "is_adult or 'Kakariko Village Gate Open'"
    }
},
{
    "region_name": "Kak Impas Ledge",
    "scene": "Kakariko Village",
    "hint": "KAKARIKO_VILLAGE",
    "exits": {
        "Kak Impas House Back": "True",
        "Kakariko Village": "True"
    }
},
{
    "region_name": "Kak Impas Rooftop",
    "scene": "Kakariko Village",
    "hint": "KAKARIKO_VILLAGE",
    "locations": {
        "Kak GS Above Impas House": "is_adult and at_night"
    },
    "exits": {
        "Kak Impas Ledge": "True",
        "Kakariko Village": "True"
    }
},
{
    "region_name": "Kak Odd Medicine Rooftop",
    "scene": "Kakariko Village",
    "hint": "KAKARIKO_VILLAGE",
    "locations": {
        "Kak Man on Roof": "True"
    },
    "exits": {
        "Kakariko Village": "True",
        "Kak Backyard": "True"
    }
},
{
    "region_name": "Kak Backyard",
    "scene": "Kakariko Village",
    "hint": "KAKARIKO_VILLAGE",
    "locations": {
        "Kak Near Odd Medicine Building Pot 1": "is_child",
        "Kak Near Odd Medicine Building Pot 2": "is_child",
        "Kak Adult Red Rupee Crate": "is_adult and can_break_crate"
    },
    "exits": {
        "Kakariko Village": "True",
        "Kak Open Grotto": "True",
        "Kak Odd Medicine Building": "is_adult",
        "Kak Potion Shop Back": "is_adult and at_day"
    }
},
{
    "region_name": "Kak Carpenter Boss House",
    "scene": "Kak Carpenter Boss House",
    "events": {
        "Wake Up Adult Talon": "is_adult and (Pocket_Egg or Pocket_Cucco)"
    },
    "exits": {
        "Kakariko Village": "True"
    }
},
{
    "region_name": "Kak House of Skulltula",
    "scene": "Kak House of Skulltula",
    "locations": {
        "Kak 10 Gold Skulltula Reward": "(Gold_Skulltula_Token, 10)",
        "Kak 20 Gold Skulltula Reward": "(Gold_Skulltula_Token, 20)",
        "Kak 30 Gold Skulltula Reward": "(Gold_Skulltula_Token, 30)",
        "Kak 40 Gold Skulltula Reward": "(Gold_Skulltula_Token, 40)",
        "Kak 50 Gold Skulltula Reward": "(Gold_Skulltula_Token, 50)",
        "10 Skulltulas Reward Hint": "True",
        "20 Skulltulas Reward Hint": "True",
        "30 Skulltulas Reward Hint": "True",
        "40 Skulltulas Reward Hint": "True",
        "50 Skulltulas Reward Hint": "True"
    },
    "exits": {
        "Kakariko Village": "True"
    }
},
{
    "region_name": "Kak Impas House",
    "scene": "Kak Impas House",
    "exits": {
        "Kakariko Village": "True",
        "Kak Impas House Near Cow": "True"
    }
},
{
    "region_name": "Kak Impas House Back",
    "scene": "Kak Impas House",
    "locations": {
        "Kak Impas House Freestanding PoH": "True"
    },
    "exits": {
        "Kak Impas Ledge": "True",
        "Kak Impas House Near Cow": "True"
    }
},
{
    "region_name": "Kak Impas House Near Cow",
    "scene": "Kak Impas House",
    "locations": {
        "Kak Impas House Cow": "can_play(Eponas_Song)"
    }
},
{
    "region_name": "Kak Windmill",
    "scene": "Windmill and Dampes Grave",
    "events": {
        "Drain Well": "is_child and can_play(Song_of_Storms)"
    },
    "locations": {
        "Kak Windmill Freestanding PoH": "
            can_use(Boomerang) or
            (logic_windmill_poh and is_adult) or 'Dampes Windmill Access'",
        "Song from Windmill": "is_adult and Ocarina"
    },
    "exits": {
        "Kakariko Village": "True"
    }
},
{
    "region_name": "Kak Bazaar",
    "scene": "Kak Bazaar",
    "locations": {
        "Kak Bazaar Item 1": "True",
        "Kak Bazaar Item 2": "True",
        "Kak Bazaar Item 3": "True",
        "Kak Bazaar Item 4": "True",
        "Kak Bazaar Item 5": "True",
        "Kak Bazaar Item 6": "True",
        "Kak Bazaar Item 7": "True",
        "Kak Bazaar Item 8": "True"
    },
    "exits": {
        "Kakariko Village": "True"
    }
},
{
    "region_name": "Kak Shooting Gallery",
    "scene": "Kak Shooting Gallery",
    "locations": {
        "Kak Shooting Gallery Reward": "is_adult and Bow"
    },
    "exits": {
        "Kakariko Village": "True"
    }
},
{
    "region_name": "Kak Potion Shop Front",
    "scene": "Kak Potion Shop",
    "locations": {
        "Kak Potion Shop Item 1": "is_adult",
        "Kak Potion Shop Item 2": "is_adult",
        "Kak Potion Shop Item 3": "is_adult",
        "Kak Potion Shop Item 4": "is_adult",
        "Kak Potion Shop Item 5": "is_adult",
        "Kak Potion Shop Item 6": "is_adult",
        "Kak Potion Shop Item 7": "is_adult",
        "Kak Potion Shop Item 8": "is_adult"
    },
    "exits": {
        "Kakariko Village": "True",
        "Kak Potion Shop Back": "is_adult"
    }
},
{
    "region_name": "Kak Potion Shop Back",
    "scene": "Kak Potion Shop",
    "exits": {
        "Kak Backyard": "is_adult",
        "Kak Potion Shop Front": "True"
    }
},
{
    "region_name": "Kak Odd Medicine Building",
    "scene": "Kak Odd Medicine Building",
    "events": {
        "Odd Potion Access": "
            is_adult and
            ('Odd Mushroom Access' or (Odd_Mushroom and disable_trade_revert))"
    },
    "exits": {
        "Kak Backyard": "True"
    }
},
{
    "region_name": "Kak Behind Gate",
    "scene": "Kakariko Village",
    "hint": "KAKARIKO_VILLAGE",
    "exits": {
        "Kakariko Village": "
            is_adult or logic_visible_collisions or 'Kakariko Village Gate Open' or open_kakariko == 'open'",
        "Death Mountain": "True"
    }
},
{
    "region_name": "Kak Redead Grotto",
    "scene": "Kak Redead Grotto",
    "locations": {
        "Kak Redead Grotto Chest": "is_adult or Sticks or Kokiri_Sword or can_use(Dins_Fire)"
    },
    "exits": {
        "Kakariko Village": "True"
    }
},
{
    "region_name": "Kak Open Grotto",
    "scene": "Kak Open Grotto",
    "locations": {
        "Kak Open Grotto Chest": "True",
        "Kak Open Grotto Gossip Stone": "True",
        "Kak Open Grotto Beehive 1": "can_break_lower_beehive",
        "Kak Open Grotto Beehive 2": "can_break_lower_beehive",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Shrub": "can_cut_shrubs and has_bottle",
        "Lone Fish": "has_bottle"
    },
    "exits": {
        "Kak Backyard": "True"
    }
},