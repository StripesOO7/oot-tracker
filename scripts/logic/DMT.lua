{
    "region_name": "Death Mountain",
    "scene": "Death Mountain",
    "hint": "DEATH_MOUNTAIN_TRAIL",
    "time_passes": true,
    "locations": {
        "DMT Chest": "
            can_blast_or_smash or 
            (logic_dmt_bombable and is_child and Progressive_Strength_Upgrade)",
        "DMT Freestanding PoH": "
            can_take_damage or can_use(Hover_Boots) or
            (is_adult and here(can_plant_bean and (plant_beans or has_explosives or Progressive_Strength_Upgrade)))",
        "DMT Rock Red Rupee": "is_child and here(can_blast_or_smash)",
        "DMT Rock Blue Rupee": "is_child and has_explosives",
        "DMT GS Bean Patch": "
            can_plant_bugs and can_child_attack and
            (has_explosives or Progressive_Strength_Upgrade or (logic_dmt_soil_gs and can_use(Boomerang)))",
        "DMT GS Near Kak": "can_blast_or_smash",
        "DMT GS Above Dodongos Cavern": "
            is_adult and at_night and
            (Megaton_Hammer or
                (logic_trail_gs_lower_hookshot and Hookshot) or
                (logic_trail_gs_lower_hovers and Hover_Boots) or
                (logic_trail_gs_lower_bean and
                    here(can_plant_bean and (plant_beans or has_explosives or Progressive_Strength_Upgrade))))",
        "Bean Plant Fairy": "
            is_child and can_plant_bean and can_play(Song_of_Storms) and has_bottle and
            (has_explosives or Progressive_Strength_Upgrade)"
    },
    "exits": {
        "Kak Behind Gate": "True",
        "Goron City": "True",
        "Death Mountain Summit": "
            here(can_blast_or_smash) or
            (is_adult and here(can_plant_bean and (plant_beans or Progressive_Strength_Upgrade))) or
            (logic_dmt_climb_hovers and can_use(Hover_Boots))",
        "Dodongos Cavern Beginning": "
            has_explosives or Progressive_Strength_Upgrade or is_adult",
        "DMT Storms Grotto": "can_open_storm_grotto"
    }
},
{
    "region_name": "Death Mountain Summit",
    "scene": "Death Mountain",
    "hint": "DEATH_MOUNTAIN_TRAIL",
    "time_passes": true,
    "events": {
        "Prescription Access": "is_adult and ('Broken Sword Access' or Broken_Sword)"
    },
    "locations": {
        "DMT Biggoron": "
            is_adult and
            (Claim_Check or
                (guarantee_trade_path and
                ('Eyedrops Access' or (Eyedrops and disable_trade_revert))))",
        "DMT GS Falling Rocks Path": "
            is_adult and (Megaton_Hammer or logic_trail_gs_upper) and at_night",
        "DMT Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Bug Rock": "is_child and has_bottle"
    },
    "exits": {
        "Death Mountain": "True",
        "DMC Upper Local": "True",
        "DMT Owl Flight": "is_child",
        "DMT Cow Grotto": "here(can_blast_or_smash)",
        "DMT Great Fairy Fountain": "here(can_blast_or_smash)"
    }
},
{
    "region_name": "DMT Owl Flight",
    "scene": "Death Mountain",
    "hint": "DEATH_MOUNTAIN_TRAIL",
    "exits": {
        "Kak Impas Rooftop": "True"
    }
},
{
    "region_name": "DMT Great Fairy Fountain",
    "scene": "DMT Great Fairy Fountain",
    "locations": {
        "DMT Great Fairy Reward": "can_play(Zeldas_Lullaby)"
    },
    "exits": {
        "Death Mountain Summit": "True"
    }
},
{
    "region_name": "DMT Cow Grotto",
    "scene": "DMT Cow Grotto",
    "locations": {
        "DMT Cow Grotto Cow": "can_play(Eponas_Song)",
        "DMT Cow Grotto Green Rupee 1": "True",
        "DMT Cow Grotto Green Rupee 2": "True",
        "DMT Cow Grotto Green Rupee 3": "True",
        "DMT Cow Grotto Green Rupee 4": "True",
        "DMT Cow Grotto Green Rupee 5": "True",
        "DMT Cow Grotto Green Rupee 6": "True",
        "DMT Cow Grotto Red Rupee": "True",
        "DMT Cow Grotto Recovery Heart 1": "True",
        "DMT Cow Grotto Recovery Heart 2": "True",
        "DMT Cow Grotto Recovery Heart 3": "True",
        "DMT Cow Grotto Recovery Heart 4": "True",
        "DMT Cow Grotto Beehive": "can_break_lower_beehive"
    },
    "exits": {
        "Death Mountain Summit": "True"
    }
},
{
    "region_name": "DMT Storms Grotto",
    "scene": "DMT Storms Grotto",
    "locations": {
        "DMT Storms Grotto Chest": "True",
        "DMT Storms Grotto Beehive 1": "can_break_lower_beehive",
        "DMT Storms Grotto Beehive 2": "can_break_lower_beehive",
        "DMT Storms Grotto Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Shrub": "can_cut_shrubs and has_bottle",
        "Lone Fish": "has_bottle"
    },
    "exits": {
        "Death Mountain": "True"
    }
},