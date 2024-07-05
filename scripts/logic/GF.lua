-- Child_Gerudo_Fortress = OOTLocation.new("Child_Gerudo_Fortress")
-- Child_GF_Entrances_Behind_Crates = OOTLocation.new("Child_GF_Entrances_Behind_Crates")
-- Child_GF_Roof_Entrance_Cluster = OOTLocation.new("Child_GF_Roof_Entrance_Cluster")
-- Child_GF_Kitchen_Roof_Access = OOTLocation.new("Child_GF_Kitchen_Roof_Access")
-- Child_GF_Hall_to_Balcony_Entrance = OOTLocation.new("Child_GF_Hall_to_Balcony_Entrance")
-- Child_GF_Outside_Gate = OOTLocation.new("Child_GF_Outside_Gate")
-- Child_GF_Storms_Grotto = OOTLocation.new("Child_GF_Storms_Grotto")
-- Child_GF_3_Torches_Jail_Exterior = OOTLocation.new("Child_GF_3_Torches_Jail_Exterior")
-- Child_GF_Chest_Roof = OOTLocation.new("Child_GF_Chest_Roof")
-- Child_GF_Roof_Gold_Skulltula = OOTLocation.new("Child_GF_Roof_Gold_Skulltula")
-- Child_GF_Hall_to_Balcony_Entrance = OOTLocation.new("Child_GF_Hall_to_Balcony_Entrance")
-- Child_GF_Balcony = OOTLocation.new("Child_GF_Balcony")


-- Adult_Gerudo_Fortress = OOTLocation.new("Adult_Gerudo_Fortress")
-- Adult_GF_Entrances_Behind_Crates = OOTLocation.new("Adult_GF_Entrances_Behind_Crates")
-- Adult_GF_Roof_Entrance_Cluster = OOTLocation.new("Adult_GF_Roof_Entrance_Cluster")
-- Adult_GF_Kitchen_Roof_Access = OOTLocation.new("Adult_GF_Kitchen_Roof_Access")
-- Adult_GF_Hall_to_Balcony_Entrance = OOTLocation.new("Adult_GF_Hall_to_Balcony_Entrance")
-- Adult_GF_Outside_Gate = OOTLocation.new("Adult_GF_Outside_Gate")
-- Adult_GF_Storms_Grotto = OOTLocation.new("Adult_GF_Storms_Grotto")
-- Adult_GF_3_Torches_Jail_Exterior = OOTLocation.new("Adult_GF_3_Torches_Jail_Exterior")
-- Adult_GF_Chest_Roof = OOTLocation.new("Adult_GF_Chest_Roof")
-- Adult_GF_Roof_Gold_Skulltula = OOTLocation.new("Adult_GF_Roof_Gold_Skulltula")
-- Adult_GF_Hall_to_Balcony_Entrance = OOTLocation.new("Adult_GF_Hall_to_Balcony_Entrance")
-- Adult_GF_Balcony = OOTLocation.new("Adult_GF_Balcony")


Child_Gerudo_Fortress:connect_one_way("Child GF HBA 1000 Points", function()
    return All(
        Has("GerudoMembershipCard"),
        --at day,
        Can_ride_epona("child"),
        Can_use("Bow", "child")
    )
end)
Child_Gerudo_Fortress:connect_one_way("Child GF HBA 1500 Points", function()
    return All(
        Has("GerudoMembershipCard"),
        --at day,
        Can_ride_epona("child"),
        Can_use("Bow", "child")
    )
end)
Child_Gerudo_Fortress:connect_one_way("Child GF GS Archery Range", function()
    return All(
        Can_use("Hookshot", "child"),
        Has("GerudoMembershipCard")
        --at night
    )
end)

Adult_Gerudo_Fortress:connect_one_way("Adult GF HBA 1000 Points", function()
    return All(
        Has("GerudoMembershipCard"),
        --at day,
        Can_ride_epona("adult"),
        Can_use("Bow", "adult")
    )
end)
Adult_Gerudo_Fortress:connect_one_way("Adult GF HBA 1500 Points", function()
    return All(
        Has("GerudoMembershipCard"),
        --at day,
        Can_ride_epona("adult"),
        Can_use("Bow", "adult")
    )
end)
Adult_Gerudo_Fortress:connect_one_way("Adult GF GS Archery Range", function()
    return All(
        Can_use("Hookshot", "adult"),
        Has("GerudoMembershipCard")
        --at night
    )
end)


Child_Gerudo_Fortress:connect_one_way_entrance("Child GV Fortress Side", Child_GV_Fortress_Side)
Child_Gerudo_Fortress:connect_one_way_entrance("Child Hideout 1 Torch Jail", Child_Hideout_1_Torch_Jail)
Child_Gerudo_Fortress:connect_one_way_entrance("Child Hideout 2 Torches Jail", Child_Hideout_2_Torches_Jail)
Child_Gerudo_Fortress:connect_one_way_entrance("Child Hideout 4 Torches Jail", Child_Hideout_4_Torches_Jail)
Child_Gerudo_Fortress:connect_one_way_entrance("Child Hideout Kitchen Hallway", Child_Hideout_Kitchen_Hallway)
Child_Gerudo_Fortress:connect_one_way_entrance("Child GF Entrances Behind Crates", Child_GF_Entrances_Behind_Crates)
Child_Gerudo_Fortress:connect_one_way_entrance("Child GF Roof Entrance Cluster", Child_GF_Roof_Entrance_Cluster, function()
    return Any(
        Can_use("HoverBoots", "child"),
        Has("logic_gf_jump")
    )
end)
Child_Gerudo_Fortress:connect_one_way_entrance("Child GF Kitchen Roof Access", Child_GF_Kitchen_Roof_Access, function()
    return All(
        Can_use("Longshot", "child"),
        Has("GerudoMembershipCard")
    )
end)
Child_Gerudo_Fortress:connect_one_way_entrance("Child GF Hall to Balcony Entrance", Child_GF_Hall_to_Balcony_Entrance, function() return Can_use("Longshot", "child") end)
Child_Gerudo_Fortress:connect_one_way_entrance("Child GF Outside Gate", Child_GF_Outside_Gate, function() return false end)
Child_Gerudo_Fortress:connect_one_way_entrance("Child Gerudo Training Ground Lobby", Child_Gerudo_Training_Ground_Lobby, function() return false end)

Adult_Gerudo_Fortress:connect_one_way_entrance("Adult GV Fortress Side", Adult_GV_Fortress_Side)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult Hideout 1 Torch Jail", Adult_Hideout_1_Torch_Jail)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult Hideout 2 Torches Jail", Adult_Hideout_2_Torches_Jail)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult Hideout 4 Torches Jail", Adult_Hideout_4_Torches_Jail)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult Hideout Kitchen Hallway", Adult_Hideout_Kitchen_Hallway)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult GF Entrances Behind Crates", Adult_GF_Entrances_Behind_Crates)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult GF Roof Entrance Cluster", Adult_GF_Roof_Entrance_Cluster, function()
    return Any(
        Can_use("HoverBoots", "adult"),
        Has("logic_gf_jump")
    )
end)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult GF Kitchen Roof Access", Adult_GF_Kitchen_Roof_Access, function()
    return All(
        Can_use("Longshot", "adult"),
        Has("GerudoMembershipCard")
    )
end)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult GF Hall to Balcony Entrance", Adult_GF_Hall_to_Balcony_Entrance, function() return Can_use("Longshot", "adult") end)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult GF Outside Gate", Adult_GF_Outside_Gate, function() return Has("GerudoMembershipCard") end)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult Gerudo Training Ground Lobby", Adult_Gerudo_Training_Ground_Lobby, function() return Has("GerudoMembershipCard") end)


Child_GF_Entrances_Behind_Crates:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_GF_Entrances_Behind_Crates:connect_one_way_entrance("Child Hideout 1 Torch Jail", Child_Hideout_1_Torch_Jail)
Child_GF_Entrances_Behind_Crates:connect_one_way_entrance("Child Hideout Kitchen Hallway", Child_Hideout_Kitchen_Hallway)
Child_GF_Entrances_Behind_Crates:connect_one_way_entrance("Child GF Roof Entrance Cluster", Child_GF_Roof_Entrance_Cluster, function() return Can_use("Longshot", "child") end)
Child_GF_Entrances_Behind_Crates:connect_one_way_entrance("Child GF Storms Grotto", Child_GF_Storms_Grotto, function() return false end)

Adult_GF_Entrances_Behind_Crates:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_GF_Entrances_Behind_Crates:connect_one_way_entrance("Adult Hideout 1 Torch Jail", Adult_Hideout_1_Torch_Jail)
Adult_GF_Entrances_Behind_Crates:connect_one_way_entrance("Adult Hideout Kitchen Hallway", Adult_Hideout_Kitchen_Hallway)
Adult_GF_Entrances_Behind_Crates:connect_one_way_entrance("Adult GF Roof Entrance Cluster", Adult_GF_Roof_Entrance_Cluster, function() return Can_use("Longshot", "adult") end)
Adult_GF_Entrances_Behind_Crates:connect_one_way_entrance("Adult GF Storms Grotto", Adult_GF_Storms_Grotto, function() return Can_open_storm_grotto("adult") end)

Child_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Child Hideout 2 Torches Jail", Child_Hideout_2_Torches_Jail)
Child_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Child Hideout 4 Torches Jail", Child_Hideout_4_Torches_Jail)
Child_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Child Hideout Kitchen Front", Child_Hideout_Kitchen_Front)
Child_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Child GF Entrances Behind Crates", Child_GF_Entrances_Behind_Crates)
Child_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Child GF Kitchen Roof Access", Child_GF_Kitchen_Roof_Access, function() return false end)

Adult_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Adult Hideout 2 Torches Jail", Adult_Hideout_2_Torches_Jail)
Adult_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Adult Hideout 4 Torches Jail", Adult_Hideout_4_Torches_Jail)
Adult_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Adult Hideout Kitchen Front", Adult_Hideout_Kitchen_Front)
Adult_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Adult GF Entrances Behind Crates", Adult_GF_Entrances_Behind_Crates)
Adult_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Adult GF Kitchen Roof Access", Adult_GF_Kitchen_Roof_Access, function() return Has("logic_gf_jump") end)


Child_GF_Kitchen_Roof_Access:connect_one_way_entrance("Child Hideout Kitchen Rear", Child_Hideout_Kitchen_Rear)
Child_GF_Kitchen_Roof_Access:connect_one_way_entrance("Child GF 3 Torches Jail Exterior", Child_GF_3_Torches_Jail_Exterior)
Child_GF_Kitchen_Roof_Access:connect_one_way_entrance("Child GF Chest Roof", Child_GF_Chest_Roof, function() return false end)
Child_GF_Kitchen_Roof_Access:connect_one_way_entrance("Child GF Roof Gold Skulltula", Child_GF_Roof_Gold_Skulltula)

Adult_GF_Kitchen_Roof_Access:connect_one_way_entrance("Adult Hideout Kitchen Rear", Adult_Hideout_Kitchen_Rear)
Adult_GF_Kitchen_Roof_Access:connect_one_way_entrance("Adult GF 3 Torches Jail Exterior", Adult_GF_3_Torches_Jail_Exterior)
Adult_GF_Kitchen_Roof_Access:connect_one_way_entrance("Adult GF Chest Roof", Adult_GF_Chest_Roof, function()
    return Any(
        Can_use("HoverBoots", "adult"),
        Can_use("Scarecrow", "adult"),
        Can_use("Longshot", "adult")
    )
end)
Adult_GF_Kitchen_Roof_Access:connect_one_way_entrance("Adult GF Roof Gold Skulltula", Adult_GF_Roof_Gold_Skulltula)

Child_GF_3_Torches_Jail_Exterior:connect_one_way_entrance("Child Hideout 3 Torches Jail", Child_Hideout_3_Torches_Jail)
Child_GF_3_Torches_Jail_Exterior:connect_one_way_entrance("Child GF Roof Entrance Cluster", Child_GF_Roof_Entrance_Cluster)
Child_GF_3_Torches_Jail_Exterior:connect_one_way_entrance("Child GF Roof Gold Skulltula", Child_GF_Roof_Gold_Skulltula, function() return Can_use("Longshot", "child") end)

Adult_GF_3_Torches_Jail_Exterior:connect_one_way_entrance("Adult Hideout 3 Torches Jail", Adult_Hideout_3_Torches_Jail)
Adult_GF_3_Torches_Jail_Exterior:connect_one_way_entrance("Adult GF Roof Entrance Cluster", Adult_GF_Roof_Entrance_Cluster)
Adult_GF_3_Torches_Jail_Exterior:connect_one_way_entrance("Adult GF Roof Gold Skulltula", Adult_GF_Roof_Gold_Skulltula, function() return Can_use("Longshot", "adult") end)


Child_GF_Chest_Roof:connect_one_way("Child GF Chest")
Adult_GF_Chest_Roof:connect_one_way("Adult GF Chest")

Child_GF_Chest_Roof:connect_one_way_entrance("Child GF Kitchen Roof Access", Child_GF_Kitchen_Roof_Access)
Child_GF_Chest_Roof:connect_one_way_entrance("Child GF Hall to Balcony Entrance", Child_GF_Hall_to_Balcony_Entrance)

Adult_GF_Chest_Roof:connect_one_way_entrance("Adult GF Kitchen Roof Access", Adult_GF_Kitchen_Roof_Access)
Adult_GF_Chest_Roof:connect_one_way_entrance("Adult GF Hall to Balcony Entrance", Adult_GF_Hall_to_Balcony_Entrance)


Child_GF_Roof_Gold_Skulltula:connect_one_way("Child GF GS Top Floor", function() return false end)
Adult_GF_Roof_Gold_Skulltula:connect_one_way("Adult GF GS Top Floor", function() return true end) --atnight


Child_GF_Hall_to_Balcony_Entrance:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_GF_Hall_to_Balcony_Entrance:connect_one_way_entrance("Child Hideout Hall to Balcony Lower", Child_Hideout_Hall_to_Balcony_Lower)

Adult_GF_Hall_to_Balcony_Entrance:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_GF_Hall_to_Balcony_Entrance:connect_one_way_entrance("Adult Hideout Hall to Balcony Lower", Adult_Hideout_Hall_to_Balcony_Lower)

Child_GF_Balcony:connect_one_way("Child GF Above Jail Crate", function() return false end)
Adult_GF_Balcony:connect_one_way("Adult GF Above Jail Crate", function() return Can_break_crate("adult") end)

Child_GF_Balcony:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_GF_Balcony:connect_one_way_entrance("Child Hideout Hall to Balcony Upper", Child_Hideout_Hall_to_Balcony_Upper)
Child_GF_Balcony:connect_one_way_entrance("Child GF Chest Roof", Child_GF_Chest_Roof, function() return Can_use("Longshot", "child") end)
Child_GF_Balcony:connect_one_way_entrance("Child GF Hall to Balcony Entrance", Child_GF_Hall_to_Balcony_Entrance, function()
    return Any(
        Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4,
        Can_use("NayrusLove", "child"),
        Can_use("Hookshot", "child")
    )
end)

Adult_GF_Balcony:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_GF_Balcony:connect_one_way_entrance("Adult Hideout Hall to Balcony Upper", Adult_Hideout_Hall_to_Balcony_Upper)
Adult_GF_Balcony:connect_one_way_entrance("Adult GF Chest Roof", Adult_GF_Chest_Roof, function() return Can_use("Longshot", "adult") end)
Adult_GF_Balcony:connect_one_way_entrance("Adult GF Hall to Balcony Entrance", Adult_GF_Hall_to_Balcony_Entrance, function()
    return Any(
        Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4,
        Can_use("NayrusLove", "adult"),
        Can_use("Hookshot", "adult")
    )
end)


Child_GF_Outside_Gate:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress, function()
    return All(
        Has("GerudoMembershipCard"),
        Has("shuffle_overworld_entrances")
    )
end)
Child_GF_Outside_Gate:connect_one_way_entrance("Child Wasteland Near Fortress", Child_Wasteland_Near_Fortress)

Adult_GF_Outside_Gate:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_GF_Outside_Gate:connect_one_way_entrance("Adult Wasteland Near Fortress", Adult_Wasteland_Near_Fortress)


Child_GF_Storms_Grotto:connect_one_way("Free Fairies", function() return Has("Bottles") end)

Adult_GF_Storms_Grotto:connect_one_way("Free Fairies", function() return Has("Bottles") end)

Child_GF_Storms_Grotto:connect_one_way_entrance("Child GF Entrances Behind Crates", Child_GF_Entrances_Behind_Crates)
Adult_GF_Storms_Grotto:connect_one_way_entrance("Adult GF Entrances Behind Crates", Adult_GF_Entrances_Behind_Crates)

-- {
--     "region_name": "Gerudo Fortress",
--     "scene": "Gerudo Fortress",
--     "hint": "GERUDO_FORTRESS",
--     "events": {
--         "GF Gate Open": "is_adult and Gerudo_Membership_Card"
--     },
--     "locations": {
--         "GF HBA 1000 Points": "
--             Gerudo_Membership_Card and can_ride_epona and Bow and at_day",
--         "GF HBA 1500 Points": "
--             Gerudo_Membership_Card and can_ride_epona and Bow and at_day",
--         "GF GS Archery Range": "
--             can_use(Hookshot) and Gerudo_Membership_Card and at_night"
--     },
--     "exits": {
--         "GV Fortress Side": "True",
--         "Hideout 1 Torch Jail": "True",
--         "Hideout 2 Torches Jail": "True",
--         "Hideout 4 Torches Jail": "True",
--         "Hideout Kitchen Hallway": "True",
--         "GF Entrances Behind Crates": "True",
--         "GF Roof Entrance Cluster": "can_use(HoverBoots) or Has("logic_gf_jump")",
--         "GF Kitchen Roof Access": "Gerudo_Membership_Card and can_use(Longshot)",
--         "GF Hall to Balcony Entrance": "can_use(Longshot)", # via jail ceiling
--         "GF Outside Gate": "'GF Gate Open'",
--         "Gerudo Training Ground Lobby": "Gerudo_Membership_Card and is_adult"
--     }
-- },
-- {
--     "region_name": "GF Entrances Behind Crates",
--     "scene": "Gerudo Fortress",
--     "hint": "GERUDO_FORTRESS",
--     "exits": {
--         "Gerudo Fortress": "True",
--         "Hideout 1 Torch Jail": "True",
--         "Hideout Kitchen Hallway": "True",
--         "GF Roof Entrance Cluster": "can_use(Longshot)",
--         "GF Storms Grotto": "is_adult and can_open_storm_grotto" # Not there as child
--     }
-- },
-- {
--     "region_name": "GF Roof Entrance Cluster",
--     "scene": "Gerudo Fortress",
--     "hint": "GERUDO_FORTRESS",
--     "exits": {
--         "Hideout 4 Torches Jail": "True",
--         "Hideout 2 Torches Jail": "True",
--         "Hideout Kitchen Front": "True",
--         "GF Entrances Behind Crates": "True",
--         "GF Kitchen Roof Access": "Has("logic_gf_jump") and is_adult"
--     }
-- },
-- {
--     "region_name": "GF Kitchen Roof Access",
--     "scene": "Gerudo Fortress",
--     "hint": "GERUDO_FORTRESS",
--     "exits": {
--         "Hideout Kitchen Rear": "True",
--         "GF 3 Torches Jail Exterior": "True",
--         "GF Chest Roof": "is_adult and (HoverBoots or can_use(Scarecrow) or Longshot)",
--         "GF Roof Gold Skulltula": "True"
--     }
-- },
-- {
--     "region_name": "GF 3 Torches Jail Exterior",
--     "scene": "Gerudo Fortress",
--     "hint": "GERUDO_FORTRESS",
--     "exits": {
--         "Hideout 3 Torches Jail": "True",
--         "GF Roof Entrance Cluster": "True",
--         "GF Roof Gold Skulltula": "can_use(Longshot)"
--     }
-- },
-- {
--     "region_name": "GF Chest Roof",
--     "scene": "Gerudo Fortress",
--     "hint": "GERUDO_FORTRESS",
--     "locations": {
--         "GF Chest": "True"
--     },
--     "exits": {
--         "GF Kitchen Roof Access": "True",
--         "GF Hall to Balcony Entrance": "True"
--     }
-- },
-- {
--     "region_name": "GF Roof Gold Skulltula",
--     "scene": "Gerudo Fortress",
--     "hint": "GERUDO_FORTRESS",
--     "locations": {
--         "GF GS Top Floor": "is_adult and at_night"
--     }
-- },
-- {
--     "region_name": "GF Hall to Balcony Entrance",
--     "scene": "Gerudo Fortress",
--     "hint": "GERUDO_FORTRESS",
--     "exits": {
--         "Gerudo Fortress": "True",
--         "Hideout Hall to Balcony Lower": "True"
--     }
-- },
-- {
--     "region_name": "GF Balcony",
--     "scene": "Gerudo Fortress",
--     "hint": "GERUDO_FORTRESS",
--     "locations": {
--         "GF Above Jail Crate": "is_adult and Can_break_crate"
--     },
--     "exits": {
--         "Hideout Hall to Balcony Upper": "True",
--         "Gerudo Fortress": "True",
--         "GF Chest Roof": "can_use(Longshot)",
--         "GF Hall to Balcony Entrance": "
--             Tracker:FindObjectForCode("Tracker:FindObjectForCode("damage_multiplier")")..CurrentStageCurrentStage ~= 4 or can_use(Nayrus_Love) or can_use(Hookshot)"
--     }
-- },
-- {
--     "region_name": "GF Outside Gate",
--     "scene": "Gerudo Fortress",
--     "hint": "GERUDO_FORTRESS",
--     "exits": {
--         "Gerudo Fortress": "is_adult or (Has("shuffle_overworld_entrances") and 'GF Gate Open')",
--         "Wasteland Near Fortress": "True"
--     }
-- },
-- {
--     "region_name": "GF Storms Grotto",
--     "scene": "GF Storms Grotto",
--     "locations": {
--         "Free Fairies": "Has_bottle"
--     },
--     "exits": {
--         "GF Entrances Behind Crates": "True"
--     }
-- },