{
    "region_name": "Lon Lon Ranch",
    "scene": "Lon Lon Ranch",
    "hint": "LON_LON_RANCH",
    "events": {
        "Epona": "can_play(Eponas_Song) and is_adult and at_day",
        "Links Cow": "can_play(Eponas_Song) and is_adult and at_day"
    },
    "locations": {
        "Song from Malon": "is_child and Zeldas_Letter and Ocarina and at_day",
        "LLR Front Pot 1": "is_child",
        "LLR Front Pot 2": "is_child",
        "LLR Front Pot 3": "is_child",
        "LLR Front Pot 4": "is_child",
        "LLR Rain Shed Pot 1": "is_child",
        "LLR Rain Shed Pot 2": "is_child",
        "LLR Rain Shed Pot 3": "is_child",
        "LLR Child Crate": "is_child and can_break_crate",
        "LLR GS Tree": "is_child and can_bonk",
        "LLR GS Rain Shed": "is_child and at_night",
        "LLR GS House Window": "can_use(Boomerang) and at_night",
        "LLR GS Back Wall": "can_use(Boomerang) and at_night"
    },
    "exits": {
        "Hyrule Field": "True",
        "LLR Talons House": "is_adult or at_day",
        "LLR Stables": "True",
        "LLR Tower": "True",
        "LLR Grotto": "is_child"
    }
},
{
    "region_name": "LLR Talons House",
    "scene": "LLR Talons House",
    "locations": {
        "LLR Talons Chickens": "is_child and at_day and Zeldas_Letter",
        "LLR Talons House Pot 1": "True",
        "LLR Talons House Pot 2": "True",
        "LLR Talons House Pot 3": "True"
    },
    "exits": {
        "Lon Lon Ranch": "True"
    }
},
{
    "region_name": "LLR Stables",
    "scene": "LLR Stables",
    "locations": {
        "LLR Stables Left Cow": "can_play(Eponas_Song)",
        "LLR Stables Right Cow": "can_play(Eponas_Song)"
    },
    "exits": {
        "Lon Lon Ranch": "True"
    }
},
{
    "region_name": "LLR Tower",
    "scene": "LLR Tower",
    "locations": {
        "LLR Freestanding PoH": "is_child",
        "LLR Tower Left Cow": "can_play(Eponas_Song)",
        "LLR Tower Right Cow": "can_play(Eponas_Song)"
    },
    "exits": {
        "Lon Lon Ranch": "True"
    }
},
{
    "region_name": "LLR Grotto",
    "scene": "LLR Grotto",
    "locations": {
        "LLR Deku Scrub Grotto Left": "can_stun_deku",
        "LLR Deku Scrub Grotto Right": "can_stun_deku",
        "LLR Deku Scrub Grotto Center": "can_stun_deku",
        "LLR Grotto Beehive": "can_break_upper_beehive"
    },
    "exits": {
        "Lon Lon Ranch": "True"
    }
},