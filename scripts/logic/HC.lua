-- Child_Castle_Grounds = OOTLocation.new("Child_Castle_Grounds")
-- Child_Hyrule_Castle_Grounds = OOTLocation.new("Child_Hyrule_Castle_Grounds")
-- Child_HC_Garden = OOTLocation.new("Child_HC_Garden")
-- Child_HC_Garden_Locations = OOTLocation.new("Child_HC_Garden_Locations")
-- Child_HC_Great_Fairy_Fountain = OOTLocation.new("Child_HC_Great_Fairy_Fountain")
-- Child_Castle_Grounds_From_Ganons_Castle = OOTLocation.new("Child_Castle_Grounds_From_Ganons_Castle")
-- Child_Ganons_Castle_Grounds = OOTLocation.new("Child_Ganons_Castle_Grounds")
-- Child_OGC_Great_Fairy_Fountain = OOTLocation.new("Child_OGC_Great_Fairy_Fountain")
-- Child_HC_Storms_Grotto = OOTLocation.new("Child_HC_Storms_Grotto")

-- Adult_Castle_Grounds = OOTLocation.new("Adult_Castle_Grounds")
-- Adult_Hyrule_Castle_Grounds = OOTLocation.new("Adult_Hyrule_Castle_Grounds")
-- Adult_HC_Garden = OOTLocation.new("Adult_HC_Garden")
-- Adult_HC_Garden_Locations = OOTLocation.new("Adult_HC_Garden_Locations")
-- Adult_HC_Great_Fairy_Fountain = OOTLocation.new("Adult_HC_Great_Fairy_Fountain")
-- Adult_Castle_Grounds_From_Ganons_Castle = OOTLocation.new("Adult_Castle_Grounds_From_Ganons_Castle")
-- Adult_Ganons_Castle_Grounds = OOTLocation.new("Adult_Ganons_Castle_Grounds")
-- Adult_OGC_Great_Fairy_Fountain = OOTLocation.new("Adult_OGC_Great_Fairy_Fountain")
-- Adult_HC_Storms_Grotto = OOTLocation.new("Adult_HC_Storms_Grotto")

-- Child_Castle_Grounds:connect_one_way()
-- Adult_Castle_Grounds:connect_one_way()

Child_Castle_Grounds:connect_one_way_entrance("Child Market", Child_Market)
Child_Castle_Grounds:connect_one_way_entrance("Child Hyrule Castle Grounds", Child_Hyrule_Castle_Grounds)
Child_Castle_Grounds:connect_one_way_entrance("Child Ganons Castle Grounds", Child_Ganons_Castle_Grounds)

Adult_Castle_Grounds:connect_one_way_entrance("Adult Market", Adult_Market)
Adult_Castle_Grounds:connect_one_way_entrance("Adult Hyrule Castle Grounds", Adult_Hyrule_Castle_Grounds)
Adult_Castle_Grounds:connect_one_way_entrance("Adult Ganons Castle Grounds", Adult_Ganons_Castle_Grounds)

Child_Hyrule_Castle_Grounds:connect_one_way("Child HC Malon Egg")
Child_Hyrule_Castle_Grounds:connect_one_way("Child HC GS Tree", function()
    return All(
        Can_child_attack,
        Can_bonk
    )
end)
Child_Hyrule_Castle_Grounds:connect_one_way("Child HC Malon Gossip Stone")
Child_Hyrule_Castle_Grounds:connect_one_way("Child HC Rock Wall Gossip Stone")

Adult_Hyrule_Castle_Grounds:connect_one_way("Adult HC Malon Egg")
Adult_Hyrule_Castle_Grounds:connect_one_way("Adult HC GS Tree", function()
    return All(
        Can_child_attack,
        Can_bonk
    )
end)
Adult_Hyrule_Castle_Grounds:connect_one_way("Adult HC Malon Gossip Stone")
Adult_Hyrule_Castle_Grounds:connect_one_way("Adult HC Rock Wall Gossip Stone")

Child_Hyrule_Castle_Grounds:connect_one_way_entrance("Child Castle Grounds", Child_Castle_Grounds)
Child_Hyrule_Castle_Grounds:connect_one_way_entrance("Child HC Garden", Child_HC_Garden, function() return Weird_Egg end)
Child_Hyrule_Castle_Grounds:connect_one_way_entrance("Child HC Great Fairy Fountain", Child_HC_Great_Fairy_Fountain, function() return Has_explosives end)
Child_Hyrule_Castle_Grounds:connect_one_way_entrance("Child HC Storms Grotto", Child_HC_Storms_Grotto, function() return can_open_storm_grotto end)

Adult_Hyrule_Castle_Grounds:connect_one_way_entrance("Adult Castle Grounds", Adult_Castle_Grounds)
Adult_Hyrule_Castle_Grounds:connect_one_way_entrance("Adult HC Garden", Adult_HC_Garden, function() return Weird_Egg end)
Adult_Hyrule_Castle_Grounds:connect_one_way_entrance("Adult HC Great Fairy Fountain", Adult_HC_Great_Fairy_Fountain, function() return Has_explosives end)
Adult_Hyrule_Castle_Grounds:connect_one_way_entrance("Adult HC Storms Grotto", Adult_HC_Storms_Grotto, function() return can_open_storm_grotto end)

-- Child_HC_Garden:connect_one_way()
-- Adult_HC_Garden:connect_one_way()

Child_HC_Garden:connect_one_way_entrance("Child HC Garden Locations", Child_HC_Garden_Locations)
Child_HC_Garden:connect_one_way_entrance("Child Hyrule Castle Grounds", Child_Hyrule_Castle_Grounds)

Adult_HC_Garden:connect_one_way_entrance("Adult HC Garden Locations", Adult_HC_Garden_Locations)
Adult_HC_Garden:connect_one_way_entrance("Adult Hyrule Castle Grounds", Adult_Hyrule_Castle_Grounds)

Child_HC_Garden_Locations:connect_one_way("Child HC Zeldas Letter")
Child_HC_Garden_Locations:connect_one_way("Child Song from Impa")

Adult_HC_Garden_Locations:connect_one_way("Adult HC Zeldas Letter")
Adult_HC_Garden_Locations:connect_one_way("Adult Song from Impa")


-- Child_HC_Garden_Locations:connect_one_way_entrance()
-- Adult_HC_Garden_Locations:connect_one_way_entrance()

Child_HC_Great_Fairy_Fountain:connect_one_way("Child HC Great Fairy Reward", function() return can_play(Zeldas_Lullaby) end)
Adult_HC_Great_Fairy_Fountain:connect_one_way("Adult HC Great Fairy Reward", function() return can_play(Zeldas_Lullaby) end)

Child_HC_Great_Fairy_Fountain:connect_one_way_entrance("Child Castle Grounds", Child_Castle_Grounds)
Adult_HC_Great_Fairy_Fountain:connect_one_way_entrance("Adult Castle Grounds", Adult_Castle_Grounds)

-- Child_Castle_Grounds_From_Ganons_Castle:connect_one_way()
-- Adult_Castle_Grounds_From_Ganons_Castle:connect_one_way()

Child_Castle_Grounds_From_Ganons_Castle:connect_one_way_entrance("Child Ganons Castle Grounds", Child_Ganons_Castle_Grounds)
Adult_Castle_Grounds_From_Ganons_Castle:connect_one_way_entrance("Adult Ganons Castle Grounds", Adult_Ganons_Castle_Grounds, function() return bridge == 'open' end)

Child_Ganons_Castle_Grounds:connect_one_way("Child OGC GS")
Adult_Ganons_Castle_Grounds:connect_one_way("Adult OGC GS")

Child_Ganons_Castle_Grounds:connect_one_way_entrance("Child Castle Grounds", Child_Castle_Grounds)
Child_Ganons_Castle_Grounds:connect_one_way_entrance("Child OGC Great Fairy Fountain", Child_OGC_Great_Fairy_Fountain, function() return can_use(Golden_Gauntlets) and at_dampe_time end)
Child_Ganons_Castle_Grounds:connect_one_way_entrance("Child Ganons Castle Lobby", Child_Ganons_Castle_Lobby, function() return can_build_rainbow_bridge and at_dampe_time end)

Adult_Ganons_Castle_Grounds:connect_one_way_entrance("Adult Castle Grounds", Adult_Castle_Grounds)
Adult_Ganons_Castle_Grounds:connect_one_way_entrance("Adult OGC Great Fairy Fountain", Adult_OGC_Great_Fairy_Fountain, function() return can_use(Golden_Gauntlets) and at_dampe_time end)
Adult_Ganons_Castle_Grounds:connect_one_way_entrance("Adult Ganons Castle Lobby", Adult_Ganons_Castle_Lobby, function() return can_build_rainbow_bridge and at_dampe_time end)


Child_OGC_Great_Fairy_Fountain:connect_one_way("Child OGC Great Fairy Reward", function() return can_play(Zeldas_Lullaby) end)
Adult_OGC_Great_Fairy_Fountain:connect_one_way("ADult OGC Great Fairy Reward", function() return can_play(Zeldas_Lullaby) end)

Child_OGC_Great_Fairy_Fountain:connect_one_way_entrance("Child Castle Grounds", Child_Castle_Grounds)
Adult_OGC_Great_Fairy_Fountain:connect_one_way_entrance("Adult Castle Grounds", Adult_Castle_Grounds)

Child_HC_Storms_Grotto:connect_one_way("Child HC GS Storms Grotto", function()
    return All(
        Any(
            Can_blast_or_smash,
            All(
                is_child,
                logic_castle_storms_gs)
        ),
        Any(
            can_use(Boomerang),
            can_use(Hookshot)
        )
    )
end)
Child_HC_Storms_Grotto:connect_one_way("Child HC Storms Grotto Pot 1", function() return Can_blast_or_smash end)
Child_HC_Storms_Grotto:connect_one_way("Child HC Storms Grotto Pot 2", function() return Can_blast_or_smash end)
Child_HC_Storms_Grotto:connect_one_way("Child HC Storms Grotto Pot 3", function() return Can_blast_or_smash end)
Child_HC_Storms_Grotto:connect_one_way("Child HC Storms Grotto Pot 4", function() return Can_blast_or_smash end)
Child_HC_Storms_Grotto:connect_one_way("Child HC Storms Grotto Gossip Stone", function() return Can_blast_or_smash end)

Adult_HC_Storms_Grotto:connect_one_way("Adult HC GS Storms Grotto", function() 
    return All(
        Any(
            Can_blast_or_smash,
            All(
                is_child,
                logic_castle_storms_gs)
        ),
        Any(
            can_use(Boomerang),
            can_use(Hookshot)
        )
    )
end)
Adult_HC_Storms_Grotto:connect_one_way("Adult HC Storms Grotto Pot 1", function() return Can_blast_or_smash end)
Adult_HC_Storms_Grotto:connect_one_way("Adult HC Storms Grotto Pot 2", function() return Can_blast_or_smash end)
Adult_HC_Storms_Grotto:connect_one_way("Adult HC Storms Grotto Pot 3", function() return Can_blast_or_smash end)
Adult_HC_Storms_Grotto:connect_one_way("Adult HC Storms Grotto Pot 4", function() return Can_blast_or_smash end)
Adult_HC_Storms_Grotto:connect_one_way("Adult HC Storms Grotto Gossip Stone", function() return Can_blast_or_smash end)


Child_HC_Storms_Grotto:connect_one_way_entrance("Child Castle Grounds", Child_Castle_Grounds)
Adult_HC_Storms_Grotto:connect_one_way_entrance("Adult Castle Grounds", Adult_Castle_Grounds)




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
        "HC GS Tree": "Can_child_attack and Can_bonk",
        "HC Malon Gossip Stone": "True",
        "HC Rock Wall Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and Has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and Has_bottle",
        "Bug Rock": "Has_bottle"
    },
    "exits": {
        "Castle Grounds": "True",
        "HC Garden": "Weird_Egg",
        "HC Great Fairy Fountain": "Has_explosives",
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
    -- # Directly reachable from Root in "Free Zelda"
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
        -- # No exit back into the castle because the entrance places Link in midair if the bridge isn't spawned
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
            (Can_blast_or_smash or (is_child and logic_castle_storms_gs)) and
            (can_use(Boomerang) or can_use(Hookshot))",
        "HC Storms Grotto Pot 1": "Can_blast_or_smash",
        "HC Storms Grotto Pot 2": "Can_blast_or_smash",
        "HC Storms Grotto Pot 3": "Can_blast_or_smash",
        "HC Storms Grotto Pot 4": "Can_blast_or_smash",
        "HC Storms Grotto Gossip Stone": "Can_blast_or_smash",
        "Gossip Stone Fairy": "Can_blast_or_smash and can_summon_gossip_fairy and Has_bottle",
        "Wandering Bugs": "Can_blast_or_smash and Has_bottle",
        "Nut Pot": "Can_blast_or_smash"
    },
    "exits": {
        "Castle Grounds": "True"
    }
},