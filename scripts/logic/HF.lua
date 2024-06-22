-- Child_Hyrule_Fields = OOTLocation.new("Child_Hyrule_Fields")
-- Child_HF_Southeast_Grotto = OOTLocation.new("Child_HF_Southeast_Grotto")
-- Child_HF_Open_Grotto = OOTLocation.new("Child_HF_Open_Grotto")
-- Child_HF_Inside_Fence_Grotto = OOTLocation.new("Child_HF_Inside_Fence_Grotto")
-- Child_HF_Cow_Grotto = OOTLocation.new("Child_HF_Cow_Grotto")
-- Child_HF_Near_Market_Grotto = OOTLocation.new("Child_HF_Near_Market_Grotto")
-- Child_HF_Fairy_Grotto = OOTLocation.new("Child_HF_Fairy_Grotto")
-- Child_HF_Near_Kak_Grotto = OOTLocation.new("Child_HF_Near_Kak_Grotto")
-- Child_HF_Tektite_Grotto = OOTLocation.new("Child_HF_Tektite_Grotto")

-- Adult_Hyrule_Fields = OOTLocation.new("Adult_Hyrule_Fields")
-- Adult_HF_Southeast_Grotto = OOTLocation.new("Adult_HF_Southeast_Grotto")
-- Adult_HF_Open_Grotto = OOTLocation.new("Adult_HF_Open_Grotto")
-- Adult_HF_Inside_Fence_Grotto = OOTLocation.new("Adult_HF_Inside_Fence_Grotto")
-- Adult_HF_Cow_Grotto = OOTLocation.new("Adult_HF_Cow_Grotto")
-- Adult_HF_Near_Market_Grotto = OOTLocation.new("Adult_HF_Near_Market_Grotto")
-- Adult_HF_Fairy_Grotto = OOTLocation.new("Adult_HF_Fairy_Grotto")
-- Adult_HF_Near_Kak_Grotto = OOTLocation.new("Adult_HF_Near_Kak_Grotto")
-- Adult_HF_Tektite_Grotto = OOTLocation.new("Adult_HF_Tektite_Grotto")

Child_Hyrule_Fields:connect_one_way("Child HF Ocarina of Time Item", function()
    return All(
        Has("GoronsRuby"),
        Has("KokirisEmerald"),
        Has("ZorasSapphire")
    )
end)
Child_Hyrule_Fields:connect_one_way("Child Song from Ocarina of Time", function()
    return All(
        Has("GoronsRuby"),
        Has("KokirisEmerald"),
        Has("ZorasSapphire")
    )
end)
Child_Hyrule_Fields:connect_one_way("Child Big Poe Kill", function()
    return All(
        Has("Bottle"),
        Has("Bow"),
        canRideEpona()
    )
end)

Adult_Hyrule_Fields:connect_one_way("Adult HF Ocarina of Time Item", function()
    return All(
        Has("GoronsRuby"),
        Has("KokirisEmerald"),
        Has("ZorasSapphire")
    )
end)
Adult_Hyrule_Fields:connect_one_way("Adult Song from Ocarina of Time", function()
    return All(
        Has("GoronsRuby"),
        Has("KokirisEmerald"),
        Has("ZorasSapphire")
    )
end)
Adult_Hyrule_Fields:connect_one_way("Adult Big Poe Kill", function()
    return All(
        Has("Bottle"),
        Has("Bow"),
        canRideEpona()
    )
end)


Child_Hyrule_Fields:connect_one_way_entrance("Child LW Bridge", Child_LW_Bridge)
Child_Hyrule_Fields:connect_one_way_entrance("Child Lake Hylia", Child_Lake_Hylia)
Child_Hyrule_Fields:connect_one_way_entrance("Child Gerudo Valley", Child_Gerudo_Valley)
Child_Hyrule_Fields:connect_one_way_entrance("Child Market Entrance", Child_Market_Entrance)
Child_Hyrule_Fields:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)
Child_Hyrule_Fields:connect_one_way_entrance("Child ZR Front", Child_ZR_Front)
Child_Hyrule_Fields:connect_one_way_entrance("Child Lon Lon Ranch", Child_Lon_Lon_Ranch)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Southeast Grotto", Child_HF_Southeast_Grotto, function() return CanBlastOrSmash() end)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Open Grotto", Child_HF_Open_Grotto)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Inside Fence Grotto", Child_HF_Inside_Fence_Grotto, function() return CanOpenBombGrotto() end)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Cow Grotto", Child_HF_Cow_Grotto, function() return CanOpenBombGrotto() end)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Near Market Grotto", Child_HF_Near_Market_Grotto, function() return CanBlastOrSmash() end)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Fairy Grotto", Child_HF_Fairy_Grotto, function() return CanBlastOrSmash() end)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Near Kak Grotto", Child_HF_Near_Kak_Grotto, function() return CanOpenBombGrotto() end)
Child_Hyrule_Fields:connect_one_way_entrance("Child HF Tektite Grotto", Child_HF_Tektite_Grotto, function() return CanOpenBombGrotto() end)

Adult_Hyrule_Fields:connect_one_way_entrance("Adult LW Bridge", Adult_LW_Bridge)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult Lake Hylia", Adult_Lake_Hylia)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult Gerudo Valley", Adult_Gerudo_Valley)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult Market Entrance", Adult_Market_Entrance)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult ZR Front", Adult_ZR_Front)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult Lon Lon Ranch", Adult_Lon_Lon_Ranch)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Southeast Grotto", Adult_HF_Southeast_Grotto, function() return CanBlastOrSmash() end)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Open Grotto", Adult_HF_Open_Grotto)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Inside Fence Grotto", Adult_HF_Inside_Fence_Grotto, function() return CanOpenBombGrotto() end)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Cow Grotto", Adult_HF_Cow_Grotto, function()
    return Any(
        Has("MegatonHammer"),
        CanBlastOrSmash()
    )
end)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Near Market Grotto", Adult_HF_Near_Market_Grotto, function() return CanBlastOrSmash() end)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Fairy Grotto", Adult_HF_Fairy_Grotto, function() return CanBlastOrSmash() end)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Near Kak Grotto", Adult_HF_Near_Kak_Grotto, function() return CanOpenBombGrotto() end)
Adult_Hyrule_Fields:connect_one_way_entrance("Adult HF Tektite Grotto", Adult_HF_Tektite_Grotto, function() return CanOpenBombGrotto() end)

Child_HF_Southeast_Grotto:connect_one_way("Child HF Southeast Grotto Chest")
Child_HF_Southeast_Grotto:connect_one_way("Child HF Southeast Grotto Beehive 1", function() return can_break_lower_beehive end)
Child_HF_Southeast_Grotto:connect_one_way("Child HF Southeast Grotto Beehive 2", function() return can_break_lower_beehive end)
Child_HF_Southeast_Grotto:connect_one_way("Child HF Southeast Grotto Gossip Stone")

Adult_HF_Southeast_Grotto:connect_one_way("Adult HF Southeast Grotto Chest")
Adult_HF_Southeast_Grotto:connect_one_way("Adult HF Southeast Grotto Beehive 1", function() return can_break_lower_beehive end)
Adult_HF_Southeast_Grotto:connect_one_way("Adult HF Southeast Grotto Beehive 2", function() return can_break_lower_beehive end)
Adult_HF_Southeast_Grotto:connect_one_way("Adult HF Southeast Grotto Gossip Stone")


Child_HF_Southeast_Grotto:connect_one_way_entrance("Child Hyrule Field", Child_Hyrule_Fields)
Adult_HF_Southeast_Grotto:connect_one_way_entrance("Adult Hyrule Field", Adult_Hyrule_Fields)

Child_HF_Open_Grotto:connect_one_way("Child HF Open Grotto Chest")
Child_HF_Open_Grotto:connect_one_way("Child HF Open Grotto Beehive 1", function() return can_break_lower_beehive end)
Child_HF_Open_Grotto:connect_one_way("Child HF Open Grotto Beehive 2", function() return can_break_lower_beehive end)
Child_HF_Open_Grotto:connect_one_way("Child HF Open Grotto Gossip Stone")

Adult_HF_Open_Grotto:connect_one_way("Adult HF Open Grotto Chest")
Adult_HF_Open_Grotto:connect_one_way("Adult HF Open Grotto Beehive 1", function() return can_break_lower_beehive end)
Adult_HF_Open_Grotto:connect_one_way("Adult HF Open Grotto Beehive 2", function() return can_break_lower_beehive end)
Adult_HF_Open_Grotto:connect_one_way("Adult HF Open Grotto Gossip Stone")

Child_HF_Open_Grotto:connect_one_way_entrance("Child Hyrule Field", Child_Hyrule_Fields)
Adult_HF_Open_Grotto:connect_one_way_entrance("Adult Hyrule Field", Adult_Hyrule_Fields)

Child_HF_Inside_Fence_Grotto:connect_one_way("Child HF Deku Scrub Grotto", function() return can_stun_deku end)
Child_HF_Inside_Fence_Grotto:connect_one_way("Child HF Inside Fence Grotto Beehive", function() return can_break_lower_beehive end)

Adult_HF_Inside_Fence_Grotto:connect_one_way("Adult HF Deku Scrub Grotto", function() return can_stun_deku end)
Adult_HF_Inside_Fence_Grotto:connect_one_way("Adult HF Inside Fence Grotto Beehive", function() return can_break_lower_beehive end)

Child_HF_Inside_Fence_Grotto:connect_one_way_entrance("Child Hyrule Field", Child_Hyrule_Fields)
Adult_HF_Inside_Fence_Grotto:connect_one_way_entrance("Adult Hyrule Field", Adult_Hyrule_Fields)

Child_HF_Cow_Grotto:connect_one_way("Child HF GS Cow Grotto", function() 
    return All(
        has_fire_source,
        Any(
            can_use(Hookshot),
            can_use(Boomerang)
        )
    )
end)
Child_HF_Cow_Grotto:connect_one_way("Child HF Cow Grotto Cow", function() 
    return All(
        has_fire_source,
        can_play(Eponas_Song)
    )
end)
Child_HF_Cow_Grotto:connect_one_way("Child HF Cow Grotto Pot 1", function() return has_fire_source end)
Child_HF_Cow_Grotto:connect_one_way("Child HF Cow Grotto Pot 2", function() return has_fire_source end)
Child_HF_Cow_Grotto:connect_one_way("Child HF Cow Grotto Gossip Stone", function() return has_fire_source end)

Adult_HF_Cow_Grotto:connect_one_way("Adult HF GS Cow Grotto", function() 
    return All(
        has_fire_source,
        Any(
            can_use(Hookshot),
            can_use(Boomerang)
        )
    )
end)
Adult_HF_Cow_Grotto:connect_one_way("Adult HF Cow Grotto Cow", function() 
    return All(
        has_fire_source,
        can_play(Eponas_Song)
    )
end)
Adult_HF_Cow_Grotto:connect_one_way("Adult HF Cow Grotto Pot 1", function() return has_fire_source end)
Adult_HF_Cow_Grotto:connect_one_way("Adult HF Cow Grotto Pot 2", function() return has_fire_source end)
Adult_HF_Cow_Grotto:connect_one_way("Adult HF Cow Grotto Gossip Stone", function() return has_fire_source end)


Child_HF_Cow_Grotto:connect_one_way_entrance("Child Hyrule Field", Child_Hyrule_Fields)
Adult_HF_Cow_Grotto:connect_one_way_entrance("Adult Hyrule Field", Adult_Hyrule_Fields)

Child_HF_Near_Market_Grotto:connect_one_way("Child HF Near Market Grotto Chest")
Child_HF_Near_Market_Grotto:connect_one_way("Child HF Near Market Grotto Beehive 1", function() return can_break_lower_beehive end)
Child_HF_Near_Market_Grotto:connect_one_way("Child HF Near Market Grotto Beehive 2", function() return can_break_lower_beehive end)
Child_HF_Near_Market_Grotto:connect_one_way("Child HF Near Market Grotto Gossip Stone")

Adult_HF_Near_Market_Grotto:connect_one_way("Adult HF Near Market Grotto Chest")
Adult_HF_Near_Market_Grotto:connect_one_way("Adult HF Near Market Grotto Beehive 1", function() return can_break_lower_beehive end)
Adult_HF_Near_Market_Grotto:connect_one_way("Adult HF Near Market Grotto Beehive 2", function() return can_break_lower_beehive end)
Adult_HF_Near_Market_Grotto:connect_one_way("Adult HF Near Market Grotto Gossip Stone")


Child_HF_Near_Market_Grotto:connect_one_way_entrance("Child Hyrule Field", Child_Hyrule_Fields)
Adult_HF_Near_Market_Grotto:connect_one_way_entrance("Adult Hyrule Field", Adult_Hyrule_Fields)

-- Child_HF_Fairy_Grotto:connect_one_way()
-- Adult_HF_Fairy_Grotto:connect_one_way()

Child_HF_Fairy_Grotto:connect_one_way_entrance("Child Hyrule Field", Child_Hyrule_Fields)
Adult_HF_Fairy_Grotto:connect_one_way_entrance("Adult Hyrule Field", Adult_Hyrule_Fields)

Child_HF_Near_Kak_Grotto:connect_one_way("Child HF GS Near Kak Grotto", function() return can_use(Boomerang) or can_use(Hookshot) end)
Adult_HF_Near_Kak_Grotto:connect_one_way("Adult HF GS Near Kak Grotto", function() return can_use(Boomerang) or can_use(Hookshot) end)

Child_HF_Near_Kak_Grotto:connect_one_way_entrance("Child Hyrule Field", Child_Hyrule_Fields)
Adult_HF_Near_Kak_Grotto:connect_one_way_entrance("Adult Hyrule Field", Adult_Hyrule_Fields)

Child_HF_Tektite_Grotto:connect_one_way("Child HF Tektite Grotto Freestanding PoH", function() return (Progressive_Scale, 2) or can_use(Iron_Boots) end)
Adult_HF_Tektite_Grotto:connect_one_way("Adult HF Tektite Grotto Freestanding PoH", function() return (Progressive_Scale, 2) or can_use(Iron_Boots) end)

Child_HF_Tektite_Grotto:connect_one_way_entrance("Child Hyrule Field", Child_Hyrule_Fields)
Adult_HF_Tektite_Grotto:connect_one_way_entrance("Adult Hyrule Field", Adult_Hyrule_Fields)


{
    "region_name": "Hyrule Field",
    "scene": "Hyrule Field",
    "hint": "HYRULE_FIELD",
    "time_passes": true,
    "locations": {
        "HF Ocarina of Time Item": "is_child and has_all_stones",
        "Song from Ocarina of Time": "is_child and has_all_stones",
        "Big Poe Kill": "can_ride_epona and Bow and has_bottle"
    },
    "exits": {
        "LW Bridge": "True",
        "Lake Hylia": "True",
        "Gerudo Valley": "True",
        "Market Entrance": "True",
        "Kakariko Village": "True",
        "ZR Front": "True",
        "Lon Lon Ranch": "True",
        "HF Southeast Grotto": "here(can_blast_or_smash)",
        "HF Open Grotto": "True",
        "HF Inside Fence Grotto": "can_open_bomb_grotto",
        # There is a hammerable boulder as adult which is not there as child
        "HF Cow Grotto": "(is_child or Megaton_Hammer) and can_open_bomb_grotto",
        "HF Near Market Grotto": "here(can_blast_or_smash)",
        "HF Fairy Grotto": "here(can_blast_or_smash)",
        "HF Near Kak Grotto": "can_open_bomb_grotto",
        "HF Tektite Grotto": "can_open_bomb_grotto"
    }
},
{
    "region_name": "HF Southeast Grotto",
    "scene": "HF Southeast Grotto",
    "locations": {
        "HF Southeast Grotto Chest": "True",
        "HF Southeast Grotto Beehive 1": "can_break_lower_beehive",
        "HF Southeast Grotto Beehive 2": "can_break_lower_beehive",
        "HF Southeast Grotto Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Shrub": "can_cut_shrubs and has_bottle",
        "Lone Fish": "has_bottle"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Open Grotto",
    "scene": "HF Open Grotto",
    "locations": {
        "HF Open Grotto Chest": "True",
        "HF Open Grotto Beehive 1": "can_break_lower_beehive",
        "HF Open Grotto Beehive 2": "can_break_lower_beehive",
        "HF Open Grotto Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Shrub": "can_cut_shrubs and has_bottle",
        "Lone Fish": "has_bottle"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Inside Fence Grotto",
    "scene": "HF Inside Fence Grotto",
    "locations": {
        "HF Deku Scrub Grotto": "can_stun_deku",
        "HF Inside Fence Grotto Beehive": "can_break_lower_beehive"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Cow Grotto",
    "scene": "HF Cow Grotto",
    "locations": {
        "HF GS Cow Grotto": "has_fire_source and (can_use(Hookshot) or can_use(Boomerang))",
        "HF Cow Grotto Cow": "has_fire_source and can_play(Eponas_Song)",
        "HF Cow Grotto Pot 1": "has_fire_source",
        "HF Cow Grotto Pot 2": "has_fire_source",
        "HF Cow Grotto Gossip Stone": "has_fire_source",
        "Gossip Stone Fairy": "has_fire_source and can_summon_gossip_fairy and has_bottle",
        "Bug Shrub": "has_fire_source and can_cut_shrubs and has_bottle",
        "Nut Pot": "has_fire_source"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Near Market Grotto",
    "scene": "HF Near Market Grotto",
    "locations": {
        "HF Near Market Grotto Chest": "True",
        "HF Near Market Grotto Beehive 1": "can_break_lower_beehive",
        "HF Near Market Grotto Beehive 2": "can_break_lower_beehive",
        "HF Near Market Grotto Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Shrub": "can_cut_shrubs and has_bottle",
        "Lone Fish": "has_bottle"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Fairy Grotto",
    "scene": "HF Fairy Grotto",
    "locations": {
        "Free Fairies": "has_bottle"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Near Kak Grotto",
    "scene": "HF Near Kak Grotto",
    "locations": {
        "HF GS Near Kak Grotto": "can_use(Boomerang) or can_use(Hookshot)"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Tektite Grotto",
    "scene": "HF Tektite Grotto",
    "locations": {
        "HF Tektite Grotto Freestanding PoH": "(Progressive_Scale, 2) or can_use(Iron_Boots)"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Southeast Grotto",
    "scene": "HF Southeast Grotto",
    "locations": {
        "HF Southeast Grotto Chest": "True",
        "HF Southeast Grotto Beehive 1": "can_break_lower_beehive",
        "HF Southeast Grotto Beehive 2": "can_break_lower_beehive",
        "HF Southeast Grotto Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Shrub": "can_cut_shrubs and has_bottle",
        "Lone Fish": "has_bottle"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Open Grotto",
    "scene": "HF Open Grotto",
    "locations": {
        "HF Open Grotto Chest": "True",
        "HF Open Grotto Beehive 1": "can_break_lower_beehive",
        "HF Open Grotto Beehive 2": "can_break_lower_beehive",
        "HF Open Grotto Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Shrub": "can_cut_shrubs and has_bottle",
        "Lone Fish": "has_bottle"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Inside Fence Grotto",
    "scene": "HF Inside Fence Grotto",
    "locations": {
        "HF Deku Scrub Grotto": "can_stun_deku",
        "HF Inside Fence Grotto Beehive": "can_break_lower_beehive"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Cow Grotto",
    "scene": "HF Cow Grotto",
    "locations": {
        "HF GS Cow Grotto": "has_fire_source and (can_use(Hookshot) or can_use(Boomerang))",
        "HF Cow Grotto Cow": "has_fire_source and can_play(Eponas_Song)",
        "HF Cow Grotto Pot 1": "has_fire_source",
        "HF Cow Grotto Pot 2": "has_fire_source",
        "HF Cow Grotto Gossip Stone": "has_fire_source",
        "Gossip Stone Fairy": "has_fire_source and can_summon_gossip_fairy and has_bottle",
        "Bug Shrub": "has_fire_source and can_cut_shrubs and has_bottle",
        "Nut Pot": "has_fire_source"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Near Market Grotto",
    "scene": "HF Near Market Grotto",
    "locations": {
        "HF Near Market Grotto Chest": "True",
        "HF Near Market Grotto Beehive 1": "can_break_lower_beehive",
        "HF Near Market Grotto Beehive 2": "can_break_lower_beehive",
        "HF Near Market Grotto Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Shrub": "can_cut_shrubs and has_bottle",
        "Lone Fish": "has_bottle"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Fairy Grotto",
    "scene": "HF Fairy Grotto",
    "locations": {
        "Free Fairies": "has_bottle"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Near Kak Grotto",
    "scene": "HF Near Kak Grotto",
    "locations": {
        "HF GS Near Kak Grotto": "can_use(Boomerang) or can_use(Hookshot)"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "HF Tektite Grotto",
    "scene": "HF Tektite Grotto",
    "locations": {
        "HF Tektite Grotto Freestanding PoH": "(Progressive_Scale, 2) or can_use(Iron_Boots)"
    },
    "exits": {
        "Hyrule Field": "True"
    }
},