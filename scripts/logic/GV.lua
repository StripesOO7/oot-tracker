Child_Gerudo_Valley = OOTLocation.new("Child_Gerudo_Valley")
Child_GV_Upper_Stream = OOTLocation.new("Child_GV_Upper_Stream")
Child_GV_Crate_Ledge = OOTLocation.new("Child_GV_Crate_Ledge")
Child_GV_Grotto_Ledge = OOTLocation.new("Child_Grotto_Ledge")
Child_GV_Lower_Stream = OOTLocation.new("Child_GV_Lower_Stream")
Child_GV_Fortress_Side = OOTLocation.new("Child_GV_Fortress_Side")
Child_GV_Octorok_Grotto = OOTLocation.new("Child_GV_Octorok_Grotto")
Child_GV_Storms_Grotto = OOTLocation.new("Child_GV_Storms_Grotto")
Child_GV_Carpenter_Tent = OOTLocation.new("Child_GV_Carpenter_Tent")

Adult_Gerudo_Valley = OOTLocation.new("Adult_Gerudo_Valley")
Adult_GV_Upper_Stream = OOTLocation.new("Adult_GV_Upper_Stream")
Adult_GV_Crate_Ledge = OOTLocation.new("Adult_GV_Crate_Ledge")
Adult_GV_Grotto_Ledge = OOTLocation.new("Adult_GV_Grotto_Ledge")
Adult_GV_Fortress_Side = OOTLocation.new("Adult_GV_Fortress_Side")
Adult_GV_Lower_Stream = OOTLocation.new("Adult_GV_Lower_Stream")
Adult_GV_Octorok_Grotto = OOTLocation.new("Adult_GV_Octorok_Grotto")
Adult_GV_Carpenter_Tent = OOTLocation.new("Adult_GV_Carpenter_Tent")
Adult_GV_Storms_Grotto = OOTLocation.new("Adult_GV_Storms_Grotto")


Child_Gerudo_Valley:connect_one_way("Child Bug Rock", function () return Has("Bottle") end)
Child_Gerudo_Valley:connect_one_way("Child GV GS Small Bridge", function ()
    return All(
        Has("Boomerang"),
        --at night
    )
end)

Adult_Gerudo_Valley:connect_one_way("Adult Bug Rock", function () return Has("Bottle") end)
Adult_Gerudo_Valley:connect_one_way("Adult GV GS Small Bridge", function ()
    return All(
        Has("Boomerang"),
        --at night
    )
end)

Child_Gerudo_Valley:connect_one_way_entrance("Child Hyrule Field", Child_Hyrule_Fields)
Child_Gerudo_Valley:connect_one_way_entrance("Child GV Upper Stream", Child_GV_Upper_Stream)
Child_Gerudo_Valley:connect_one_way_entrance("Child GV Crate Ledge", Child_GV_Crate_Ledge)
Child_Gerudo_Valley:connect_one_way_entrance("Child GV Grotto Ledge", Child_GV_Grotto_Ledge)
Child_Gerudo_Valley:connect_one_way_entrance("Child GV Fortress Side", Adult_GV_Fortress_Side, function()
    return Any(
        CanRideEpona,
        Has("Longshot"),
        gerudo_Fortress == open,
        CanFinishGerdudoFortress
    )
end)

Adult_Gerudo_Valley:connect_one_way_entrance("Adult Hyrule Field", Adult_Hyrule_Fields)
Adult_Gerudo_Valley:connect_one_way_entrance("Adult GV Upper Stream", Adult_GV_Upper_Stream)
Adult_Gerudo_Valley:connect_one_way_entrance("Adult GV Crate Ledge", Adult_GV_Crate_Ledge, function() return Has("Longshot") end)
Adult_Gerudo_Valley:connect_one_way_entrance("Adult GV Grotto Ledge", Adult_GV_Grotto_Ledge)
Adult_Gerudo_Valley:connect_one_way_entrance("Adult GV Fortress Side", Adult_GV_Fortress_Side, function()
    return Any(
        CanRideEpona,
        Has("Longshot"),
        gerudo_Fortress == open,
        CanFinishGerdudoFortress
    )
end)

Child_GV_Upper_Stream:connect_one_way("Child GV Waterfall Freestanding PoH")
Child_GV_Upper_Stream:connect_one_way("Child GV GS Bean Patch", function ()
    return All(
        Has("Bottle"),
        CanChildAttack()
    )
end)
Child_GV_Upper_Stream:connect_one_way("Child GV Cow", function() return CanPlay("EponasSong") end)
Child_GV_Upper_Stream:connect_one_way("Child GV Crate Near Cow", function() return CanBreakCrates() end)
Child_GV_Upper_Stream:connect_one_way("Child GV Gossip Stone")
Child_GV_Upper_Stream:connect_one_way("Child Gossip Stone Fairy")
Child_GV_Upper_Stream:connect_one_way("Child Bean Plant Fairy")

Adult_GV_Upper_Stream:connect_one_way("Adult GV Waterfall Freestanding PoH")
Adult_GV_Upper_Stream:connect_one_way("Adult GV GS Bean Patch", function ()
    return All(
        Has("Bottle"),
        CanChildAttack()
    )
end)
Adult_GV_Upper_Stream:connect_one_way("Adult GV Cow", function() return CanPlay("EponasSong") end)
Adult_GV_Upper_Stream:connect_one_way("Adult GV Crate Near Cow", function() return CanBreakCrates() end)
Adult_GV_Upper_Stream:connect_one_way("Adult GV Gossip Stone")
Adult_GV_Upper_Stream:connect_one_way("Adult Gossip Stone Fairy")
Adult_GV_Upper_Stream:connect_one_way("Adult Bean Plant Fairy")

Child_GV_Upper_Stream:connect_one_way_entrance("Child GV Lower Stream", Child_GV_Lower_Stream)
Adult_GV_Upper_Stream:connect_one_way_entrance("Adult GV Lower Stream", Adult_GV_Lower_Stream)

Child_GV_Lower_Stream:connect_one_way_entrance("Child Lake Hylia", Child_Lake_Hylia)
Adult_GV_Lower_Stream:connect_one_way_entrance("Adult Lake Hylia", Adult_Lake_Hylia)

Child_GV_Grotto_Ledge:connect_one_way_entrance("Child GV Lower Stream", Child_GV_Lower_Stream)
Child_GV_Grotto_Ledge:connect_one_way_entrance("Child GV Octorok Grotto", Child_GV_Octorok_Grotto)
Child_GV_Grotto_Ledge:connect_one_way_entrance("Child GV Crate Ledge", Child_GV_Crate_Ledge)
Adult_GV_Grotto_Ledge:connect_one_way_entrance("Adult GV Lower Stream", Adult_GV_Lower_Stream)
Adult_GV_Grotto_Ledge:connect_one_way_entrance("Adult GV Octorok Grotto", Adult_GV_Octorok_Grotto, function() return Has("SilverGauntlet") end)
Adult_GV_Grotto_Ledge:connect_one_way_entrance("Adult GV Crate Ledge", Adult_GV_Crate_Ledge)

Child_GV_Crate_Ledge:connect_one_way("Child GV Crate Freestanding PoH", function() return CanBreakCrates() end)
Child_GV_Crate_Ledge:connect_one_way("Child GV Freestanding PoH Crate", function() return CanBreakCrates() end)
Adult_GV_Crate_Ledge:connect_one_way("Adult GV Crate Freestanding PoH", function() return CanBreakCrates() end)
Adult_GV_Crate_Ledge:connect_one_way("Adult GV Freestanding PoH Crate", function() return CanBreakCrates() end)

Child_GV_Crate_Ledge:connect_one_way_entrance("Child GV Lower Stream", Child_GV_Lower_Stream)
Adult_GV_Crate_Ledge:connect_one_way_entrance("Adult GV Lower Stream", Adult_GV_Lower_Stream)


Child_GV_Fortress_Side:connect_one_way("Child GV Chest", function() return Has("MegatonHammer") end)
Child_GV_Fortress_Side:connect_one_way("Child GV GS Behind Tent", function()
    return All(
        -- at night,
        Has("Hookshot")
    )
end)
Child_GV_Fortress_Side:connect_one_way("Child GV GS Pillar", function()
    return All(
        -- at night,
        Has("Hookshot")
    )
end)

Adult_GV_Fortress_Side:connect_one_way("Adult GV Chest", function() return Has("MegatonHammer") end)
Adult_GV_Fortress_Side:connect_one_way("Adult GV GS Behind Tent", function()
    return All(
        -- at night,
        Has("Hookshot")
    )
end)
Adult_GV_Fortress_Side:connect_one_way("Adult GV GS Pillar", function()
    return All(
        -- at night,
        Has("Hookshot")
    )
end)


Child_GV_Fortress_Side:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_GV_Fortress_Side:connect_one_way_entrance("Child GV Upper Stream", Child_GV_Upper_Stream)
Child_GV_Fortress_Side:connect_one_way_entrance("Child GV Crate Ledge", Child_GV_Crate_Ledge, function()
    return All(
        logic_calley_crate_hover,
        Has("HoverBoots"),
        Any(
            damage_multi ~= ohko,
            Canuse("NayrusLove"),
            All(
                Has("Fairy"),
                Any(
                    CanBlastOrSmash(),
                    deadly_bonks ~= ohko
                )
            )
        )
    )
end)
Child_GV_Fortress_Side:connect_one_way_entrance("Child Gerudo Valley", Child_Gerudo_Valley, function()
    return Any(
        CanRideEpona(),
        Has("Longshot"),
        gerudo_fortess ==open, 
        can_finish_GerudoFortress
    )
end)
Child_GV_Fortress_Side:connect_one_way_entrance("Child GV Carpenter Tent", Child_GV_Carpenter_Tent)
Child_GV_Fortress_Side:connect_one_way_entrance("Child GV Storms Grotto", Child_GV_Storms_Grotto, function() return CanOpenStormsGrotto() end)

Adult_GV_Fortress_Side:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_GV_Fortress_Side:connect_one_way_entrance("Adult GV Upper Stream", Adult_GV_Upper_Stream)
Adult_GV_Fortress_Side:connect_one_way_entrance("Adult GV Crate Ledge", Adult_GV_Crate_Ledge, function()
    return All(
        logic_calley_crate_hover,
        Has("HoverBoots"),
        Any(
            damage_multi ~= ohko,
            Canuse("NayrusLove"),
            All(
                Has("Fairy"),
                Any(
                    CanBlastOrSmash(),
                    deadly_bonks ~= ohko
                )
            )
        )
    )
end)
Adult_GV_Fortress_Side:connect_one_way_entrance("Adult Gerudo Valley", Adult_Gerudo_Valley, function()
    return Any(
        CanRideEpona(),
        Has("Longshot"),
        gerudo_fortess ==open, 
        can_finish_GerudoFortress
    )
end)
Adult_GV_Fortress_Side:connect_one_way_entrance("Adult GV Carpenter Tent", Adult_GV_Carpenter_Tent)
Adult_GV_Fortress_Side:connect_one_way_entrance("Adult GV Storms Grotto", Adult_GV_Storms_Grotto, function() return CanOpenStormsGrotto() end)


Child_GV_Carpenter_Tent:connect_one_way_entrance("Child Gerudo Fortress", Child_GV_Fortress_Side)
Adult_GV_Carpenter_Tent:connect_one_way_entrance("Adult Gerudo Fortress", Adult_GV_Fortress_Side)

Child_GV_Octorok_Grotto:connect_one_way("Child GV Octorok Grotto Red Rupee")
Child_GV_Octorok_Grotto:connect_one_way("Child GV Octorok Grotto Blue Rupee 1")
Child_GV_Octorok_Grotto:connect_one_way("Child GV Octorok Grotto Blue Rupee 2")
Child_GV_Octorok_Grotto:connect_one_way("Child GV Octorok Grotto Blue Rupee 3")
Child_GV_Octorok_Grotto:connect_one_way("Child GV Octorok Grotto Green Rupee 1")
Child_GV_Octorok_Grotto:connect_one_way("Child GV Octorok Grotto Green Rupee 2")
Child_GV_Octorok_Grotto:connect_one_way("Child GV Octorok Grotto Green Rupee 3")
Child_GV_Octorok_Grotto:connect_one_way("Child GV Octorok Grotto Green Rupee 4")

Adult_GV_Octorok_Grotto:connect_one_way("Adult GV Octorok Grotto Red Rupee")
Adult_GV_Octorok_Grotto:connect_one_way("Adult GV Octorok Grotto Blue Rupee 1")
Adult_GV_Octorok_Grotto:connect_one_way("Adult GV Octorok Grotto Blue Rupee 2")
Adult_GV_Octorok_Grotto:connect_one_way("Adult GV Octorok Grotto Blue Rupee 3")
Adult_GV_Octorok_Grotto:connect_one_way("Adult GV Octorok Grotto Green Rupee 1")
Adult_GV_Octorok_Grotto:connect_one_way("Adult GV Octorok Grotto Green Rupee 2")
Adult_GV_Octorok_Grotto:connect_one_way("Adult GV Octorok Grotto Green Rupee 3")
Adult_GV_Octorok_Grotto:connect_one_way("Adult GV Octorok Grotto Green Rupee 4")

Child_GV_Octorok_Grotto:connect_one_way_entrance("Child GV Grotto Ledge", Child_GV_Grotto_Ledge)
Adult_GV_Octorok_Grotto:connect_one_way_entrance("Adult GV Grotto Ledge", Adult_GV_Grotto_Ledge)

Child_GV_Storms_Grotto:connect_one_way("Child GV Deku Scrub Grotto Rear", function() return can_stun_deku end)
Child_GV_Storms_Grotto:connect_one_way("Child GV Deku Scrub Grotto Front", function() return can_stun_deku end)
Child_GV_Storms_Grotto:connect_one_way("Child GV Storms Grotto Beehive", function() return can_break_upper_beehive end)

Adult_GV_Storms_Grotto:connect_one_way("Adult GV Deku Scrub Grotto Rear", function() return can_stun_deku end)
Adult_GV_Storms_Grotto:connect_one_way("Adult GV Deku Scrub Grotto Front", function() return can_stun_deku end)
Adult_GV_Storms_Grotto:connect_one_way("Adult GV Storms Grotto Beehive", function() return can_break_upper_beehive end)

Child_GV_Storms_Grotto:connect_one_way_entrance("GV Fortress Side", Child_GV_Fortress_Side)
Adult_GV_Storms_Grotto:connect_one_way_entrance("GV Fortress Side", Adult_GV_Fortress_Side)

{
    "region_name": "Gerudo Valley",
    "scene": "Gerudo Valley",
    "hint": "GERUDO_VALLEY",
    "time_passes": true,
    "locations": {
        "GV GS Small Bridge": "can_use(Boomerang) and at_night",
        "Bug Rock": "is_child and has_bottle"
    },
    "exits": {
        "Hyrule Field": "True",
        "GV Upper Stream": "True",
        "GV Crate Ledge": "is_child or Longshot",
        "GV Grotto Ledge": "True",
        "GV Fortress Side": "
            is_adult and 
            (can_ride_epona or Longshot or gerudo_fortress == 'open' or can_finish_GerudoFortress)"
    }
},
{
    "region_name": "GV Upper Stream",
    "scene": "Gerudo Valley",
    "hint": "GERUDO_VALLEY",
    "time_passes": true,
    "locations": {
        "GV Waterfall Freestanding PoH": "True",
        "GV GS Bean Patch": "can_plant_bugs and can_child_attack",
        "GV Cow": "is_child and can_play(Eponas_Song)",
        "GV Crate Near Cow": "is_child and can_break_crate",
        "GV Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Bean Plant Fairy": "is_child and can_plant_bean and can_play(Song_of_Storms) and has_bottle"
    },
    "exits": {
        "GV Lower Stream": "True"
    }
},
{
    "region_name": "GV Lower Stream",
    "scene": "Gerudo Valley",
    "hint": "GERUDO_VALLEY",
    "time_passes": true,
    "exits": {
        "Lake Hylia": "True"
    }
},
{
    "region_name": "GV Grotto Ledge",
    "scene": "Gerudo Valley",
    "hint": "GERUDO_VALLEY",
    "time_passes": true,
    "exits": {
        "GV Lower Stream": "True",
        "GV Octorok Grotto": "can_use(Silver_Gauntlets)",
        "GV Crate Ledge": "can_use(Longshot)"
    }
},
{
    "region_name": "GV Crate Ledge",
    "scene": "Gerudo Valley",
    "hint": "GERUDO_VALLEY",
    "time_passes": true,
    "locations": {
        "GV Crate Freestanding PoH": "can_break_crate",
        "GV Freestanding PoH Crate": "can_break_crate"
    },
    "exits": {
        "GV Lower Stream": "True"
    }
},
{
    "region_name": "GV Fortress Side",
    "scene": "Gerudo Valley",
    "hint": "GERUDO_VALLEY",
    "time_passes": true,
    "events": {
        "Broken Sword Access": "is_adult and ('Poachers Saw Access' or Poachers_Saw)"
    },
    "locations": {
        "GV Chest": "can_use(Megaton_Hammer)",
        "GV GS Behind Tent": "can_use(Hookshot) and at_night",
        "GV GS Pillar": "can_use(Hookshot) and at_night"
    },
    "exits": {
        "Gerudo Fortress": "True",
        "GV Upper Stream": "True",
        "GV Crate Ledge": "
            logic_valley_crate_hovers and can_use(Hover_Boots) and
            (damage_multiplier != 'ohko' or can_use(Nayrus_Love) or
                (Fairy and (deadly_bonks != 'ohko' or can_blast_or_smash)))",
        "Gerudo Valley": "
            is_child or can_ride_epona or Longshot or
            gerudo_fortress == 'open' or can_finish_GerudoFortress",
        "GV Carpenter Tent": "is_adult", # Invisible as child so not in logic
        "GV Storms Grotto": "is_adult and can_open_storm_grotto" # Not there as child
    }
},
{
    "region_name": "GV Carpenter Tent",
    "scene": "GV Carpenter Tent",
    "exits": {
        "GV Fortress Side": "True"
    }
},
{
    "region_name": "GV Octorok Grotto",
    "scene": "GV Octorok Grotto",
    "locations": {
        "GV Octorok Grotto Red Rupee": "True",
        "GV Octorok Grotto Blue Rupee 1": "True",
        "GV Octorok Grotto Blue Rupee 2": "True",
        "GV Octorok Grotto Blue Rupee 3": "True",
        "GV Octorok Grotto Green Rupee 1": "True",
        "GV Octorok Grotto Green Rupee 2": "True",
        "GV Octorok Grotto Green Rupee 3": "True",
        "GV Octorok Grotto Green Rupee 4": "True"
    },
    "exits": {
        "GV Grotto Ledge": "True"
    }
},
{
    "region_name": "GV Storms Grotto",
    "scene": "GV Storms Grotto",
    "locations": {
        "GV Deku Scrub Grotto Rear": "can_stun_deku",
        "GV Deku Scrub Grotto Front": "can_stun_deku",
        "GV Storms Grotto Beehive": "can_break_upper_beehive"
    },
    "exits": {
        "GV Fortress Side": "True"
    }
}