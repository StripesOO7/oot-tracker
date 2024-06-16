Child_Lake_Hylia = OOTLocation.new("Child_Lake_Hylia")
Child_LH_Owl_Flight = OOTLocation.new("Child_LH_Owl_Flight")
Child_LH_Lab = OOTLocation.new("Child_LH_Lab")
Child_LH_Fishing_Island = OOTLocation.new("Child_LH_Fishing_Island")
Child_LH_Grotto = OOTLocation.new("Child_LH_Grotto")
Child_Fishing_Hole = OOTLocation.new("Child_Fishing_Hole")

Adult_Lake_Hylia = OOTLocation.new("Adult_Lake_Hylia")
Adult_LH_Fishing_Island = OOTLocation.new("Adult_LH_Fishing_Island")
Adult_LH_Grotto = OOTLocation.new("Adult_LH_Grotto")
Adult_Fishing_Hole = OOTLocation.new("Adult_Fishing_Hole")
Adult_LH_Lab = OOTLocation.new("Adult_LH_Lab")

Child_Lake_Hylia:connect_one_way("LH Underwater Item", function() return Has("ProgressiveScale") end)
-- Child_Lake_Hylia:connect_one_way("LH Sun")
Child_Lake_Hylia:connect_one_way("LH Underwater Near Shore Green Rupee")
Child_Lake_Hylia:connect_one_way("LH Underwater Green Rupee 1", function() return Has("ProgressiveScale") end)
Child_Lake_Hylia:connect_one_way("LH Underwater Green Rupee 2", function() return Has("ProgressiveScale") end)
Child_Lake_Hylia:connect_one_way("LH GS Bean Patch", function()
    return All(
        Has("Bottle"),
        CanChildAttack()
    )
end)
Child_Lake_Hylia:connect_one_way("LH GS Lab Wall", function()
    return All(
        --at night,
        Any(
            Has("Boomerang"),
            All(
                --logic_lab_wall_gs,
                Any(
                    Has("DekuSticks"),
                    Has("KokiriSword")
                )
            )
        )
    )
end)
Child_Lake_Hylia:connect_one_way("LH GS Small Island", function()
    return All(
        CanDive(),
        CanChildAttack()
    )
end)
Child_Lake_Hylia:connect_one_way("LH Lab Gossip Stone")
Child_Lake_Hylia:connect_one_way("LH Gossip Stone (Southeast)")
Child_Lake_Hylia:connect_one_way("LH Gossip Stone (Southwest)")
Child_Lake_Hylia:connect_one_way("Gossip Stone Fairy")
Child_Lake_Hylia:connect_one_way("Bean Plant Fairy")
Child_Lake_Hylia:connect_one_way("Butterfly Fairy")
Child_Lake_Hylia:connect_one_way("Bug Shrub")

Adult_Lake_Hylia:connect_one_way("Pierre", function ()
    return All(
        CanReach(Child_Lake_Hylia),
        Has("Ocarina"),
        -- not free scarecrow()
    )
end)
Adult_Lake_Hylia:connect_one_way("LH Sun", function()
    return All(
        Has("Bow"),
        Any(
            Child_Water_Temple_Boss.accessibility == 7,
            Adult_Water_Temple_Boss.accessibility == 7,
            CanUse("Distant_Scarecrow")
        )
    )
end)
Adult_Lake_Hylia:connect_one_way("LH Freestanding PoH", function()
    return Any(
        Has("MagicBeans"),
        CanUse("Scarecrow")
    )
end)
Adult_Lake_Hylia:connect_one_way("LH GS Tree", function()
    return All(
        Has("Hookshot"),
        --at night
    )
end)
Adult_Lake_Hylia:connect_one_way("LH Lab Gossip Stone")
Adult_Lake_Hylia:connect_one_way("LH Gossip Stone (Southeast)")
Adult_Lake_Hylia:connect_one_way("LH Gossip Stone (Southwest)")
Adult_Lake_Hylia:connect_one_way("Gossip Stone Fairy")


Child_Lake_Hylia:connect_one_way_entrance("Child Hyrule Fields", Child_Hyrule_Fields)
Child_Lake_Hylia:connect_one_way_entrance("Child Zora Domains", Child_Zora_Domain, function() return CanDive() end)
Child_Lake_Hylia:connect_one_way_entrance("Child LH Own Flight", Child_LH_Owl_Flight)
Child_Lake_Hylia:connect_one_way_entrance("Child LH Lab", Child_LH_Lab)
Child_Lake_Hylia:connect_one_way_entrance("Child LH Fishing Island", Child_LH_Fishing_Island)
Child_Lake_Hylia:connect_one_way_entrance("Child LH Grotto", Child_LH_Grotto)
Child_Lake_Hylia:connect_one_way_entrance()

Adult_Lake_Hylia:connect_one_way_entrance("Adult Hyrule Fields", Adult_Hyrule_Fields)
Adult_Lake_Hylia:connect_one_way_entrance("Adult_LH_Lab", Adult_LH_Lab)
Adult_Lake_Hylia:connect_one_way_entrance("Adult LH Fishing Island", Adult_LH_Fishing_Island, function()
    return Any(
        Child_Water_Temple_Boss.accessibility == 7,
        Adult_Water_Temple_Boss.accessibility == 7,
        CanUser("Scarecrow"),
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

Child_LH_Lab:connect_one_way("LH Lab Dive", function() return Has("GoldenScale") end)
Child_LH_Lab:connect_one_way("LH Lab Dive Red Rupee 1", function() return Has("GoldenScale") end)
Child_LH_Lab:connect_one_way("LH Lab Dive Red Rupee 2", function() return Has("GoldenScale") end)
Child_LH_Lab:connect_one_way("LH Lab Dive Red Rupee 3", function() return Has("GoldenScale") end)

Adult_LH_Lab:connect_one_way("LH Lab Dive", function()
    return All(
        Has("IronBoots"),
        logic_lab_dive,
        Has("Hookshot")
    )
end)
Adult_LH_Lab:connect_one_way("LH Lab Dive Red Rupee 1", function() return Has("IronBoots") end)
Adult_LH_Lab:connect_one_way("LH Lab Dive Red Rupee 2", function() return Has("IronBoots") end)
Adult_LH_Lab:connect_one_way("LH Lab Dive Red Rupee 3", function() return Has("IronBoots") end)
Adult_LH_Lab:connect_one_way("LH GS Lab Crate", function()
    return All(
        Has("IronBoots"),
        Has("Hookshot"),
        Any(
            deadly_bonks ~= ohko,
            -- has("Fairy"),
            CanUse("NayrusLove"),
            shuffle_interior_entrance == off
        )
    )
end)

Child_LH_Lab:connect_one_way_entrance("Child Lake Hyila", Child_Lake_Hylia)
Adult_LH_Lab:connect_one_way_entrance("Adult Lake Hyila", Adult_Lake_Hylia)



Child_Fishing_Hole.connect_one_way("Child LH Child Fishing")
Adult_Fishing_Hole.connect_one_way("Adult LH Adult Fishing")

Child_Fishing_Hole:connect_one_way_entrance("Child Lake Hylia", Child_Lake_Hylia)
Adult_Fishing_Hole:connect_one_way_entrance("Adult Lake Hylia", Adult_Lake_Hylia)

Child_LH_Grotto:connect_one_way("Child LH Deku Scrub Grotto Left", function() return CanStunDeku() end)
Child_LH_Grotto:connect_one_way("Child LH Deku Scrub Grotto Right", function() return CanStunDeku() end)
Child_LH_Grotto:connect_one_way("Child LH Deku Scrub Grotto Center", function() return CanStunDeku() end)
Child_LH_Grotto:connect_one_way("Child LH Grotto Beehive", function() return CanBreakUpperBeehive() end)

Adult_LH_Grotto:connect_one_way("Adult LH Deku Scrub Grotto Left", function() return CanStunDeku() end)
Adult_LH_Grotto:connect_one_way("Adult LH Deku Scrub Grotto Right", function() return CanStunDeku() end)
Adult_LH_Grotto:connect_one_way("Adult LH Deku Scrub Grotto Center", function() return CanStunDeku() end)
Adult_LH_Grotto:connect_one_way("Adult LH Grotto Beehive", function() return CanBreakUpperBeehive() end)

Child_LH_Grotto:connect_one_way_entrance("Child Lake Hylia", Child_Lake_Hylia)
Adult_LH_Grotto:connect_one_way_entrance("Adult Lake Hylia", Adult_Lake_Hylia)

"locations": {
    "Pierre": "is_adult and Bonooru and not free_scarecrow",
    "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
    "Bean Plant Fairy": "is_child and can_plant_bean and can_play(Song_of_Storms) and has_bottle",
    "Butterfly Fairy": "can_use(Sticks) and has_bottle",
    "Bug Shrub": "is_child and can_cut_shrubs and has_bottle"
},


{
    "region_name": "LH Grotto",
    "scene": "LH Grotto",
    "locations": {
        "LH Deku Scrub Grotto Left": "can_stun_deku",
        "LH Deku Scrub Grotto Right": "can_stun_deku",
        "LH Deku Scrub Grotto Center": "can_stun_deku",
        "LH Grotto Beehive": "can_break_upper_beehive"
    },
    "exits": {
        "Lake Hylia": "True"
    }
},