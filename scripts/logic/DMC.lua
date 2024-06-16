{
    "region_name": "DMC Upper Nearby",
    "scene": "Death Mountain Crater",
    "hint": "DEATH_MOUNTAIN_CRATER",
    "exits": {
        "DMC Upper Local": "can_use(Goron_Tunic)",
        "Death Mountain Summit": "True",
        "DMC Upper Grotto": "here(can_blast_or_smash)"
    }
},
{
    "region_name": "DMC Upper Local",
    "scene": "Death Mountain Crater",
    "hint": "DEATH_MOUNTAIN_CRATER",
    "locations": {
        "DMC Wall Freestanding PoH": "True",
        "DMC GS Crate": "is_child and can_child_attack and can_break_heated_crate",
        "DMC Gossip Stone": "has_explosives",
        "Gossip Stone Fairy": "
            has_explosives and can_summon_gossip_fairy_without_suns and has_bottle"
    },
    "exits": {
        "DMC Upper Nearby": "True",
        "DMC Ladder Area Nearby": "True",
        "DMC Pierre Platform": "
            (damage_multiplier != 'ohko' and damage_multiplier != 'quadruple') or
            (Fairy and (can_use(Goron_Tunic) or damage_multiplier != 'ohko')) or can_use(Nayrus_Love)",
        "DMC Central Nearby": "
            can_use(Goron_Tunic) and can_use(Longshot) and
            ((damage_multiplier != 'ohko' and damage_multiplier != 'quadruple') or can_use(Nayrus_Love))"
    }
},
{
    "region_name": "DMC Pierre Platform",
    "font_color": "Red",
    "scene": "Death Mountain Crater",
    "hint": "DEATH_MOUNTAIN_CRATER",
    "locations": {
        "DMC Adult Green Rupee 1": "is_adult",
        "DMC Adult Green Rupee 2": "is_adult",
        "DMC Adult Green Rupee 3": "is_adult",
        "DMC Adult Green Rupee 4": "is_adult",
        "DMC Adult Green Rupee 5": "is_adult",
        "DMC Adult Green Rupee 6": "is_adult",
        "DMC Adult Red Rupee": "is_adult"
    }
},
{
    "region_name": "DMC Ladder Area Nearby",
    "scene": "Death Mountain Crater",
    "hint": "DEATH_MOUNTAIN_CRATER",
    "locations": {
        "DMC Deku Scrub": "is_child and can_stun_deku"
    },
    "exits": {
        "DMC Upper Nearby": "is_adult",
        "DMC Lower Nearby": "
            is_adult and
            (Hover_Boots or at('DMC Lower Nearby', can_use(Megaton_Hammer)) or
                ((logic_crater_boulder_jumpslash or logic_crater_boulder_skip) and Megaton_Hammer) or
                (logic_crater_boulder_skip and Goron_Tunic))"
    }
},
{
    "region_name": "DMC Lower Nearby",
    "scene": "Death Mountain Crater",
    "hint": "DEATH_MOUNTAIN_CRATER",
    "locations": {
        "DMC Near GC Pot 1": "is_adult",
        "DMC Near GC Pot 2": "is_adult",
        "DMC Near GC Pot 3": "is_adult",
        "DMC Near GC Pot 4": "is_adult"
    },
    "exits": {
        "DMC Lower Local": "can_use(Goron_Tunic)",
        "GC Darunias Chamber": "True",
        "DMC Great Fairy Fountain": "can_use(Megaton_Hammer)",
        "DMC Hammer Grotto": "can_use(Megaton_Hammer)"
    }
},
{
    "region_name": "DMC Lower Local",
    "scene": "Death Mountain Crater",
    "hint": "DEATH_MOUNTAIN_CRATER",
    "exits": {
        "DMC Lower Nearby": "True",
        "DMC Ladder Area Nearby": "True",
        "DMC Central Nearby": "
            is_adult and
            (Hover_Boots or Hookshot or
                (logic_crater_bolero_jump and Goron_Tunic and can_shield))",
        "DMC Fire Temple Entrance": "
            is_adult and (Hover_Boots or Hookshot) and
            (logic_fewer_tunic_requirements or Goron_Tunic)"
    }
},
{
    "region_name": "DMC Central Nearby",
    "scene": "Death Mountain Crater",
    "hint": "DEATH_MOUNTAIN_CRATER",
    "locations": {
        "DMC Volcano Freestanding PoH": "
            is_adult and
            (here(can_plant_bean) or (logic_crater_bean_poh_with_hovers and Hover_Boots))",
        "Sheik in Crater": "is_adult"
    },
    "exits": {
        "DMC Central Local": "can_use(Goron_Tunic)"
    }
},
{
    "region_name": "DMC Central Local",
    "scene": "Death Mountain Crater",
    "hint": "DEATH_MOUNTAIN_CRATER",
    "locations": {
        "DMC GS Bean Patch": "can_plant_bugs and can_child_attack",
        "Bean Plant Fairy": "is_child and can_plant_bean and can_play(Song_of_Storms) and has_bottle",
        "DMC Child Red Rupee 1": "is_child",
        "DMC Child Red Rupee 2": "is_child",
        "DMC Child Blue Rupee 1": "is_child",
        "DMC Child Blue Rupee 2": "is_child",
        "DMC Child Blue Rupee 3": "is_child",
        "DMC Child Blue Rupee 4": "is_child",
        "DMC Child Blue Rupee 5": "is_child",
        "DMC Child Blue Rupee 6": "is_child"
    },
    "exits": {
        "DMC Central Nearby": "True",
        "DMC Lower Nearby": "
            is_adult and (Hover_Boots or Hookshot or here(can_plant_bean))",
        "DMC Upper Nearby": "is_adult and here(can_plant_bean)",
        "DMC Fire Temple Entrance": "
            (is_child and shuffle_dungeon_entrances) or
            (is_adult and (logic_fewer_tunic_requirements or Goron_Tunic))",
        "DMC Pierre Platform": "can_use(Distant_Scarecrow)"
    }
},
{
    "region_name": "DMC Fire Temple Entrance",
    "scene": "Death Mountain Crater",
    "hint": "DEATH_MOUNTAIN_CRATER",
    "exits": {
        "Fire Temple Lower": "True",
        "DMC Central Nearby": "can_use(Goron_Tunic)"
    }
},
{
    "region_name": "DMC Great Fairy Fountain",
    "scene": "DMC Great Fairy Fountain",
    "locations": {
        "DMC Great Fairy Reward": "can_play(Zeldas_Lullaby)"
    },
    "exits": {
        "DMC Lower Local": "True"
    }
},
{
    "region_name": "DMC Upper Grotto",
    "scene": "DMC Upper Grotto",
    "locations": {
        "DMC Upper Grotto Chest": "True",
        "DMC Upper Grotto Beehive 1": "can_break_lower_beehive",
        "DMC Upper Grotto Beehive 2": "can_break_lower_beehive",
        "DMC Upper Grotto Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Shrub": "can_cut_shrubs and has_bottle",
        "Lone Fish": "has_bottle"
    },
    "exits": {
        "DMC Upper Local": "True"
    }
},
{
    "region_name": "DMC Hammer Grotto",
    "scene": "DMC Hammer Grotto",
    "locations": {
        "DMC Deku Scrub Grotto Left": "can_stun_deku",
        "DMC Deku Scrub Grotto Right": "can_stun_deku",
        "DMC Deku Scrub Grotto Center": "can_stun_deku",
        "DMC Hammer Grotto Beehive": "can_break_upper_beehive"
    },
    "exits": {
        "DMC Lower Local": "True"
    }
},