{
    "region_name": "Zoras Domain",
    "scene": "Zoras Domain",
    "hint": "ZORAS_DOMAIN",
    "events": {
        "King Zora Thawed": "is_adult and Blue_Fire",
        "Eyeball Frog Access": "
            is_adult and 'King Zora Thawed' and
            (Eyedrops or Eyeball_Frog or Prescription or 'Prescription Access')"
    },
    "locations": {
        "ZD Diving Minigame": "is_child",
        "ZD Chest": "can_use(Sticks)",
        "Deliver Rutos Letter": "
            is_child and Rutos_Letter and zora_fountain != 'open'",
        "ZD King Zora Thawed": "'King Zora Thawed'",
        "ZD Pot 1": "True",
        "ZD Pot 2": "True",
        "ZD Pot 3": "True",
        "ZD Pot 4": "True",
        "ZD Pot 5": "True",
        "ZD In Front of King Zora Beehive 1": "is_child and can_break_upper_beehive",
        "ZD In Front of King Zora Beehive 2": "is_child and can_break_upper_beehive",
        "ZD GS Frozen Waterfall": "
            is_adult and at_night and
            (Hookshot or Bow or Magic_Meter or logic_domain_gs)",
        "ZD Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy_without_suns and has_bottle",
        "Fish Group": "is_child and has_bottle",
        "Stick Pot": "is_child",
        "Nut Pot": "True"
    },
    "exits": {
        "ZR Behind Waterfall": "True",
        "Lake Hylia": "is_child and can_dive",
        "ZD Behind King Zora": "
            Deliver_Letter or zora_fountain == 'open' or
            (is_adult and (zora_fountain == 'adult' or logic_king_zora_skip))",
        "ZD Shop": "is_child or Blue_Fire",
        "ZD Storms Grotto": "can_open_storm_grotto"
    }
},
{
    "region_name": "ZD Behind King Zora",
    "scene": "Zoras Domain",
    "hint": "ZORAS_DOMAIN",
    "locations": {
        "ZD Behind King Zora Beehive": "is_child and can_break_upper_beehive"
    },
    "exits": {
        "Zoras Domain": "
            Deliver_Letter or zora_fountain == 'open' or
            (is_adult and zora_fountain == 'adult')",
        "Zoras Fountain": "True"
    }
},
{
    "region_name": "ZD Eyeball Frog Timeout",
    "scene": "Zoras Domain",
    "hint": "ZORAS_DOMAIN",
    "exits": {
        "Zoras Domain": "True"
    }
},
{
    "region_name": "ZD Shop",
    "scene": "ZD Shop",
    "locations": {
        "ZD Shop Item 1": "True",
        "ZD Shop Item 2": "True",
        "ZD Shop Item 3": "True",
        "ZD Shop Item 4": "True",
        "ZD Shop Item 5": "True",
        "ZD Shop Item 6": "True",
        "ZD Shop Item 7": "True",
        "ZD Shop Item 8": "True"
    },
    "exits": {
        "Zoras Domain": "True"
    }
},
{
    "region_name": "ZD Storms Grotto",
    "scene": "ZD Storms Grotto",
    "locations": {
        "Free Fairies": "has_bottle"
    },
    "exits": {
        "Zoras Domain": "True"
    }
},