Child_DMC_Upper_Nearby = OOTLocation.new("Child_DMC_Upper_Nearby")
Child_DMC_Upper_Local = OOTLocation.new("Child_DMC_Upper_Local")
Child_DMC_Pierre_Platform = OOTLocation.new("Child_DMC_Pierre_Platform")
Child_DMC_Ladder_Area_Nearby = OOTLocation.new("Child_DMC_Ladder_Area_Nearby")
Child_DMC_Lower_Nearby = OOTLocation.new("Child_DMC_Lower_Nearby")
Child_DMC_Lower_Local = OOTLocation.new("Child_DMC_Lower_Local")
Child_DMC_Central_Nearby = OOTLocation.new("Child_DMC_Central_Nearby")
Child_DMC_Central_Local = OOTLocation.new("Child_DMC_Central_Local")
Child_DMC_Fire_Temple_Entrance = OOTLocation.new("Child_DMC_Fire_Temple_Entrance")
Child_DMC_Great_Fairy_Fountain = OOTLocation.new("Child_DMC_Great_Fairy_Fountain")
Child_DMC_Upper_Grotto = OOTLocation.new("Child_DMC_Upper_Grotto")
Child_DMC_Hammer_Grotto = OOTLocation.new("Child_DMC_Hammer_Grotto")

Adult_DMC_Upper_Nearby = OOTLocation.new("Adult_DMC_Upper_Nearby")
Adult_DMC_Upper_Local = OOTLocation.new("Adult_DMC_Upper_Local")
Adult_DMC_Pierre_Platform = OOTLocation.new("Adult_DMC_Pierre_Platform")
Adult_DMC_Ladder_Area_Nearby = OOTLocation.new("Adult_DMC_Ladder_Area_Nearby")
Adult_DMC_Lower_Nearby = OOTLocation.new("Adult_DMC_Lower_Nearby")
Adult_DMC_Lower_Local = OOTLocation.new("Adult_DMC_Lower_Local")
Adult_DMC_Central_Nearby = OOTLocation.new("Adult_DMC_Central_Nearby")
Adult_DMC_Central_Local = OOTLocation.new("Adult_DMC_Central_Local")
Adult_DMC_Fire_Temple_Entrance = OOTLocation.new("Adult_DMC_Fire_Temple_Entrance")
Adult_DMC_Great_Fairy_Fountain = OOTLocation.new("Adult_DMC_Great_Fairy_Fountain")
Adult_DMC_Upper_Grotto = OOTLocation.new("Adult_DMC_Upper_Grotto")
Adult_DMC_Hammer_Grotto = OOTLocation.new("Adult_DMC_Hammer_Grotto")


Child_DMC_Upper_Nearby:connect_one_way_entrance("Child DMC Upper Local", Child_DMC_Upper_Local, function() return can_use(Goron_Tunic) end)
Child_DMC_Upper_Nearby:connect_one_way_entrance("Child Death Mountain Summit", Child_Death_Mountain_Summit)
Child_DMC_Upper_Nearby:connect_one_way_entrance("Child DMC Upper Grotto", Child_DMC_Upper_Grotto, function() return here(can_blast_or_smash) end)

Adult_DMC_Upper_Nearby:connect_one_way_entrance("Adult DMC Upper Local", Adult_DMC_Upper_Local, function() return can_use(Goron_Tunic) end)
Adult_DMC_Upper_Nearby:connect_one_way_entrance("Adult Death Mountain Summit", Adult_Death_Mountain_Summit)
Adult_DMC_Upper_Nearby:connect_one_way_entrance("Adult DMC Upper Grotto", Adult_DMC_Upper_Grotto, function() return here(can_blast_or_smash) end)

Child_DMC_Upper_Local:connect_one_way("Child DMC Wall Freestanding PoH")
Child_DMC_Upper_Local:connect_one_way("Child DMC GS Crate", function()
    return All(
        can_child_attack,
        can_break_heated_crate
    )
end)
Child_DMC_Upper_Local:connect_one_way("Child DMC Gossip Stone", function() return has_explosives end)

Adult_DMC_Upper_Local:connect_one_way("Adult DMC GS Crate", function()
    return All(
        can_child_attack,
        can_break_heated_crate
    )
end)
Adult_DMC_Upper_Local:connect_one_way("Adult DMC Gossip Stone", function() return has_explosives end)


Child_DMC_Upper_Local:connect_one_way_entrance("Child DMC Upper Nearby", Child_DMC_Upper_Nearby)
Child_DMC_Upper_Local:connect_one_way_entrance("Child DMC Ladder Area Nearby", Child_DMC_Ladder_Area_Nearby)
Child_DMC_Upper_Local:connect_one_way_entrance("Child DMC Pierre Platform", Child_DMC_Pierre_Platform, function()
    return Any(
        All(
            damage_multiplier != 'ohko',
            damage_multiplier != 'quadruple'
        ),
        All(
            Fairy,
            Any(
                can_use(Goron_Tunic),
                damage_multiplier != 'ohko'
            )
        ),
        can_use(Nayrus_Love)
    ) 
end)
Child_DMC_Upper_Local:connect_one_way_entrance("Child DMC Central Nearby", Child_DMC_Central_Nearby, function()
    return All(
        can_use(Goron_Tunic),
        can_use(Longshot),
        Any(
            All(
                damage_multiplier != 'ohko',
                damage_multiplier != 'quadruple'
            ),
            can_use(Nayrus_Love)
        )
    )
end)

Adult_DMC_Upper_Local:connect_one_way_entrance("Adult DMC Upper Nearby", Adult_DMC_Upper_Nearby)
Adult_DMC_Upper_Local:connect_one_way_entrance("Adult DMC Ladder Area Nearby", Adult_DMC_Ladder_Area_Nearby)
Adult_DMC_Upper_Local:connect_one_way_entrance("Adult DMC Pierre Platform", Adult_DMC_Pierre_Platform, function()
    return Any(
        All(
            damage_multiplier != 'ohko',
            damage_multiplier != 'quadruple'
        ),
        All(
            Fairy,
            Any(
                can_use(Goron_Tunic),
                damage_multiplier != 'ohko'
            )
        ),
        can_use(Nayrus_Love)
    ) 
end)
Adult_DMC_Upper_Local:connect_one_way_entrance("Adult DMC Central Nearby", Adult_DMC_Central_Nearby, function()
    return All(
        can_use(Goron_Tunic),
        can_use(Longshot),
        Any(
            All(
                damage_multiplier != 'ohko',
                damage_multiplier != 'quadruple'
            ),
            can_use(Nayrus_Love)
        )
    )
end)


Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Green Rupee 1")
Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Green Rupee 2")
Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Green Rupee 3")
Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Green Rupee 4")
Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Green Rupee 5")
Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Green Rupee 6")
Child_DMC_Pierre_Platform:connect_one_way("Child DMC Adult Red Rupee")

Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Green Rupee 1")
Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Green Rupee 2")
Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Green Rupee 3")
Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Green Rupee 4")
Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Green Rupee 5")
Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Green Rupee 6")
Adult_DMC_Pierre_Platform:connect_one_way("Adult DMC Adult Red Rupee")


Child_DMC_Ladder_Area_Nearby:connect_one_way("Child DMC Deku Scrub", function() return can_stun_deku end)
Adult_DMC_Ladder_Area_Nearby:connect_one_way("adult DMC Deku Scrub")

Child_DMC_Ladder_Area_Nearby:connect_one_way_entrance("Child DMC Upper Nearby", Child_DMC_Upper_Nearby)
Child_DMC_Ladder_Area_Nearby:connect_one_way_entrance("Child DMC Lower Nearby", Child_DMC_Lower_Nearby)

Adult_DMC_Ladder_Area_Nearby:connect_one_way_entrance("Adult DMC Upper Nearby", Adult_DMC_Upper_Nearby)
Adult_DMC_Ladder_Area_Nearby:connect_one_way_entrance("Adult DMC Lower Nearby", Adult_DMC_Lower_Nearby, function()
    return Any(
        All(
            Hover_Boots,
            at('DMC Lower Nearby', can_use(Megaton_Hammer))
        ),
        All(
            Any(
                logic_crater_boulder_jumpslash,
                logic_crater_boulder_skip
            ),
            Megaton_Hammer
        ),
        All(
            logic_crater_boulder_skip,
            Goron_Tunic
        )
    )
end)


Child_DMC_Lower_Nearby:connect_one_way("Child DMC Near GC Pot 1")
Child_DMC_Lower_Nearby:connect_one_way("Child DMC Near GC Pot 2")
Child_DMC_Lower_Nearby:connect_one_way("Child DMC Near GC Pot 3")
Child_DMC_Lower_Nearby:connect_one_way("Child DMC Near GC Pot 4")

Adult_DMC_Lower_Nearby:connect_one_way("Adult DMC Near GC Pot 1")
Adult_DMC_Lower_Nearby:connect_one_way("Adult DMC Near GC Pot 2")
Adult_DMC_Lower_Nearby:connect_one_way("Adult DMC Near GC Pot 3")
Adult_DMC_Lower_Nearby:connect_one_way("Adult DMC Near GC Pot 4")


Child_DMC_Lower_Nearby:connect_one_way_entrance("Child DMC Lower Local", Child_DMC_Lower_Local, function() return can_use(Goron_Tunic) end)
Child_DMC_Lower_Nearby:connect_one_way_entrance("Child GC Darunias Chamber", Child_GC_Darunias_Chamber)
Child_DMC_Lower_Nearby:connect_one_way_entrance("Child DMC Great Fairy Fountain", Child_DMC_Great_Fairy_Fountain, function() return can_use(Megaton_Hammer) end)
Child_DMC_Lower_Nearby:connect_one_way_entrance("Child DMC Hammer Grotto", Child_DMC_Hammer_Grotto, function() return can_use(Megaton_Hammer) end)

Adult_DMC_Lower_Nearby:connect_one_way_entrance("Adult DMC Lower Local", Adult_DMC_Lower_Local, function() return can_use(Goron_Tunic) end)
Adult_DMC_Lower_Nearby:connect_one_way_entrance("Adult GC Darunias Chamber", Adult_GC_Darunias_Chamber)
Adult_DMC_Lower_Nearby:connect_one_way_entrance("Adult DMC Great Fairy Fountain", Adult_DMC_Great_Fairy_Fountain, function() return can_use(Megaton_Hammer) end)
Adult_DMC_Lower_Nearby:connect_one_way_entrance("Adult DMC Hammer Grotto", Adult_DMC_Hammer_Grotto, function() return can_use(Megaton_Hammer) end)


-- Child_DMC_Lower_Local:connect_one_way()
-- Adult_DMC_Lower_Local:connect_one_way()

Child_DMC_Lower_Local:connect_one_way_entrance("Child DMC Lower Nearby", Child_DMC_Lower_Nearby)
Child_DMC_Lower_Local:connect_one_way_entrance("Child DMC Ladder Area Nearby", Child_DMC_Ladder_Area_Nearby)
Child_DMC_Lower_Local:connect_one_way_entrance("Child DMC Central Nearby", Child_DMC_Central_Nearby)
Child_DMC_Lower_Local:connect_one_way_entrance("Child DMC Fire Temple Entrance", Child_DMC_Fire_Temple_Entrance)

Adult_DMC_Lower_Local:connect_one_way_entrance("Adult DMC Lower Nearby", Adult_DMC_Lower_Nearby)
Adult_DMC_Lower_Local:connect_one_way_entrance("Adult DMC Ladder Area Nearby", Adult_DMC_Ladder_Area_Nearby)
Adult_DMC_Lower_Local:connect_one_way_entrance("Adult DMC Central Nearby", Adult_DMC_Central_Nearby, function()
    return Any(
        Hover_Boots,
        Hookshot,
        All(
            logic_crater_bolero_jump,
            Goron_Tunic,
            can_shield
        )
    )
end)
Adult_DMC_Lower_Local:connect_one_way_entrance("Adult DMC Fire Temple Entrance", Adult_DMC_Fire_Temple_Entrance, function()
    return All(
        Any(
            Hover_Boots,
            Hookshot
        ),
        Any(
            logic_fewer_tunic_requirements,
            Goron_Tunic
        )
    )
end)


Child_DMC_Central_Nearby:connect_one_way("Child DMC Volcano Freestanding PoH")
Child_DMC_Central_Nearby:connect_one_way("Child Sheik in Crater")

Adult_DMC_Central_Nearby:connect_one_way("Adult DMC Volcano Freestanding PoH")
Adult_DMC_Central_Nearby:connect_one_way("Adult Sheik in Crater", function()
    return Any(
        here(can_plant_bean),
        All(
            logic_crater_bean_poh_with_hovers,
            Hover_Boots
        )
    )
end)


Child_DMC_Central_Nearby:connect_one_way_entrance("Child DMC Central Local", Child_DMC_Central_Local)
Adult_DMC_Central_Nearby:connect_one_way_entrance("Adult DMC Central Local", Adult_DMC_Central_Local, function() return can_use(Goron_Tunic) end)

Child_DMC_Central_Local:connect_one_way("Child DMC GS Bean Patch", function ()
    return All(
        can_plant_bugs,
        can_child_attack
    ) 
end)
Child_DMC_Central_Local:connect_one_way("Child Bean Plant Fairy", function ()
    return All(
        can_plant_bean,
        can_play(Song_of_Storms),
        has_bottle
    )
end)
Child_DMC_Central_Local:connect_one_way("Child DMC Child Red Rupee 1")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Red Rupee 2")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Blue Rupee 1")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Blue Rupee 2")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Blue Rupee 3")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Blue Rupee 4")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Blue Rupee 5")
Child_DMC_Central_Local:connect_one_way("Child DMC Child Blue Rupee 6")

Adult_DMC_Central_Local:connect_one_way("Adult DMC GS Bean Patch")
Adult_DMC_Central_Local:connect_one_way("Adult Bean Plant Fairy")
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Red Rupee 1")
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Red Rupee 2")
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Blue Rupee 1")
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Blue Rupee 2")
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Blue Rupee 3")
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Blue Rupee 4")
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Blue Rupee 5")
Adult_DMC_Central_Local:connect_one_way("Adult DMC Child Blue Rupee 6")

Child_DMC_Central_Local:connect_one_way_entrance("Child DMC Central Nearby", Child_DMC_Central_Nearby)
Child_DMC_Central_Local:connect_one_way_entrance("Child DMC Lower Nearby", Child_DMC_Lower_Nearby, function()
    return Any(
        Hover_Boots,
        Hookshot,
        here(can_plant_bean)
    )
end)
Child_DMC_Central_Local:connect_one_way_entrance("Child DMC Upper Nearby", Child_DMC_Upper_Nearby, function() return here(can_plant_bean) end)
Child_DMC_Central_Local:connect_one_way_entrance("Child DMC Fire Temple Entrance", Child_DMC_Fire_Temple_Entrance, function()
    return Any(
        logic_fewer_tunic_requirements,
        Goron_Tunic
    )
end)
Child_DMC_Central_Local:connect_one_way_entrance("Child DMC Pierre Platform", Child_DMC_Pierre_Platform, function() return can_use(Distant_Scarecrow) end)

Adult_DMC_Central_Local:connect_one_way_entrance("Adult DMC Central Nearby", Adult_DMC_Central_Nearby)
Adult_DMC_Central_Local:connect_one_way_entrance("Adult DMC Lower Nearby", Adult_DMC_Lower_Nearby, function ()
    return Any(
        Hover_Boots,
        Hookshot,
        here(can_plant_bean)
    )
end)
Adult_DMC_Central_Local:connect_one_way_entrance("Adult DMC Upper Nearby", Adult_DMC_Upper_Nearby, function () return here(can_plant_bean) end)
Adult_DMC_Central_Local:connect_one_way_entrance("Adult DMC Fire Temple Entrance", Adult_DMC_Fire_Temple_Entrance, function ()
    return Any(
        logic_fewer_tunic_requirements,
        Goron_Tunic
    )
end)
Adult_DMC_Central_Local:connect_one_way_entrance("Adult DMC Pierre Platform", Adult_DMC_Pierre_Platform, function () return can_use(Distant_Scarecrow) end)


-- Child_DMC_Fire_Temple_Entrance:connect_one_way()
-- Adult_DMC_Fire_Temple_Entrance:connect_one_way()

Child_DMC_Fire_Temple_Entrance:connect_one_way_entrance("Child Fire Temple Lower", Child_DMC_Fire_Temple_Entrance)
Child_DMC_Fire_Temple_Entrance:connect_one_way_entrance("Child DMC Central Nearby", Child_DMC_Central_Nearby, function() return can_use(Goron_Tunic) end)

Adult_DMC_Fire_Temple_Entrance:connect_one_way_entrance("Adult Fire Temple Lower", Adult_DMC_Fire_Temple_Entrance)
Adult_DMC_Fire_Temple_Entrance:connect_one_way_entrance("Adult DMC Central Nearby", Adult_DMC_Central_Nearby, function() return can_use(Goron_Tunic) end)


Child_DMC_Great_Fairy_Fountain:connect_one_way("Child DMC Great Fairy Reward", function() return can_play(Zeldas_Lullaby) end)
Adult_DMC_Great_Fairy_Fountain:connect_one_way("Adult DMC Great Fairy Reward", function() return can_play(Zeldas_Lullaby) end)

Child_DMC_Great_Fairy_Fountain:connect_one_way_entrance("Child DMC Lower Local", Child_DMC_Lower_Local)
Adult_DMC_Great_Fairy_Fountain:connect_one_way_entrance("Adult DMC Lower Local", Adult_DMC_Lower_Local)

Child_DMC_Upper_Grotto:connect_one_way("Child DMC Upper Grotto Chest")
Child_DMC_Upper_Grotto:connect_one_way("Child DMC Upper Grotto Beehive 1", function() return can_break_lower_beehive end)
Child_DMC_Upper_Grotto:connect_one_way("Child DMC Upper Grotto Beehive 2", function() return can_break_lower_beehive end)
Child_DMC_Upper_Grotto:connect_one_way("Child DMC Upper Grotto Gossip Stone")

Adult_DMC_Upper_Grotto:connect_one_way("Adult DMC Upper Grotto Chest")
Adult_DMC_Upper_Grotto:connect_one_way("Adult DMC Upper Grotto Beehive 1", function() return can_break_lower_beehive end)
Adult_DMC_Upper_Grotto:connect_one_way("Adult DMC Upper Grotto Beehive 2", function() return can_break_lower_beehive end)
Adult_DMC_Upper_Grotto:connect_one_way("Adult DMC Upper Grotto Gossip Stone")


Child_DMC_Upper_Grotto:connect_one_way_entrance("Child DMC Upper Local", Child_DMC_Upper_Local)
Adult_DMC_Upper_Grotto:connect_one_way_entrance("Adult DMC Upper Local", Adult_DMC_Upper_Local)

Child_DMC_Hammer_Grotto:connect_one_way("Child DMC Deku Scrub Grotto Left", function() return can_stun_deku end)
Child_DMC_Hammer_Grotto:connect_one_way("Child DMC Deku Scrub Grotto Right", function() return can_stun_deku end)
Child_DMC_Hammer_Grotto:connect_one_way("Child DMC Deku Scrub Grotto Center", function() return can_stun_deku end)
Child_DMC_Hammer_Grotto:connect_one_way("Child DMC Hammer Grotto Beehive", function() return can_break_upper_beehive end)

Adult_DMC_Hammer_Grotto:connect_one_way("Adult DMC Deku Scrub Grotto Left", function() return can_stun_deku end)
Adult_DMC_Hammer_Grotto:connect_one_way("Adult DMC Deku Scrub Grotto Right", function() return can_stun_deku end)
Adult_DMC_Hammer_Grotto:connect_one_way("Adult DMC Deku Scrub Grotto Center", function() return can_stun_deku end)
Adult_DMC_Hammer_Grotto:connect_one_way("Adult DMC Hammer Grotto Beehive", function() return can_break_upper_beehive end)


Child_DMC_Hammer_Grotto:connect_one_way_entrance("Child DMC Lower Local", Child_DMC_Lower_Local)
Adult_DMC_Hammer_Grotto:connect_one_way_entrance("Adult DMC Lower Local", Adult_DMC_Lower_Local)


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