Child_Castle_Grounds = OOTLocation.new("Child_Castle_Grounds")

Adult_Castle_Grounds = OOTLocation.new("Adult_Castle_Grounds")













{
    "region_name": "Castle Grounds",
    "scene": "Castle Grounds",
    "hint": "CASTLE_GROUNDS",
    "exits": {
        "Market": "is_child or at_dampe_time",
        "Hyrule Castle Grounds": "is_child",
        "Ganons Castle Grounds": "is_adult"
    }
},
{
    "region_name": "Hyrule Castle Grounds",
    "scene": "Castle Grounds",
    "hint": "HYRULE_CASTLE",
    "time_passes": true,
    "locations": {
        "HC Malon Egg": "True",
        "HC GS Tree": "can_child_attack and can_bonk",
        "HC Malon Gossip Stone": "True",
        "HC Rock Wall Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Rock": "has_bottle"
    },
    "exits": {
        "Castle Grounds": "True",
        "HC Garden": "Weird_Egg",
        "HC Great Fairy Fountain": "has_explosives",
        "HC Storms Grotto": "can_open_storm_grotto"
    }
},
{
    "region_name": "HC Garden",
    "scene": "Castle Grounds",
    "hint": "HYRULE_CASTLE",
    "exits": {
        "HC Garden Locations": "True",
        "Hyrule Castle Grounds": "True"
    }
},
{
    # Directly reachable from Root in "Free Zelda"
    "region_name": "HC Garden Locations",
    "scene": "Castle Grounds",
    "hint": "HYRULE_CASTLE",
    "locations": {
        "HC Zeldas Letter": "True",
        "Song from Impa": "True"
    }
},
{
    "region_name": "HC Great Fairy Fountain",
    "scene": "HC Great Fairy Fountain",
    "locations": {
        "HC Great Fairy Reward": "can_play(Zeldas_Lullaby)"
    },
    "exits": {
        "Castle Grounds": "True"
    }
},
{
    "region_name": "Castle Grounds From Ganons Castle",
    "scene": "Castle Grounds",
    "hint": "OUTSIDE_GANONS_CASTLE",
    "exits": {
        # The rainbow bridge cutscene trigger doesn't extend to the castle entrance
        "Ganons Castle Grounds": "is_adult and bridge == 'open'"
        # No exit back into the castle because the entrance places Link in midair if the bridge isn't spawned
    }
},
{
    "region_name": "Ganons Castle Grounds",
    "scene": "Castle Grounds",
    "hint": "OUTSIDE_GANONS_CASTLE",
    "locations": {
        "OGC GS": "True"
    },
    "exits": {
        "Castle Grounds": "True",
        "OGC Great Fairy Fountain": "can_use(Golden_Gauntlets) and at_dampe_time",
        "Ganons Castle Lobby": "can_build_rainbow_bridge and at_dampe_time"
    }
},
{
    "region_name": "OGC Great Fairy Fountain",
    "scene": "OGC Great Fairy Fountain",
    "locations": {
        "OGC Great Fairy Reward": "can_play(Zeldas_Lullaby)"
    },
    "exits": {
        "Castle Grounds": "True"
    }
},
{
    "region_name": "HC Storms Grotto",
    "scene": "HC Storms Grotto",
    "locations": {
        "HC GS Storms Grotto": "
            (can_blast_or_smash or (is_child and logic_castle_storms_gs)) and
            (can_use(Boomerang) or can_use(Hookshot))",
        "HC Storms Grotto Pot 1": "can_blast_or_smash",
        "HC Storms Grotto Pot 2": "can_blast_or_smash",
        "HC Storms Grotto Pot 3": "can_blast_or_smash",
        "HC Storms Grotto Pot 4": "can_blast_or_smash",
        "HC Storms Grotto Gossip Stone": "can_blast_or_smash",
        "Gossip Stone Fairy": "can_blast_or_smash and can_summon_gossip_fairy and has_bottle",
        "Wandering Bugs": "can_blast_or_smash and has_bottle",
        "Nut Pot": "can_blast_or_smash"
    },
    "exits": {
        "Castle Grounds": "True"
    }
},