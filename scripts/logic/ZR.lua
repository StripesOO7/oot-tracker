Child_ZR_Front = OOTLocation.new("Child_ZR_Front")
Child_Zora_River = OOTLocation.new("Child_Zora_River")
Child_ZR_Behind_Waterfall = OOTLocation.new("Child_ZR_Behind_Waterfall")
Child_ZR_Top_of_Waterfall = OOTLocation.new("Child_ZR_Top_of_Waterfall")
Child_ZR_Open_Grotto = OOTLocation.new("Child_ZR_Open_Grotto")
Child_ZR_Fairy_Grotto = OOTLocation.new("Child_ZR_Fairy_Grotto")
Child_ZR_Storms_Grotto = OOTLocation.new("Child_ZR_Storms_Grotto")

Adult_ZR_Front = OOTLocation.new("Adult_ZR_Front")
Adult_Zora_River = OOTLocation.new("Adult_Zora_River")
Adult_ZR_Behind_Waterfall = OOTLocation.new("Adult_ZR_Behind_Waterfall")
Adult_ZR_Top_of_Waterfall = OOTLocation.new("Adult_ZR_Top_of_Waterfall")
Adult_ZR_Open_Grotto = OOTLocation.new("Adult_ZR_Open_Grotto")
Adult_ZR_Fairy_Grotto = OOTLocation.new("Adult_ZR_Fairy_Grotto")
Adult_ZR_Storms_Grotto = OOTLocation.new("Adult_ZR_Storms_Grotto")

Child_ZR_Front:connect_one_way("Child ZR GS Tree", is_child and can_child_attack and can_bonk)
Adult_ZR_Front:connect_one_way("Adult ZR GS Tree", false)

Child_ZR_Front:connect_one_way_entrance("Child Zora River", is_adult or has_explosives)
Child_ZR_Front:connect_one_way_entrance("Child Hyrule Field")

Adult_ZR_Front:connect_one_way_entrance("Adult Zora River", is_adult or has_explosives)
Adult_ZR_Front:connect_one_way_entrance("Adult Hyrule Field")

Child_Zora_River:connect_one_way("Child ZR Magic Bean Salesman", is_child)
Child_Zora_River:connect_one_way("Child ZR Frogs Ocarina Game", is_child and Ocarina and Zeldas_Lullaby and Eponas_Song and
Sarias_Song and Suns_Song and Song_of_Time and Song_of_Storms)
Child_Zora_River:connect_one_way("Child ZR Frogs Zeldas Lullaby", is_child and can_play(Zeldas_Lullaby))
Child_Zora_River:connect_one_way("Child ZR Frogs Eponas Song", is_child and can_play(Eponas_Song))
Child_Zora_River:connect_one_way("Child ZR Frogs Sarias Song", is_child and can_play(Sarias_Song))
Child_Zora_River:connect_one_way("Child ZR Frogs Suns Song", is_child and can_play(Suns_Song))
Child_Zora_River:connect_one_way("Child ZR Frogs Song of Time", is_child and can_play(Song_of_Time))
Child_Zora_River:connect_one_way("Child ZR Frogs in the Rain", is_child and can_play(Song_of_Storms))
Child_Zora_River:connect_one_way("Child ZR Near Open Grotto Freestanding PoH", is_child or here(can_plant_bean) or Hover_Boots or logic_zora_river_lower)
Child_Zora_River:connect_one_way("Child ZR Near Domain Freestanding PoH", is_child or Hover_Boots or logic_zora_river_upper)
-- Child_Zora_River:connect_one_way("Child ZR Waterfall Red Rupee 1", is_adult and (Iron_Boots or logic_zora_river_rupees))
-- Child_Zora_River:connect_one_way("Child ZR Waterfall Red Rupee 2", is_adult and (Iron_Boots or logic_zora_river_rupees))
-- Child_Zora_River:connect_one_way("Child ZR Waterfall Red Rupee 3", is_adult and (Iron_Boots or logic_zora_river_rupees))
-- Child_Zora_River:connect_one_way("Child ZR Waterfall Red Rupee 4", is_adult and (Iron_Boots or logic_zora_river_rupees))
Child_Zora_River:connect_one_way("Child ZR GS Ladder", is_child and at_night and can_child_attack)
Child_Zora_River:connect_one_way("Child ZR GS Near Raised Grottos", can_use(Hookshot) and at_night)
Child_Zora_River:connect_one_way("Child ZR GS Above Bridge", can_use(Hookshot) and at_night)

-- Adult_Zora_River:connect_one_way("Adult ZR Magic Bean Salesman", is_child)
-- Adult_Zora_River:connect_one_way("Adult ZR Frogs Ocarina Game", is_child and Ocarina and Zeldas_Lullaby and Eponas_Song and
-- Sarias_Song and Suns_Song and Song_of_Time and Song_of_Storms)
-- Adult_Zora_River:connect_one_way("Adult ZR Frogs Zeldas Lullaby", is_child and can_play(Zeldas_Lullaby))
-- Adult_Zora_River:connect_one_way("Adult ZR Frogs Eponas Song", is_child and can_play(Eponas_Song))
-- Adult_Zora_River:connect_one_way("Adult ZR Frogs Sarias Song", is_child and can_play(Sarias_Song))
-- Adult_Zora_River:connect_one_way("Adult ZR Frogs Suns Song", is_child and can_play(Suns_Song))
-- Adult_Zora_River:connect_one_way("Adult ZR Frogs Song of Time", is_child and can_play(Song_of_Time))
-- Adult_Zora_River:connect_one_way("Adult ZR Frogs in the Rain", is_child and can_play(Song_of_Storms))
Adult_Zora_River:connect_one_way("Adult ZR Near Open Grotto Freestanding PoH", is_child or here(can_plant_bean) or Hover_Boots or logic_zora_river_lower)
Adult_Zora_River:connect_one_way("Adult ZR Near Domain Freestanding PoH", is_child or Hover_Boots or logic_zora_river_upper)
Adult_Zora_River:connect_one_way("Adult ZR Waterfall Red Rupee 1", is_adult and (Iron_Boots or logic_zora_river_rupees))
Adult_Zora_River:connect_one_way("Adult ZR Waterfall Red Rupee 2", is_adult and (Iron_Boots or logic_zora_river_rupees))
Adult_Zora_River:connect_one_way("Adult ZR Waterfall Red Rupee 3", is_adult and (Iron_Boots or logic_zora_river_rupees))
Adult_Zora_River:connect_one_way("Adult ZR Waterfall Red Rupee 4", is_adult and (Iron_Boots or logic_zora_river_rupees))
Adult_Zora_River:connect_one_way("Adult ZR GS Ladder", is_child and at_night and can_child_attack)
Adult_Zora_River:connect_one_way("Adult ZR GS Near Raised Grottos", can_use(Hookshot) and at_night)
Adult_Zora_River:connect_one_way("Adult ZR GS Above Bridge", can_use(Hookshot) and at_night)

Child_Zora_River:connect_one_way_entrance("Child ZR Front", Child_ZR_Front)
Child_Zora_River:connect_one_way_entrance("Child ZR Open Grotto", Child_ZR_Open_Grotto)
Child_Zora_River:connect_one_way_entrance("Child ZR Fairy Grotto", Child_ZR_Fairy_Grotto, function() return here(can_blast_or_smash) end)
Child_Zora_River:connect_one_way_entrance("Child LW Underwater Entrance", Child_LW_Underwater_Entrance, function() return can_dive or can_use(Iron_Boots) end)
Child_Zora_River:connect_one_way_entrance("Child ZR Storms Grotto", Child_ZR_Storms_Grotto, function() return can_open_storm_grotto end)
Child_Zora_River:connect_one_way_entrance("Child ZR Behind Waterfall", Child_ZR_Behind_Waterfall, can_play(Zeldas_Lullaby) or
(can_use(Hover_Boots) and logic_zora_with_hovers) or
(is_child and logic_zora_with_cucco))

Adult_Zora_River:connect_one_way_entrance("Adult ZR Front", Adult_ZR_Front)
Adult_Zora_River:connect_one_way_entrance("Adult ZR Open Grotto", Adult_ZR_Open_Grotto)
Adult_Zora_River:connect_one_way_entrance("Adult ZR Fairy Grotto", Adult_ZR_Fairy_Grotto, function() return here(can_blast_or_smash) end)
Adult_Zora_River:connect_one_way_entrance("Adult LW Underwater Entrance", Adult_LW_Underwater_Entrance, function() return can_dive or can_use(Iron_Boots) end)
Adult_Zora_River:connect_one_way_entrance("Adult ZR Storms Grotto", Adult_ZR_Storms_Grotto, function() return can_open_storm_grotto end)
Adult_Zora_River:connect_one_way_entrance("Adult ZR Behind Waterfall", Adult_ZR_Behind_Waterfall, can_play(Zeldas_Lullaby) or
(can_use(Hover_Boots) and logic_zora_with_hovers) or
(is_child and logic_zora_with_cucco))

-- Child_ZR_Behind_Waterfall:connect_one_way()
-- Adult_ZR_Behind_Waterfall:connect_one_way()

Child_ZR_Behind_Waterfall:connect_one_way_entrance("Child Zora River", Child_Zora_River)
Child_ZR_Behind_Waterfall:connect_one_way_entrance("Child Zoras Domain", Child_Zora_Domain)

Adult_ZR_Behind_Waterfall:connect_one_way_entrance("Adult Zora River", Adult_Zora_River)
Adult_ZR_Behind_Waterfall:connect_one_way_entrance("Adult Zoras Domain", Adult_Zoras_Domain)

-- Child_ZR_Top_of_Waterfall:connect_one_way()
-- Adult_ZR_Top_of_Waterfall:connect_one_way()

Child_ZR_Top_of_Waterfall:connect_one_way_entrance("Child Zora River", Child_Zora_River)
Adult_ZR_Top_of_Waterfall:connect_one_way_entrance("Adult Zora River", Adult_Zora_River)

Child_ZR_Open_Grotto:connect_one_way("Child ZR Open Grotto Chest")
Child_ZR_Open_Grotto:connect_one_way("Child ZR Open Grotto Beehive 1", function() return can_break_lower_beehive end)
Child_ZR_Open_Grotto:connect_one_way("Child ZR Open Grotto Beehive 2", function() return can_break_lower_beehive end)
Child_ZR_Open_Grotto:connect_one_way("Child ZR Open Grotto Gossip Stone")

Adult_ZR_Open_Grotto:connect_one_way("Adult ZR Open Grotto Chest")
Adult_ZR_Open_Grotto:connect_one_way("Adult ZR Open Grotto Beehive 1", function() return can_break_lower_beehive end)
Adult_ZR_Open_Grotto:connect_one_way("Adult ZR Open Grotto Beehive 2", function() return can_break_lower_beehive end)
Adult_ZR_Open_Grotto:connect_one_way("Adult ZR Open Grotto Gossip Stone")

Child_ZR_Open_Grotto:connect_one_way_entrance("Child Zora River", Child_Zora_River)
Adult_ZR_Open_Grotto:connect_one_way_entrance("Adult Zora River", Adult_Zora_River)

-- Child_ZR_Fairy_Grotto:connect_one_way()
-- Adult_ZR_Fairy_Grotto:connect_one_way()

Child_ZR_Fairy_Grotto:connect_one_way_entrance("Child Zora River", Child_Zora_River)
Adult_ZR_Fairy_Grotto:connect_one_way_entrance("Adult Zora River", Adult_Zora_River)

Child_ZR_Storms_Grotto:connect_one_way("Child ZR Deku Scrub Grotto Rear", function() return can_stun_deku end)
Child_ZR_Storms_Grotto:connect_one_way("Child ZR Deku Scrub Grotto Front", function() return can_stun_deku end)
Child_ZR_Storms_Grotto:connect_one_way("Child ZR Storms Grotto Beehive", function() return can_break_upper_beehive end)

Adult_ZR_Storms_Grotto:connect_one_way("Adult ZR Deku Scrub Grotto Rear", function() return can_stun_deku end)
Adult_ZR_Storms_Grotto:connect_one_way("Adult ZR Deku Scrub Grotto Front", function() return can_stun_deku end)
Adult_ZR_Storms_Grotto:connect_one_way("Adult ZR Storms Grotto Beehive", function() return can_break_upper_beehive end)


Child_ZR_Storms_Grotto:connect_one_way_entrance("Child Zora River", Child_Zora_River)
Adult_ZR_Storms_Grotto:connect_one_way_entrance("Adult Zora River", Adult_Zora_River)


{
    "region_name": "ZR Front",
    "scene": "Zora River",
    "hint": "ZORA_RIVER",
    "time_passes": true,
    "locations": {
        "ZR GS Tree": "is_child and can_child_attack and can_bonk"
    },
    "exits": {
        "Zora River": "is_adult or has_explosives",
        "Hyrule Field": "True"
    }
},
{
    "region_name": "Zora River",
    "scene": "Zora River",
    "hint": "ZORA_RIVER",
    "time_passes": true,
    "locations": {
        "ZR Magic Bean Salesman": "is_child",
        "ZR Frogs Ocarina Game": "
            is_child and Ocarina and Zeldas_Lullaby and Eponas_Song and
            Sarias_Song and Suns_Song and Song_of_Time and Song_of_Storms",
        "ZR Frogs Zeldas Lullaby": "is_child and can_play(Zeldas_Lullaby)",
        "ZR Frogs Eponas Song": "is_child and can_play(Eponas_Song)",
        "ZR Frogs Sarias Song": "is_child and can_play(Sarias_Song)",
        "ZR Frogs Suns Song": "is_child and can_play(Suns_Song)",
        "ZR Frogs Song of Time": "is_child and can_play(Song_of_Time)",
        "ZR Frogs in the Rain": "is_child and can_play(Song_of_Storms)",
        "ZR Near Open Grotto Freestanding PoH": "
            is_child or here(can_plant_bean) or Hover_Boots or logic_zora_river_lower",
        "ZR Near Domain Freestanding PoH": "is_child or Hover_Boots or logic_zora_river_upper",
        "ZR Waterfall Red Rupee 1": "is_adult and (Iron_Boots or logic_zora_river_rupees)",
        "ZR Waterfall Red Rupee 2": "is_adult and (Iron_Boots or logic_zora_river_rupees)",
        "ZR Waterfall Red Rupee 3": "is_adult and (Iron_Boots or logic_zora_river_rupees)",
        "ZR Waterfall Red Rupee 4": "is_adult and (Iron_Boots or logic_zora_river_rupees)",
        "ZR GS Ladder": "is_child and at_night and can_child_attack",
        "ZR GS Near Raised Grottos": "can_use(Hookshot) and at_night",
        "ZR GS Above Bridge": "can_use(Hookshot) and at_night",
        "ZR Near Grottos Gossip Stone": "True",
        "ZR Near Domain Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Bean Plant Fairy": "is_child and can_plant_bean and can_play(Song_of_Storms) and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Shrub": "
            (is_child or here(can_plant_bean) or Hover_Boots or logic_zora_river_lower) and
            can_cut_shrubs and has_bottle"
    },
    "exits": {
        "ZR Front": "True",
        "ZR Open Grotto": "True",
        "ZR Fairy Grotto": "here(can_blast_or_smash)",
        "LW Underwater Entrance": "can_dive or can_use(Iron_Boots)",
        "ZR Storms Grotto": "can_open_storm_grotto",
        "ZR Behind Waterfall": "
            can_play(Zeldas_Lullaby) or
            (can_use(Hover_Boots) and logic_zora_with_hovers) or
            (is_child and logic_zora_with_cucco)"
    }
},
{
    "region_name": "ZR Behind Waterfall",
    "scene": "Zora River",
    "hint": "ZORA_RIVER",
    "exits": {
        "Zora River": "True",
        "Zoras Domain": "True"
    }
},
{
    "region_name": "ZR Top of Waterfall",
    "scene": "Zora River",
    "hint": "ZORA_RIVER",
    "exits": {
        "Zora River": "True"
    }
},
{
    "region_name": "ZR Open Grotto",
    "scene": "ZR Open Grotto",
    "locations": {
        "ZR Open Grotto Chest": "True",
        "ZR Open Grotto Beehive 1": "can_break_lower_beehive",
        "ZR Open Grotto Beehive 2": "can_break_lower_beehive",
        "ZR Open Grotto Gossip Stone": "True",
        "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
        "Butterfly Fairy": "can_use(Sticks) and has_bottle",
        "Bug Shrub": "can_cut_shrubs and has_bottle",
        "Lone Fish": "has_bottle"
    },
    "exits": {
        "Zora River": "True"
    }
},
{
    "region_name": "ZR Fairy Grotto",
    "scene": "ZR Fairy Grotto",
    "locations": {
        "Free Fairies": "has_bottle"
    },
    "exits": {
        "Zora River": "True"
    }
},
{
    "region_name": "ZR Storms Grotto",
    "scene": "ZR Storms Grotto",
    "locations": {
        "ZR Deku Scrub Grotto Rear": "can_stun_deku",
        "ZR Deku Scrub Grotto Front": "can_stun_deku",
        "ZR Storms Grotto Beehive": "can_break_upper_beehive"
    },
    "exits": {
        "Zora River": "True"
    }
},