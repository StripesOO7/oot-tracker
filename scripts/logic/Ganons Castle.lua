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