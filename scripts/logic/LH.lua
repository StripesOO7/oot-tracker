-- Child_Lake_Hylia = OOTLocation.new("Child_Lake_Hylia")
-- Child_LH_Owl_Flight = OOTLocation.new("Child_LH_Owl_Flight")
-- Child_LH_Lab = OOTLocation.new("Child_LH_Lab")
-- Child_LH_Fishing_Island = OOTLocation.new("Child_LH_Fishing_Island")
-- Child_LH_Grotto = OOTLocation.new("Child_LH_Grotto")
-- Child_Fishing_Hole = OOTLocation.new("Child_Fishing_Hole")

-- Adult_Lake_Hylia = OOTLocation.new("Adult_Lake_Hylia")
-- Adult_LH_Owl_Flight = OOTLocation.new("Adult_LH_Owl_Flight")
-- Adult_LH_Fishing_Island = OOTLocation.new("Adult_LH_Fishing_Island")
-- Adult_LH_Grotto = OOTLocation.new("Adult_LH_Grotto")
-- Adult_Fishing_Hole = OOTLocation.new("Adult_Fishing_Hole")
-- Adult_LH_Lab = OOTLocation.new("Adult_LH_Lab")

Child_Lake_Hylia:connect_one_way("Child Pierre", function ()
    return All(
        CanReach(Child_Lake_Hylia),
        Has("Ocarina"),
        -- not free scarecrow()
    )
end)
Child_Lake_Hylia:connect_one_way("Child LH Underwater Item", function() return Has("ProgressiveScale") end)
Child_Lake_Hylia:connect_one_way("Child LH Sun")
Child_Lake_Hylia:connect_one_way("Child LH Underwater Near Shore Green Rupee")
Child_Lake_Hylia:connect_one_way("Child LH Underwater Green Rupee 1", function() return Has("ProgressiveScale") end)
Child_Lake_Hylia:connect_one_way("Child LH Underwater Green Rupee 2", function() return Has("ProgressiveScale") end)
Child_Lake_Hylia:connect_one_way("Child LH GS Bean Patch", function()
    return All(
        Has("Bottle"),
        Can_child_attack()
    )
end)

Child_Lake_Hylia:connect_one_way("Child LH GS Lab Wall", function()
    return All(
        at night,
        Any(
            Has("Boomerang"),
            All(
                logic_lab_wall_gs,
                Any(
                    Has("DekuSticks"),
                    Has("KokiriSword")
                )
            )
        )
    )
end)
Child_Lake_Hylia:connect_one_way("Child LH GS Small Island", function()
    return All(
        Can_dive(),
        Can_child_attack()
    )
end)
Child_Lake_Hylia:connect_one_way("Child LH Freestanding PoH", function()
    return Any(
        Has("MagicBeans"),
        Can_use("Scarecrow")
    )
end)
Child_Lake_Hylia:connect_one_way("Child LH GS Tree", function()
    return All(
        Has("Hookshot"),
        at night
    )
end)
-- Child_Lake_Hylia:connect_one_way("Child LH Lab Gossip Stone")
-- Child_Lake_Hylia:connect_one_way("Child LH Gossip Stone (Southeast)")
-- Child_Lake_Hylia:connect_one_way("Child LH Gossip Stone (Southwest)")
-- Child_Lake_Hylia:connect_one_way("Gossip Stone Fairy")
-- Child_Lake_Hylia:connect_one_way("Bean Plant Fairy")
-- Child_Lake_Hylia:connect_one_way("Butterfly Fairy")
-- Child_Lake_Hylia:connect_one_way("Bug Shrub")

Adult_Lake_Hylia:connect_one_way("Adult Pierre", function ()
    return All(
        CanReach(Child_Lake_Hylia),
        Has("Ocarina"),
        not free scarecrow()
    )
end)
Adult_Lake_Hylia:connect_one_way("Adult LH Underwater Item", function() return Has("ProgressiveScale") end)
Adult_Lake_Hylia:connect_one_way("Adult LH Sun", function()
    return All(
        Has("Bow"),
        Any(
            Child_Water_Temple_Boss.accessibility == 7,
            Adult_Water_Temple_Boss.accessibility == 7,
            Can_use("Distant_Scarecrow")
        )
    )
end)
Adult_Lake_Hylia:connect_one_way("Adult LH Underwater Near Shore Green Rupee")
Adult_Lake_Hylia:connect_one_way("Adult LH Underwater Green Rupee 1", function() return Has("ProgressiveScale") end)
Adult_Lake_Hylia:connect_one_way("Adult LH Underwater Green Rupee 2", function() return Has("ProgressiveScale") end)
Adult_Lake_Hylia:connect_one_way("Adult LH GS Bean Patch", function()
    return All(
        Has("Bottle"),
        Can_child_attack()
    )
end)
Adult_Lake_Hylia:connect_one_way("Adult LH GS Lab Wall", function()
    return All(
        at night,
        Any(
            Has("Boomerang"),
            All(
                logic_lab_wall_gs,
                Any(
                    Has("DekuSticks"),
                    Has("KokiriSword")
                )
            )
        )
    )
end)
Adult_Lake_Hylia:connect_one_way("Adult LH GS Small Island", function()
    return All(
        Can_dive(),
        Can_child_attack()
    )
end)
Adult_Lake_Hylia:connect_one_way("Adult LH Freestanding PoH", function()
    return Any(
        Has("MagicBeans"),
        Can_use("Scarecrow")
    )
end)
Adult_Lake_Hylia:connect_one_way("Adult LH GS Tree", function()
    return All(
        Has("Hookshot"),
        at_night
    )
end)
Adult_Lake_Hylia:connect_one_way("Adult LH Lab Gossip Stone")
Adult_Lake_Hylia:connect_one_way("Adult LH Gossip Stone (Southeast)")
Adult_Lake_Hylia:connect_one_way("Adult LH Gossip Stone (Southwest)")
-- Adult_Lake_Hylia:connect_one_way("Gossip Stone Fairy")


Child_Lake_Hylia:connect_one_way_entrance("Child Hyrule Fields", Child_Hyrule_Fields)
Child_Lake_Hylia:connect_one_way_entrance("Child Zora Domains", Child_Zora_Domain, function() return Can_dive() end)
Child_Lake_Hylia:connect_one_way_entrance("Child LH Own Flight", Child_LH_Owl_Flight)
Child_Lake_Hylia:connect_one_way_entrance("Child LH Lab", Child_LH_Lab)
Child_Lake_Hylia:connect_one_way_entrance("Child LH Fishing Island", Child_LH_Fishing_Island)
Child_Lake_Hylia:connect_one_way_entrance("Child LH Grotto", Child_LH_Grotto)
Child_Lake_Hylia:connect_one_way_entrance("Child Water Temple Lobby", Child_Water_Temple_Lobby, function()
    return All(
        Has("Hookshot"),
        Any(
            Has("IronBoots"),
            All(
                Has("GoldenScale"),
                Any(
                    Has("Longshot"),
                    logig_water_hookshot_entry
                )
            )
        )
    )
end)
-- Child_Lake_Hylia:connect_one_way_entrance()

Adult_Lake_Hylia:connect_one_way_entrance("Adult Hyrule Fields", Adult_Hyrule_Fields)

Adult_Lake_Hylia:connect_one_way_entrance("Adult Zora Domains", Adult_Zora_Domain, function() return Can_dive() end)
Adult_Lake_Hylia:connect_one_way_entrance("Adult LH Own Flight", Adult_LH_Owl_Flight)
Adult_Lake_Hylia:connect_one_way_entrance("Adult LH Lab", Adult_LH_Lab)
Adult_Lake_Hylia:connect_one_way_entrance("Adult LH Fishing Island", Adult_LH_Fishing_Island, function()
    return Any(
        Child_Water_Temple_Boss.accessibility == 7,
        Adult_Water_Temple_Boss.accessibility == 7,
        Can_use("Scarecrow"),
        Has("MagicBeans")
    )
end)
Adult_Lake_Hylia:connect_one_way_entrance("Adult Water Temple Lobby", Adult_Water_Temple_Lobby, function()
    return All(
        Has("Hookshot"),
        Any(
            Has("IronBoots"),
            All(
                Has("GoldenScale"),
                Any(
                    Has("Longshot"),
                    logig_water_hookshot_entry
                )
            )
        )
    )
end)
Adult_Lake_Hylia:connect_one_way_entrance("Adult LH Grotto", Adult_LH_Grotto)


Child_LH_Fishing_Island:connect_one_way_entrance("Child Lake Hyila", Child_Lake_Hylia)
Child_LH_Fishing_Island:connect_one_way_entrance("Child Fishing Hole", Child_Fishing_Hole)

Adult_LH_Fishing_Island:connect_one_way_entrance("Adult Lake Hyila", Adult_Lake_Hylia)
Adult_LH_Fishing_Island:connect_one_way_entrance("Adult Fishing Hole", Adult_Fishing_Hole)

Child_LH_Owl_Flight:connect_one_way_entrance("Child Lake Hyila", Child_Lake_Hylia)
Adult_LH_Owl_Flight:connect_one_way_entrance("Adult Lake Hyila", Adult_Lake_Hylia)

Child_LH_Lab:connect_one_way("Child LH Lab Dive", function() return Has("GoldenScale") end)
Child_LH_Lab:connect_one_way("Child LH Lab Dive Red Rupee 1", function() return Has("GoldenScale") end)
Child_LH_Lab:connect_one_way("Child LH Lab Dive Red Rupee 2", function() return Has("GoldenScale") end)
Child_LH_Lab:connect_one_way("Child LH Lab Dive Red Rupee 3", function() return Has("GoldenScale") end)
Child_LH_Lab:connect_one_way("Child LH GS Lab Crate", function()
    return All(
        Has("IronBoots"),
        Has("Hookshot"),
        Any(
            deadly_bonks ~= ohko,
            -- has("Fairy"),
            Can_use("NayrusLove"),
            shuffle_interior_entrance == off
        )
    )
end)

Adult_LH_Lab:connect_one_way("Adult LH Lab Dive", function()
    return All(
        Has("IronBoots"),
        logic_lab_dive,
        Has("Hookshot")
    )
end)
Adult_LH_Lab:connect_one_way("Adult LH Lab Dive Red Rupee 1", function() return Has("IronBoots") end)
Adult_LH_Lab:connect_one_way("Adult LH Lab Dive Red Rupee 2", function() return Has("IronBoots") end)
Adult_LH_Lab:connect_one_way("Adult LH Lab Dive Red Rupee 3", function() return Has("IronBoots") end)
Adult_LH_Lab:connect_one_way("Adult LH GS Lab Crate", function()
    return All(
        Has("IronBoots"),
        Has("Hookshot"),
        Any(
            deadly_bonks ~= ohko,
            -- has("Fairy"),
            Can_use("NayrusLove"),
            shuffle_interior_entrance == off
        )
    )
end)

Child_LH_Lab:connect_one_way_entrance("Child Lake Hyila", Child_Lake_Hylia)
Adult_LH_Lab:connect_one_way_entrance("Adult Lake Hyila", Adult_Lake_Hylia)



Child_Fishing_Hole:connect_one_way("Child LH Child Fishing")
Adult_Fishing_Hole:onnect_one_way("Adult LH Adult Fishing")

Child_Fishing_Hole:connect_one_way_entrance("Child Lake Hylia", Child_Lake_Hylia)
Adult_Fishing_Hole:connect_one_way_entrance("Adult Lake Hylia", Adult_Lake_Hylia)

Child_LH_Grotto:connect_one_way("Child LH Deku Scrub Grotto Left", function() return Can_stun_deku() end)
Child_LH_Grotto:connect_one_way("Child LH Deku Scrub Grotto Right", function() return Can_stun_deku() end)
Child_LH_Grotto:connect_one_way("Child LH Deku Scrub Grotto Center", function() return Can_stun_deku() end)
Child_LH_Grotto:connect_one_way("Child LH Grotto Beehive", function() return Can_break_upper_beehive() end)

Adult_LH_Grotto:connect_one_way("Adult LH Deku Scrub Grotto Left", function() return Can_stun_deku() end)
Adult_LH_Grotto:connect_one_way("Adult LH Deku Scrub Grotto Right", function() return Can_stun_deku() end)
Adult_LH_Grotto:connect_one_way("Adult LH Deku Scrub Grotto Center", function() return Can_stun_deku() end)
Adult_LH_Grotto:connect_one_way("Adult LH Grotto Beehive", function() return Can_break_upper_beehive() end)

Child_LH_Grotto:connect_one_way_entrance("Child Lake Hylia", Child_Lake_Hylia)
Adult_LH_Grotto:connect_one_way_entrance("Adult Lake Hylia", Adult_Lake_Hylia)

{
    "region_name": "Lake Hylia",
    "scene": "Lake Hylia",
    "hint": "LAKE_HYLIA",
    "time_passes": true,
    "events": {
        "Bonooru": "is_child and Ocarina"
    },
    "locations": {
        "Pierre": "is_adult and Bonooru and not free_scarecrow",
        "LH Sun": "(can_use(Distant_Scarecrow) or 'Water Temple Clear') and can_use(Bow)",
        "LH Freestanding PoH": "
            is_adult and (can_use(Scarecrow) or here(Can_plant_bean))",
        "LH Underwater Item": "is_child and can_dive",
        "LH Underwater Near Shore Green Rupee": "is_child",
        "LH Underwater Green Rupee 1": "is_child and can_dive",
        "LH Underwater Green Rupee 2": "is_child and can_dive",
        "LH GS Bean Patch": "Can_plant_bugs and Can_child_attack",
        "LH GS Lab Wall": "
            is_child and at_night and
            (Boomerang or (logic_lab_wall_gs and (Sticks or Kokiri_Sword)))",
        "LH GS Small Island": "is_child and Can_child_attack and at_night",
        "LH GS Tree": "can_use(Longshot) and at_night",
        "LH Lab Gossip Stone": "True",
        "LH Gossip Stone (Southeast)": "True",
        "LH Gossip Stone (Southwest)": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and Has_bottle",
        "Bean Plant Fairy": "is_child and Can_plant_bean and can_play(Song_of_Storms) and Has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and Has_bottle",
        "Bug Shrub": "is_child and can_cut_shrubs and Has_bottle"
    },
    "exits": {
        "Hyrule Field": "True",
        "Zoras Domain": "is_child and can_dive",
        "LH Owl Flight": "is_child",
        "LH Lab": "True",
        "LH Fishing Island": 
            is_child or can_use(Scarecrow) or
            here(Can_plant_bean) or 'Water Temple Clear',
        "Water Temple Lobby": 
            is_adult and Hookshot and
            "(Iron_Boots or ((Longshot or logic_water_hookshot_entry) and (Progressive_Scale, 2))),
        "LH Grotto": "True"
    }
},
{
    "region_name": "LH Fishing Island",
    "scene": "Lake Hylia",
    "hint": "LAKE_HYLIA",
    "exits": {
        "Lake Hylia": "True",
        "LH Fishing Hole": "True"
    }
},
{
    "region_name": "LH Owl Flight",
    "scene": "Lake Hylia",
    "hint": "LAKE_HYLIA",
    "exits": {
        "Hyrule Field": "True"
    }
},
{
    "region_name": "LH Lab",
    "scene": "LH Lab",
    "events": {
        "Eyedrops Access": "
            is_adult and
            ('Eyeball Frog Access' or (Eyeball_Frog and disable_trade_revert))"
    },
    "locations": {
        "LH Lab Dive": "
            (Progressive_Scale, 2) or
            (logic_lab_diving and is_adult and Iron_Boots and Hookshot)",
        "LH Lab Dive Red Rupee 1": "(Progressive_Scale, 2) or can_use(Iron_Boots)",
        "LH Lab Dive Red Rupee 2": "(Progressive_Scale, 2) or can_use(Iron_Boots)",
        "LH Lab Dive Red Rupee 3": "(Progressive_Scale, 2) or can_use(Iron_Boots)",
        "LH GS Lab Crate": "
            Iron_Boots and can_use(Hookshot) and
            (deadly_bonks != 'ohko' or Fairy or (can_use(Nayrus_Love) and shuffle_interior_entrances == 'off'))"
    },
    "exits": {
        "Lake Hylia": "True"
    }
},
{
    "region_name": "LH Fishing Hole",
    "scene": "LH Fishing Hole",
    "locations": {
        "LH Child Fishing": "is_child",
        "LH Adult Fishing": "is_adult"
    },
    "exits": {
        "LH Fishing Island": "True"
    }
},
{
    "region_name": "LH Grotto",
    "scene": "LH Grotto",
    "locations": {
        "LH Deku Scrub Grotto Left": "Can_stun_deku",
        "LH Deku Scrub Grotto Right": "Can_stun_deku",
        "LH Deku Scrub Grotto Center": "Can_stun_deku",
        "LH Grotto Beehive": "Can_break_upper_beehive"
    },
    "exits": {
        "Lake Hylia": "True"
    }
},