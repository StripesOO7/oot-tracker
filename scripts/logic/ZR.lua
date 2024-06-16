{
    "region_name": "ZR Front",
    "scene": "Zora River",
    "hint": "ZORA_RIVER",
    "time_passes": true,
    "locations": {
        "ZR GS Tree": "is_child and can_child_attack and can_bonk"
    },
    "exits": {
        "Zora River": "is_adult or has_explosives",
        "Hyrule Field": "True"
    }
},
{
    "region_name": "Zora River",
    "scene": "Zora River",
    "hint": "ZORA_RIVER",
    "time_passes": true,
    "locations": {
        "ZR Magic Bean Salesman": "is_child",
        "ZR Frogs Ocarina Game": "
            is_child and Ocarina and Zeldas_Lullaby and Eponas_Song and
            Sarias_Song and Suns_Song and Song_of_Time and Song_of_Storms",
        "ZR Frogs Zeldas Lullaby": "is_child and can_play(Zeldas_Lullaby)",
        "ZR Frogs Eponas Song": "is_child and can_play(Eponas_Song)",
        "ZR Frogs Sarias Song": "is_child and can_play(Sarias_Song)",
        "ZR Frogs Suns Song": "is_child and can_play(Suns_Song)",
        "ZR Frogs Song of Time": "is_child and can_play(Song_of_Time)",
        "ZR Frogs in the Rain": "is_child and can_play(Song_of_Storms)",
        "ZR Near Open Grotto Freestanding PoH": "
            is_child or here(can_plant_bean) or Hover_Boots or logic_zora_river_lower",
        "ZR Near Domain Freestanding PoH": "is_child or Hover_Boots or logic_zora_river_upper",
        "ZR Waterfall Red Rupee 1": "is_adult and (Iron_Boots or logic_zora_river_rupees)",
        "ZR Waterfall Red Rupee 2": "is_adult and (Iron_Boots or logic_zora_river_rupees)",
        "ZR Waterfall Red Rupee 3": "is_adult and (Iron_Boots or logic_zora_river_rupees)",
        "ZR Waterfall Red Rupee 4": "is_adult and (Iron_Boots or logic_zora_river_rupees)",
        "ZR GS Ladder": "is_child and at_night and can_child_attack",
        "ZR GS Near Raised Grottos": "can_use(Hookshot) and at_night",
        "ZR GS Above Bridge": "can_use(Hookshot) and at_night",
        "ZR Near Grottos Gossip Stone": "True",
        "ZR Near Domain Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Bean Plant Fairy": "is_child and can_plant_bean and can_play(Song_of_Storms) and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Shrub": "
            (is_child or here(can_plant_bean) or Hover_Boots or logic_zora_river_lower) and
            can_cut_shrubs and has_bottle"
    },
    "exits": {
        "ZR Front": "True",
        "ZR Open Grotto": "True",
        "ZR Fairy Grotto": "here(can_blast_or_smash)",
        "LW Underwater Entrance": "can_dive or can_use(Iron_Boots)",
        "ZR Storms Grotto": "can_open_storm_grotto",
        "ZR Behind Waterfall": "
            can_play(Zeldas_Lullaby) or
            (can_use(Hover_Boots) and logic_zora_with_hovers) or
            (is_child and logic_zora_with_cucco)"
    }
},
{
    "region_name": "ZR Behind Waterfall",
    "scene": "Zora River",
    "hint": "ZORA_RIVER",
    "exits": {
        "Zora River": "True",
        "Zoras Domain": "True"
    }
},
{
    "region_name": "ZR Top of Waterfall",
    "scene": "Zora River",
    "hint": "ZORA_RIVER",
    "exits": {
        "Zora River": "True"
    }
},
{
    "region_name": "ZR Open Grotto",
    "scene": "ZR Open Grotto",
    "locations": {
        "ZR Open Grotto Chest": "True",
        "ZR Open Grotto Beehive 1": "can_break_lower_beehive",
        "ZR Open Grotto Beehive 2": "can_break_lower_beehive",
        "ZR Open Grotto Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Shrub": "can_cut_shrubs and has_bottle",
        "Lone Fish": "has_bottle"
    },
    "exits": {
        "Zora River": "True"
    }
},
{
    "region_name": "ZR Fairy Grotto",
    "scene": "ZR Fairy Grotto",
    "locations": {
        "Free Fairies": "has_bottle"
    },
    "exits": {
        "Zora River": "True"
    }
},
{
    "region_name": "ZR Storms Grotto",
    "scene": "ZR Storms Grotto",
    "locations": {
        "ZR Deku Scrub Grotto Rear": "can_stun_deku",
        "ZR Deku Scrub Grotto Front": "can_stun_deku",
        "ZR Storms Grotto Beehive": "can_break_upper_beehive"
    },
    "exits": {
        "Zora River": "True"
    }
},