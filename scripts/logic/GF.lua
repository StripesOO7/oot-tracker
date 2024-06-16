Child_Gerudo_Fortress = OOTLocation.new("Child_Gerudo_Fortress")
Child_GF_Entrances_Behind_Crates = OOTLocation.new("Child_GF_Entrances_Behind_Crates")
Child_GF_Roof_Entrance_Cluster = OOTLocation.new("Child_GF_Roof_Entrance_Cluster")
Child_GF_Kitchen_Roof_Access = OOTLocation.new("Child_GF_Kitchen_Roof_Access")
Child_GF_Hall_to_Balcony_Entrance = OOTLocation.new("Child_GF_Hall_to_Balcony_Entrance")
Child_GF_Outside_Gate = OOTLocation.new("Child_GF_Outside_Gate")
Child_GF_Storms_Grotto = OOTLocation.new("Child_GF_Storms_Grotto")
Child_GF_3_Torches_Jail_Exterior = OOTLocation.new("Child_GF_3_Torches_Jail_Exterior")
Child_GF_Chest_Roof = OOTLocation.new("Child_GF_Chest_Roof")
Child_GF_Roof_Gold_Skulltula = OOTLocation.new("Child_GF_Roof_Gold_Skulltula")
Child_GF_Hall_to_Balcony_Entrance = OOTLocation.new("Child_GF_Hall_to_Balcony_Entrance")
Child_GF_Balcony = OOTLocation.new("Child_GF_Balcony")


Adult_Gerudo_Fortress = OOTLocation.new("Adult_Gerudo_Fortress")
Adult_GF_Entrances_Behind_Crates = OOTLocation.new("Adult_GF_Entrances_Behind_Crates")
Adult_GF_Roof_Entrance_Cluster = OOTLocation.new("Adult_GF_Roof_Entrance_Cluster")
Adult_GF_Kitchen_Roof_Access = OOTLocation.new("Adult_GF_Kitchen_Roof_Access")
Adult_GF_Hall_to_Balcony_Entrance = OOTLocation.new("Adult_GF_Hall_to_Balcony_Entrance")
Adult_GF_Outside_Gate = OOTLocation.new("Adult_GF_Outside_Gate")
Adult_GF_Storms_Grotto = OOTLocation.new("Adult_GF_Storms_Grotto")
Adult_GF_3_Torches_Jail_Exterior = OOTLocation.new("Adult_GF_3_Torches_Jail_Exterior")
Adult_GF_Chest_Roof = OOTLocation.new("Adult_GF_Chest_Roof")
Adult_GF_Roof_Gold_Skulltula = OOTLocation.new("Adult_GF_Roof_Gold_Skulltula")
Adult_GF_Hall_to_Balcony_Entrance = OOTLocation.new("Adult_GF_Hall_to_Balcony_Entrance")
Adult_GF_Balcony = OOTLocation.new("Adult_GF_Balcony")


Adult_Gerudo_Fortress:connect_one_way("GF HBA 1000 Points", function()
    return All(
        Has("GerudoMembershipCard"),
        --at day,
        CanRideEpona(),
        Has("Bow")
    )
end)
Adult_Gerudo_Fortress:connect_one_way("GF HBA 1500 Points", function()
    return All(
        Has("GerudoMembershipCard"),
        --at day,
        CanRideEpona(),
        Has("Bow")
    )
end)
Adult_Gerudo_Fortress:connect_one_way("GF GS Archery Range", function()
    return All(
        Has("Hookshot"),
        Has("GerudoMembershipCard"),
        --at night
    )
end)


Child_Gerudo_Fortress:connect_one_way_entrance("Child GV Fortress Side", Child_GV_Fortress_Side)
Child_Gerudo_Fortress:connect_one_way_entrance("Child Hideout 1 Torch Jail", Child_Hideout_1_Torch_Jail)
Child_Gerudo_Fortress:connect_one_way_entrance("Child Hideout 2 Torches Jail", Child_Hideout_2_Torches_Jail)
Child_Gerudo_Fortress:connect_one_way_entrance("Child Hideout 4 Torches Jail", Child_Hideout_4_Torches_Jail)
Child_Gerudo_Fortress:connect_one_way_entrance("Child Hideout Kitchen Hallway", Child_Hideout_Kitchen_Hallway)
Child_Gerudo_Fortress:connect_one_way_entrance("Child GF Entrances Behind Crates", Child_GF_Entrances_Behind_Crates)
Child_Gerudo_Fortress:connect_one_way_entrance("Child GF Outside Gate", Child_GF_Outside_Gate, function() return GF_Gate_open end)

Adult_Gerudo_Fortress:connect_one_way_entrance("Adult GV Fortress Side", Adult_GV_Fortress_Side)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult Hideout 1 Torch Jail", Adult_Hideout_1_Torch_Jail)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult Hideout 2 Torches Jail", Adult_Hideout_2_Torches_Jail)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult Hideout 4 Torches Jail", Adult_Hideout_4_Torches_Jail)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult Hideout Kitchen Hallway", Adult_Hideout_Kitchen_Hallway)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult GF Entrances Behind Crates", Adult_GF_Entrances_Behind_Crates)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult GF Roof Entrance Cluster", Adult_GF_Roof_Entrance_Cluster, function()
    return Any(
        Has("HoverBoots"),
        logic_gf_jump
    )
end)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult GF Kitchen Roof Access", Adult_GF_Kitchen_Roof_Access, function()
    return All(
        Has("Longshot"),
        Has("GerudoMembershipCard")
    )
end)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult GF Hall to Balcony Entrance", Adult_GF_Hall_to_Balcony_Entrance, function() return Has("Longshot") end)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult GF Outside Gate", Adult_GF_Outside_Gate, function() return GF_Gate_open end)
Adult_Gerudo_Fortress:connect_one_way_entrance("Adult Gerudo Training Ground Lobby", Adult_Gerudo_Training_Ground_Lobby, function() return Has("GerudoMembershipCard") end)


Child_GF_Entrances_Behind_Crates:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_GF_Entrances_Behind_Crates:connect_one_way_entrance("Child Hideout 1 Torch Jail", Child_Hideout_1_Torch_Jail)
Child_GF_Entrances_Behind_Crates:connect_one_way_entrance("Child Hideout Kitchen Hallway", Child_Hideout_Kitchen_Hallway)

Adult_GF_Entrances_Behind_Crates:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_GF_Entrances_Behind_Crates:connect_one_way_entrance("Adult Hideout 1 Torch Jail", Adult_Hideout_1_Torch_Jail)
Adult_GF_Entrances_Behind_Crates:connect_one_way_entrance("Adult Hideout Kitchen Hallway", Adult_Hideout_Kitchen_Hallway)
Adult_GF_Entrances_Behind_Crates:connect_one_way_entrance("Adult GF Roof Entrance Cluster", Adult_GF_Roof_Entrance_Cluster, function() return Has("Longshot") end)
Adult_GF_Entrances_Behind_Crates:connect_one_way_entrance("Adult GF Storms Grotto", Adult_GF_Storms_Grotto, function() return CanOpenStormsGrotto() end)

Adult_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Adult Hideout 2 Torches Jail", Adult_Hideout_2_Torches_Jail)
Adult_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Adult Hideout 4 Torches Jail", Adult_Hideout_4_Torches_Jail)
Adult_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Adult Hideout Kitchen Front", Adult_Hideout_Kitchen_Front)
Adult_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Adult GF Entrances Behind Crates", Adult_GF_Entrances_Behind_Crates)
Adult_GF_Roof_Entrance_Cluster:connect_one_way_entrance("Adult GF Kitchen Roof Access", Adult_GF_Kitchen_Roof_Access, function() return logic_gf_jump end)


Child_GF_Kitchen_Roof_Access:connect_one_way_entrance("Child Hideout Kitchen Rear", Child_Hideout_Kitchen_Rear)
Child_GF_Kitchen_Roof_Access:connect_one_way_entrance("Child GF 3 Torches Jail Exterior", Child_GF_3_Torches_Jail_Exterior)
Child_GF_Kitchen_Roof_Access:connect_one_way_entrance("Child GF Roof Gold Skulltula", Child_GF_Roof_Gold_Skulltula)

Adult_GF_Kitchen_Roof_Access:connect_one_way_entrance("Adult Hideout Kitchen Rear", Adult_Hideout_Kitchen_Rear)
Adult_GF_Kitchen_Roof_Access:connect_one_way_entrance("Adult GF 3 Torches Jail Exterior", Adult_GF_3_Torches_Jail_Exterior)
Adult_GF_Kitchen_Roof_Access:connect_one_way_entrance("Adult GF Chest Roof", Adult_GF_Chest_Roof, function()
    return Any(
        Has("HoverBoots"),
        CanUse("Scarecrow"),
        Has("Longshot")
    )
end)
Adult_GF_Kitchen_Roof_Access:connect_one_way_entrance("Adult GF Roof Gold Skulltula", Adult_GF_Roof_Gold_Skulltula)

Child_GF_3_Torches_Jail_Exterior:connect_one_way_entrance("Child Hideout 3 Torches Jail", Child_Hideout_3_Torches_Jail)
Child_GF_3_Torches_Jail_Exterior:connect_one_way_entrance("Child GF Roof Entrance Cluster", Child_GF_Roof_Entrance_Cluster)

Adult_GF_3_Torches_Jail_Exterior:connect_one_way_entrance("Adult Hideout 3 Torches Jail", Adult_Hideout_3_Torches_Jail)
Adult_GF_3_Torches_Jail_Exterior:connect_one_way_entrance("Adult GF Roof Entrance Cluster", Adult_GF_Roof_Entrance_Cluster)
Adult_GF_3_Torches_Jail_Exterior:connect_one_way_entrance("Adult GF Roof Gold Skulltula", Adult_GF_Roof_Gold_Skulltula, function() return Has("Longshot") end)


Child_GF_Chest_Roof:connect_one_way("Child GF Chest")
Adult_GF_Chest_Roof:connect_one_way("Adult GF Chest")

Child_GF_Chest_Roof:connect_one_way_entrance("Child GF Kitchen Roof Access", Child_GF_Kitchen_Roof_Access)
Child_GF_Chest_Roof:connect_one_way_entrance("Child GF Hall to Balcony Entrance", Child_GF_Hall_to_Balcony_Entrance)

Adult_GF_Chest_Roof:connect_one_way_entrance("Adult GF Kitchen Roof Access", Adult_GF_Kitchen_Roof_Access)
Adult_GF_Chest_Roof:connect_one_way_entrance("Adult GF Hall to Balcony Entrance", Adult_GF_Hall_to_Balcony_Entrance)


Adult_GF_Roof_Gold_Skulltula:connect_one_way("Adult GF GS Top Floor", function() return atnight end)


Child_GF_Hall_to_Balcony_Entrance:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_GF_Hall_to_Balcony_Entrance:connect_one_way_entrance("Child Hideout Hall to Balcony Lower", Child_Hideout_Hall_to_Balcony_Lower)

Adult_GF_Hall_to_Balcony_Entrance:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_GF_Hall_to_Balcony_Entrance:connect_one_way_entrance("Adult Hideout Hall to Balcony Lower", Adult_Hideout_Hall_to_Balcony_Lower)

Adult_GF_Balcony:connect_one_way("Adult GF Above Jail Crate", function() return CanBreakCrates() end)

Child_GF_Balcony:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_GF_Balcony:connect_one_way_entrance("Child Hideout Hall to Balcony Upper", Child_Hideout_Hall_to_Balcony_Upper)
Child_GF_Balcony:connect_one_way_entrance("Child GF Hall to Balcony Entrance", Child_GF_Hall_to_Balcony_Entrance, function()
    return Any(
        damage_multiplier ~= ohko,
        CanUse("NayrusLove")
    )
end)

Adult_GF_Balcony:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_GF_Balcony:connect_one_way_entrance("Adult Hideout Hall to Balcony Upper", Adult_Hideout_Hall_to_Balcony_Upper)
Adult_GF_Balcony:connect_one_way_entrance("Adult GF Chest Roof", Adult_GF_Chest_Roof, function() return Has("Longshot") end)
Adult_GF_Balcony:connect_one_way_entrance("Adult GF Hall to Balcony Entrance", Adult_GF_Hall_to_Balcony_Entrance, function()
    return Any(
        damage_multiplier ~= ohko,
        CanUse("NayrusLove"),
        Has("Hookshot")
    )
end)


Child_GF_Outside_Gate:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress, function()
    return All(
        GF_gate_open,
        shuffle_overworld_entrances
    )
end)
Child_GF_Outside_Gate:connect_one_way_entrance("Child Wasteland Near Fortress", Child_Wasteland_Near_Fortress)

Adult_GF_Outside_Gate:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_GF_Outside_Gate:connect_one_way_entrance("Adult Wasteland Near Fortress", Adult_Wasteland_Near_Fortress)


Child_GF_Storms_Grotto:connect_one_way("Free Fairies", function() return Has("Bottles") end)

Adult_GF_Storms_Grotto:connect_one_way("Free Fairies", function() return Has("Bottles") end)

Child_GF_Storms_Grotto:connect_one_way_entrance("Child GF Entrances Behind Crates", Child_GF_Entrances_Behind_Crates)
Adult_GF_Storms_Grotto:connect_one_way_entrance("Adult GF Entrances Behind Crates", Adult_GF_Entrances_Behind_Crates)

