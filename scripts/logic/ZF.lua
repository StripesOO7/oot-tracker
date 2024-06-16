{
    "region_name": "Zoras Fountain",
    "scene": "Zoras Fountain",
    "hint": "ZORAS_FOUNTAIN",
    "locations": {
        "ZF Iceberg Freestanding PoH": "is_adult",
        "ZF Near Jabu Pot 1": "is_child",
        "ZF Near Jabu Pot 2": "is_child",
        "ZF Near Jabu Pot 3": "is_child",
        "ZF Near Jabu Pot 4": "is_child",
        "ZF GS Tree": "is_child and can_bonk",
        "ZF GS Above the Log": "can_use(Boomerang) and at_night",
        "ZF Fairy Gossip Stone": "True",
        "ZF Jabu Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy_without_suns and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and at_day and has_bottle"
    },
    "exits": {
        "ZD Behind King Zora": "True",
        "Jabu Jabus Belly Beginning": "is_child and Fish",
        "ZF Ice Ledge": "is_adult",
        "ZF Great Fairy Fountain": "has_explosives",
        "ZF Underwater": "is_adult and Iron_Boots and (logic_fewer_tunic_requirements or Zora_Tunic)",
        "ZF Hidden Cave": "can_use(Silver_Gauntlets) and can_blast_or_smash"
    }
},
{
    "region_name": "ZF Underwater",
    "scene": "Zoras Fountain",
    "hint": "ZORAS_FOUNTAIN",
    "locations": {
        "ZF Bottom Freestanding PoH": "True",
        "ZF Bottom Green Rupee 1": "True",
        "ZF Bottom Green Rupee 2": "True",
        "ZF Bottom Green Rupee 3": "True",
        "ZF Bottom Green Rupee 4": "True",
        "ZF Bottom Green Rupee 5": "True",
        "ZF Bottom Green Rupee 6": "True",
        "ZF Bottom Green Rupee 7": "True",
        "ZF Bottom Green Rupee 8": "True",
        "ZF Bottom Green Rupee 9": "True",
        "ZF Bottom Green Rupee 10": "True",
        "ZF Bottom Green Rupee 11": "True",
        "ZF Bottom Green Rupee 12": "True",
        "ZF Bottom Green Rupee 13": "True",
        "ZF Bottom Green Rupee 14": "True",
        "ZF Bottom Green Rupee 15": "True",
        "ZF Bottom Green Rupee 16": "True",
        "ZF Bottom Green Rupee 17": "True",
        "ZF Bottom Green Rupee 18": "True"
    }
},
{
    "region_name": "ZF Hidden Cave",
    "scene": "Zoras Fountain",
    "hint": "ZORAS_FOUNTAIN",
    "locations": {
        "ZF Hidden Cave Pot 1": "True",
        "ZF Hidden Cave Pot 2": "True",
        "ZF Hidden Cave Pot 3": "True",
        "ZF GS Hidden Cave": "Hookshot and at_night"
    }
},
{
    "region_name": "ZF Ice Ledge",
    "scene": "Zoras Fountain",
    "hint": "ZORAS_FOUNTAIN",
    "exits": {
        "Zoras Fountain": "True",
        "Ice Cavern Beginning": "True"
    }
},
{
    "region_name": "ZF Great Fairy Fountain",
    "scene": "ZF Great Fairy Fountain",
    "locations": {
        "ZF Great Fairy Reward": "can_play(Zeldas_Lullaby)"
    },
    "exits": {
        "Zoras Fountain": "True"
    }
},