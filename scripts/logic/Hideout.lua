Child_Hideout_1_Torch_Jail = OOTLocation.new("Child_Hideout_1_Torch_Jail")
Child_Hideout_2_Torches_Jail = OOTLocation.new("Child_Hideout_2_Torches_Jail")
Child_Hideout_3_Torches_Jail = OOTLocation.new("Child_Hideout_3_Torches_Jail")
Child_Hideout_4_Torches_Jail = OOTLocation.new("Child_Hideout_4_Torches_Jail")
Child_Hideout_Kitchen_Hallway = OOTLocation.new("Child_Hideout_Kitchen_Hallway")
Child_Hideout_Kitchen_Front = OOTLocation.new("Child_Hideout_Kitchen_Front")
Child_Hideout_Kitchen_Rear = OOTLocation.new("Child_Hideout_Kitchen_Rear")
Child_Hideout_Kitchen_Pots = OOTLocation.new("Child_Hideout_Kitchen_Pots")
Child_Hideout_Hall_to_Balcony_Lower = OOTLocation.new("Child_Hideout_Hall_to_Balcony_Lower")
Child_Hideout_Hall_to_Balcony_Upper = OOTLocation.new("Child_Hideout_Hall_to_Balcony_Upper")

Adult_Hideout_1_Torch_Jail = OOTLocation.new("Adult_Hideout_1_Torch_Jail")
Adult_Hideout_2_Torches_Jail = OOTLocation.new("Adult_Hideout_2_Torches_Jail")
Adult_Hideout_3_Torches_Jail = OOTLocation.new("Adult_Hideout_3_Torches_Jail")
Adult_Hideout_4_Torches_Jail = OOTLocation.new("Adult_Hideout_4_Torches_Jail")
Adult_Hideout_Kitchen_Hallway = OOTLocation.new("Adult_Hideout_Kitchen_Hallway")
Adult_Hideout_Kitchen_Front = OOTLocation.new("Adult_Hideout_Kitchen_Front")
Adult_Hideout_Kitchen_Rear = OOTLocation.new("Adult_Hideout_Kitchen_Rear")
Adult_Hideout_Kitchen_Pots = OOTLocation.new("Adult_Hideout_Kitchen_Pots")
Adult_Hideout_Hall_to_Balcony_Lower = OOTLocation.new("Adult_Hideout_Hall_to_Balcony_Lower")
Adult_Hideout_Hall_to_Balcony_Upper = OOTLocation.new("Adult_Hideout_Hall_to_Balcony_Upper")


-- "events": {
--     "Hideout 1 Torch Jail Gerudo": "is_adult or Kokiri_Sword",
--     "Hideout 1 Torch Jail Carpenter": "
--         'Hideout 1 Torch Jail Gerudo' and
--         ((gerudo_fortress == 'normal' and (SmallKey(ThievesHideout), 4)) or
--             (gerudo_fortress == 'fast' and SmallKey(ThievesHideout)))"
-- },
Child_Hideout_1_Torch_Jail:connect_one_way("Child Hideout 1 Torch Jail Gerudo Key", function() return Can_use("KokiriSword", "child") end)
Child_Hideout_1_Torch_Jail:connect_one_way("Child Hideout Gerudo Membership Card", function() return Can_finish_GerudoFortress("child") end)
Child_Hideout_1_Torch_Jail:connect_one_way("Child Hideout 1 Torch Jail Pot 1")
Child_Hideout_1_Torch_Jail:connect_one_way("Child Hideout 1 Torch Jail Pot 2")
Child_Hideout_1_Torch_Jail:connect_one_way("Child Hideout 1 Torch Jail Pot 3")
Child_Hideout_1_Torch_Jail:connect_one_way("Child Hideout 1 Torch Jail Crate", function() return Can_break_crate("child") end)

Adult_Hideout_1_Torch_Jail:connect_one_way("Adult Hideout 1 Torch Jail Gerudo Key")
Adult_Hideout_1_Torch_Jail:connect_one_way("Adult Hideout Gerudo Membership Card", function() return Can_finish_GerudoFortress("adult") end)
Adult_Hideout_1_Torch_Jail:connect_one_way("Adult Hideout 1 Torch Jail Pot 1")
Adult_Hideout_1_Torch_Jail:connect_one_way("Adult Hideout 1 Torch Jail Pot 2")
Adult_Hideout_1_Torch_Jail:connect_one_way("Adult Hideout 1 Torch Jail Pot 3")
Adult_Hideout_1_Torch_Jail:connect_one_way("Adult Hideout 1 Torch Jail Crate", function() return Can_break_crate("adult") end)


Child_Hideout_1_Torch_Jail:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_Hideout_1_Torch_Jail:connect_one_way_entrance("Child GF Entrances Behind Crates", Child_GF_Entrances_Behind_Crates)

Adult_Hideout_1_Torch_Jail:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_Hideout_1_Torch_Jail:connect_one_way_entrance("Adult GF Entrances Behind Crates", Adult_GF_Entrances_Behind_Crates)

-- "events": {
--     "Hideout 2 Torches Jail Gerudo": "is_adult or Kokiri_Sword",
--     "Hideout 2 Torches Jail Carpenter": "
--         'Hideout 2 Torches Jail Gerudo' and
--         gerudo_fortress == 'normal' and (SmallKey(ThievesHideout), 4)"
-- }
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torches Jail Gerudo Key", function() return Can_use("KokiriSword", "child") end)
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail Pot 1")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail Pot 2")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail Pot 3")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail In Cell Pot 1")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail In Cell Pot 2")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail In Cell Pot 3")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail In Cell Pot 4")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail Crate 1", function() return Can_break_crate("child") end)
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail Crate 2", function() return Can_break_crate("child") end)

Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torches Jail Gerudo Key")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail Pot 1")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail Pot 2")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail Pot 3")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail In Cell Pot 1")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail In Cell Pot 2")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail In Cell Pot 3")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail In Cell Pot 4")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail Crate 1", function() return Can_break_crate("adult") end)
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail Crate 2", function() return Can_break_crate("adult") end)


Child_Hideout_2_Torches_Jail:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_Hideout_2_Torches_Jail:connect_one_way_entrance("Child GF Roof Entrance Cluster", Child_GF_Roof_Entrance_Cluster)

Adult_Hideout_2_Torches_Jail:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_Hideout_2_Torches_Jail:connect_one_way_entrance("Adult GF Roof Entrance Cluster", Adult_GF_Roof_Entrance_Cluster)

-- "events": {
--     "Hideout 3 Torches Jail Gerudo": "is_adult or Kokiri_Sword",
--     "Hideout 3 Torches Jail Carpenter": "
--         'Hideout 3 Torches Jail Gerudo' and
--         gerudo_fortress == 'normal' and (SmallKey(ThievesHideout), 4)"
-- },
Child_Hideout_3_Torches_Jail:connect_one_way("Child Hideout 3 Torches Jail Gerudo Key", function() return Can_use("KokiriSword", "child") end)
Child_Hideout_3_Torches_Jail:connect_one_way("Child Hideout 3 Torch Jail Crate", function() return Can_break_crate("child") end)

Adult_Hideout_3_Torches_Jail:connect_one_way("Adult Hideout 3 Torches Jail Gerudo Key")
Adult_Hideout_3_Torches_Jail:connect_one_way("Adult Hideout 3 Torch Jail Crate", function() return Can_break_crate("adult") end)

Child_Hideout_3_Torches_Jail:connect_one_way_entrance("Child GF 3 Torches Jail Exterior", Child_GF_3_Torches_Jail_Exterior)

Adult_Hideout_3_Torches_Jail:connect_one_way_entrance("Adult GF 3 Torches Jail Exterior", Adult_GF_3_Torches_Jail_Exterior)


-- "events": {
--     "Hideout 4 Torches Jail Gerudo": "is_adult or Kokiri_Sword",
--     "Hideout 4 Torches Jail Carpenter": "
--         'Hideout 4 Torches Jail Gerudo' and
--         gerudo_fortress == 'normal' and (SmallKey(ThievesHideout), 4)"
-- },
Child_Hideout_4_Torches_Jail:connect_one_way("Child Hideout 4 Torches Jail Gerudo Key", function() return Can_use("KokiriSword", "child") end)
Child_Hideout_4_Torches_Jail:connect_one_way("Child Hideout 4 Torch Jail Pot 1")
Child_Hideout_4_Torches_Jail:connect_one_way("Child Hideout 4 Torch Jail Pot 2")

Adult_Hideout_4_Torches_Jail:connect_one_way("Adult Hideout 4 Torches Jail Gerudo Key")
Adult_Hideout_4_Torches_Jail:connect_one_way("Adult Hideout 4 Torch Jail Pot 1")
Adult_Hideout_4_Torches_Jail:connect_one_way("Adult Hideout 4 Torch Jail Pot 2")

Child_Hideout_4_Torches_Jail:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_Hideout_4_Torches_Jail:connect_one_way_entrance("Child GF Roof Entrance Cluster", Child_GF_Roof_Entrance_Cluster)

Adult_Hideout_4_Torches_Jail:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_Hideout_4_Torches_Jail:connect_one_way_entrance("Adult GF Roof Entrance Cluster", Adult_GF_Roof_Entrance_Cluster)


Child_Hideout_Kitchen_Hallway:connect_one_way("Child Hideout Near Kitchen Crate 1", function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "child"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "child")
        ),
        Can_break_crate("child")
    )
end)
Child_Hideout_Kitchen_Hallway:connect_one_way("Child Hideout Near Kitchen Crate 2", function() return Can_break_crate("child") end)
Child_Hideout_Kitchen_Hallway:connect_one_way("Child Hideout Near Kitchen Crate 3", function() return Can_break_crate("child") end)
Child_Hideout_Kitchen_Hallway:connect_one_way("Child Hideout Near Kitchen Crate 4", function() return Can_break_crate("child") end)
Child_Hideout_Kitchen_Hallway:connect_one_way("Child Hideout Near Kitchen Crate 5", function() return Can_break_crate("child") end)

Adult_Hideout_Kitchen_Hallway:connect_one_way("Adult Hideout Near Kitchen Crate 1", function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "adult"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "adult")
        ),
        Can_break_crate("adult")
    )
end)
Adult_Hideout_Kitchen_Hallway:connect_one_way("Adult Hideout Near Kitchen Crate 2", function() return Can_break_crate("adult") end)
Adult_Hideout_Kitchen_Hallway:connect_one_way("Adult Hideout Near Kitchen Crate 3", function() return Can_break_crate("adult") end)
Adult_Hideout_Kitchen_Hallway:connect_one_way("Adult Hideout Near Kitchen Crate 4", function() return Can_break_crate("adult") end)
Adult_Hideout_Kitchen_Hallway:connect_one_way("Adult Hideout Near Kitchen Crate 5", function() return Can_break_crate("adult") end)



Child_Hideout_Kitchen_Hallway:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_Hideout_Kitchen_Hallway:connect_one_way_entrance("Child GF Entrances Behind Crates", Child_GF_Entrances_Behind_Crates)
Child_Hideout_Kitchen_Hallway:connect_one_way_entrance("Child Hideout Kitchen Front", Child_Hideout_Kitchen_Front, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "child"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "child")
        ),
        Can_break_crate("child")
    )
end)
Child_Hideout_Kitchen_Hallway:connect_one_way_entrance("Child Hideout Kitchen Rear", Child_Hideout_Kitchen_Rear, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "child"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "child")
        ),
        Can_break_crate("child")
    )
end)
Child_Hideout_Kitchen_Hallway:connect_one_way_entrance("Child Hideout Kitchen Pots", Child_Hideout_Kitchen_Pots, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "child"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "child")
        ),
        Can_break_crate("child")
    )
end)

Adult_Hideout_Kitchen_Hallway:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_Hideout_Kitchen_Hallway:connect_one_way_entrance("Adult GF Entrances Behind Crates", Adult_GF_Entrances_Behind_Crates)
Adult_Hideout_Kitchen_Hallway:connect_one_way_entrance("Adult Hideout Kitchen Front", Adult_Hideout_Kitchen_Front, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "adult"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "adult")
        ),
        Can_break_crate("adult")
    )
end)
Adult_Hideout_Kitchen_Hallway:connect_one_way_entrance("Adult Hideout Kitchen Rear", Adult_Hideout_Kitchen_Rear, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "adult"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "adult")
        ),
        Can_break_crate("adult")
    )
end)
Adult_Hideout_Kitchen_Hallway:connect_one_way_entrance("Adult Hideout Kitchen Pots", Adult_Hideout_Kitchen_Pots, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "adult"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "adult")
        ),
        Can_break_crate("adult")
    )
end)


Child_Hideout_Kitchen_Front:connect_one_way_entrance("Child GF Roof Entrance Cluster", Child_GF_Roof_Entrance_Cluster)
Child_Hideout_Kitchen_Front:connect_one_way_entrance("Child Hideout Kitchen Rear", Child_Hideout_Kitchen_Rear, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "child"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "child")
        ),
        Can_break_crate("child")
    )
end)
Child_Hideout_Kitchen_Front:connect_one_way_entrance("Child Hideout Kitchen Hallway", Child_Hideout_Kitchen_Hallway, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "child"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "child")
        ),
        Can_break_crate("child")
    )
end)
Child_Hideout_Kitchen_Front:connect_one_way_entrance("Child Hideout Kitchen Pots", Child_Hideout_Kitchen_Pots, function() return Can_use("Boomerang", "child") end)

Adult_Hideout_Kitchen_Front:connect_one_way_entrance("Adult GF Roof Entrance Cluster", Adult_GF_Roof_Entrance_Cluster)
Adult_Hideout_Kitchen_Front:connect_one_way_entrance("Adult Hideout Kitchen Rear", Adult_Hideout_Kitchen_Rear, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "adult"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "adult")
        ),
        Can_break_crate("adult")
    )
end)
Adult_Hideout_Kitchen_Front:connect_one_way_entrance("Adult Hideout Kitchen Hallway", Adult_Hideout_Kitchen_Hallway, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "adult"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "adult")
        ),
        Can_break_crate("adult")
    )
end)
Adult_Hideout_Kitchen_Front:connect_one_way_entrance("Adult Hideout Kitchen Pots", Adult_Hideout_Kitchen_Pots, function() return Can_use("Boomerang", "adult") end)


Child_Hideout_Kitchen_Rear:connect_one_way_entrance("Child GT Kitchen Root Access", Child_GF_Kitchen_Roof_Access)
Child_Hideout_Kitchen_Rear:connect_one_way_entrance("Child Hidout Kitchen Front", Child_Hideout_Kitchen_Front, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "child"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "child")
        ),
        Can_break_crate("child")
    )
end)
Child_Hideout_Kitchen_Rear:connect_one_way_entrance("Child Hidout Kitchen Halleway", Child_Hideout_Kitchen_Hallway, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "child"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "child")
        ),
        Can_break_crate("child")
    )
end)
Child_Hideout_Kitchen_Rear:connect_one_way_entrance("Child Hidout Kitchen Pots", Child_Hideout_Kitchen_Pots, function() return Can_use("Boomerang", "child") end)

Adult_Hideout_Kitchen_Rear:connect_one_way_entrance("Adult GT Kitchen Root Access", Adult_GF_Kitchen_Roof_Access)
Adult_Hideout_Kitchen_Rear:connect_one_way_entrance("Adult Hidout Kitchen Front", Adult_Hideout_Kitchen_Front, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "adult"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "adult")
        ),
        Can_break_crate("adult")
    )
end)
Adult_Hideout_Kitchen_Rear:connect_one_way_entrance("Adult Hidout Kitchen Halleway", Adult_Hideout_Kitchen_Hallway, function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "adult"),
            Has("logic_gerudo_kitchen"),
            Can_use("Hookshot", "adult")
        ),
        Can_break_crate("adult")
    )
end)
Adult_Hideout_Kitchen_Rear:connect_one_way_entrance("Adult Hidout Kitchen Pots", Adult_Hideout_Kitchen_Pots, function() return Can_use("Boomerang", "adult") end)



Child_Hideout_Kitchen_Pots:connect_one_way("Child Hideout Kitchen Pot 1")
Child_Hideout_Kitchen_Pots:connect_one_way("Child Hideout Kitchen Pot 2")

Adult_Hideout_Kitchen_Pots:connect_one_way("Adult Hideout Kitchen Pot 1")
Adult_Hideout_Kitchen_Pots:connect_one_way("Adult Hideout Kitchen Pot 2")

-- Gerudo_Membership_Card or can_use(Bow) or can_use(Hookshot)

Child_Hideout_Hall_to_Balcony_Lower:connect_one_way("Child Hideout Break Room Pot 1", function() 
    return Any(
        Has("GerudoMembershipCard"),
        Can_use("Bow", "child"),
        Can_use("Hookshot", "child")
    ) 
end)
Child_Hideout_Hall_to_Balcony_Lower:connect_one_way("Child Hideout Break Room Pot 2", function() 
    return Any(
        Has("GerudoMembershipCard"),
        Can_use("Bow", "child"),
        Can_use("Hookshot", "child")
    ) 
end)
Child_Hideout_Hall_to_Balcony_Lower:connect_one_way("Child Hideout Break Room Hallway Crate 1", function() return Can_break_crate("child") end)
Child_Hideout_Hall_to_Balcony_Lower:connect_one_way("Child Hideout Break Room Hallway Crate 2", function() return Can_break_crate("child") end)
Child_Hideout_Hall_to_Balcony_Lower:connect_one_way("Child Hideout Break Room Crate 1", function()
    return All(
        Can_break_crate("child"),
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "child"),
            Can_use("KokiriSword", "child"),
            Can_use("Hookshot", "child"),
            Can_use("DekuSticks", "child")
        )
    )
end)
Child_Hideout_Hall_to_Balcony_Lower:connect_one_way("Child Hideout Break Room Crate 2", function()
    return All(
        Can_break_crate("child"),
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "child"),
            Can_use("KokiriSword", "child"),
            Can_use("Hookshot", "child"),
            Can_use("DekuSticks", "child")
        )
    )
end)

Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way("Adult Hideout Break Room Pot 1", function() 
    return Any(
        Has("GerudoMembershipCard"),
        Can_use("Bow", "adult"),
        Can_use("Hookshot", "adult")
    ) 
end)
Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way("Adult Hideout Break Room Pot 2", function() 
    return Any(
        Has("GerudoMembershipCard"),
        Can_use("Bow", "adult"),
        Can_use("Hookshot", "adult")
    ) 
end)
Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way("Adult Hideout Break Room Hallway Crate 1", function() return Can_break_crate("adult") end)
Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way("Adult Hideout Break Room Hallway Crate 2", function() return Can_break_crate("adult") end)
Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way("Adult Hideout Break Room Crate 1", function()
    return All(
        Can_break_crate("adult"),
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "adult"),
            Can_use("KokiriSword", "adult"),
            Can_use("Hookshot", "adult"),
            Can_use("DekuSticks", "adult")
        )
    )
end)
Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way("Adult Hideout Break Room Crate 2", function()
    return All(
        Can_break_crate("adult"),
        Any(
            Has("GerudoMembershipCard"),
            Can_use("Bow", "adult"),
            Can_use("KokiriSword", "adult"),
            Can_use("Hookshot", "adult"),
            Can_use("DekuSticks", "adult")
        )
    )
end)

Child_Hideout_Hall_to_Balcony_Lower:connect_one_way_entrance("Child GF Hall to Balcony Entrance", Child_GF_Hall_to_Balcony_Entrance)
Child_Hideout_Hall_to_Balcony_Lower:connect_one_way_entrance("Child Hideout Hall to Balcony Upper", Child_Hideout_Hall_to_Balcony_Upper, function() return false end)

Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way_entrance("Adult GF Hall to Balcony Entrance", Adult_GF_Hall_to_Balcony_Entrance)
Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way_entrance("Adult Hideout Hall to Balcony Upper", Adult_Hideout_Hall_to_Balcony_Upper, function() return Can_use("Hookshot", "adult") end)


Child_Hideout_Hall_to_Balcony_Upper:connect_one_way_entrance("Child Hideout Hall to Balcony Lower", Child_Hideout_Hall_to_Balcony_Lower, function() return false end)
Child_Hideout_Hall_to_Balcony_Upper:connect_one_way_entrance("Child GF Balcony", Child_GF_Balcony)

Adult_Hideout_Hall_to_Balcony_Upper:connect_one_way_entrance("Adult Hideout Hall to Balcony Lower", Adult_Hideout_Hall_to_Balcony_Lower, function() return Can_use("Hookshot", "adult") end)
Adult_Hideout_Hall_to_Balcony_Upper:connect_one_way_entrance("Adult GF Balcony", Adult_GF_Balcony)

-- {
--     "region_name": "Hideout 1 Torch Jail",
--     "scene": "Hideout 1 Torch Jail",
--     "hint": "GERUDO_FORTRESS",
--     "events": {
--         "Hideout 1 Torch Jail Gerudo": "is_adult or Kokiri_Sword",
--         "Hideout 1 Torch Jail Carpenter": "
--             'Hideout 1 Torch Jail Gerudo' and
--             ((gerudo_fortress == 'normal' and (SmallKey(ThievesHideout), 4)) or
--                 (gerudo_fortress == 'fast' and SmallKey(ThievesHideout)))"
--     },
--     "locations": {
--         "Hideout 1 Torch Jail Gerudo Key": "'Hideout 1 Torch Jail Gerudo'",
--         "Hideout Gerudo Membership Card": "Can_finish_GerudoFortress("")",
--         "Hideout 1 Torch Jail Pot 1": "True",
--         "Hideout 1 Torch Jail Pot 2": "True",
--         "Hideout 1 Torch Jail Pot 3": "True",
--         "Hideout 1 Torch Jail Crate": "Can_break_crate"
--     },
--     "exits": {
--         "Gerudo Fortress": "True",
--         "GF Entrances Behind Crates": "True"
--     }
-- },
-- {
--     "region_name": "Hideout 2 Torches Jail",
--     "scene": "Hideout 2 Torches Jail",
--     "hint": "GERUDO_FORTRESS",
--     "events": {
--         "Hideout 2 Torches Jail Gerudo": "is_adult or Kokiri_Sword",
--         "Hideout 2 Torches Jail Carpenter": "
--             'Hideout 2 Torches Jail Gerudo' and
--             gerudo_fortress == 'normal' and (SmallKey(ThievesHideout), 4)"
--     },
--     "locations": {
--         "Hideout 2 Torches Jail Gerudo Key": "'Hideout 2 Torches Jail Gerudo'",
--         "Hideout 2 Torch Jail Pot 1": "True",
--         "Hideout 2 Torch Jail Pot 2": "True",
--         "Hideout 2 Torch Jail Pot 3": "True",
--         "Hideout 2 Torch Jail In Cell Pot 1": "True",
--         "Hideout 2 Torch Jail In Cell Pot 2": "True",
--         "Hideout 2 Torch Jail In Cell Pot 3": "True",
--         "Hideout 2 Torch Jail In Cell Pot 4": "True",
--         "Hideout 2 Torch Jail Crate 1": "Can_break_crate",
--         "Hideout 2 Torch Jail Crate 2": "Can_break_crate"
--     },
--     "exits": {
--         "Gerudo Fortress": "True",
--         "GF Roof Entrance Cluster": "True"
--     }
-- },
-- {
--     "region_name": "Hideout 3 Torches Jail",
--     "scene": "Hideout 3 Torches Jail",
--     "hint": "GERUDO_FORTRESS",
--     "events": {
--         "Hideout 3 Torches Jail Gerudo": "is_adult or Kokiri_Sword",
--         "Hideout 3 Torches Jail Carpenter": "
--             'Hideout 3 Torches Jail Gerudo' and
--             gerudo_fortress == 'normal' and (SmallKey(ThievesHideout), 4)"
--     },
--     "locations": {
--         "Hideout 3 Torches Jail Gerudo Key": "'Hideout 3 Torches Jail Gerudo'",
--         "Hideout 3 Torch Jail Crate": "Can_break_crate"
--     },
--     "exits": {
--         "GF 3 Torches Jail Exterior": "True"
--     }
-- },
-- {
--     "region_name": "Hideout 4 Torches Jail",
--     "scene": "Hideout 4 Torches Jail",
--     "hint": "GERUDO_FORTRESS",
--     "events": {
--         "Hideout 4 Torches Jail Gerudo": "is_adult or Kokiri_Sword",
--         "Hideout 4 Torches Jail Carpenter": "
--             'Hideout 4 Torches Jail Gerudo' and
--             gerudo_fortress == 'normal' and (SmallKey(ThievesHideout), 4)"
--     },
--     "locations": {
--         "Hideout 4 Torches Jail Gerudo Key": "'Hideout 4 Torches Jail Gerudo'",
--         "Hideout 4 Torch Jail Pot 1": "True",
--         "Hideout 4 Torch Jail Pot 2": "True"
--     },
--     "exits": {
--         "Gerudo Fortress": "True",
--         "GF Roof Entrance Cluster": "True"
--     }
-- },
-- {
--     "region_name": "Hideout Kitchen Hallway",
--     "scene": "Hideout Kitchen",
--     "hint": "GERUDO_FORTRESS",
--     "locations": {
--         "Hideout Near Kitchen Crate 1": "
--             (Gerudo_Membership_Card or can_use(Bow) or can_use(Hookshot) or Has("logic_gerudo_kitchen")) and
--             Can_break_crate",
--         "Hideout Near Kitchen Crate 2": "Can_break_crate",
--         "Hideout Near Kitchen Crate 3": "Can_break_crate",
--         "Hideout Near Kitchen Crate 4": "Can_break_crate",
--         "Hideout Near Kitchen Crate 5": "Can_break_crate"
--     },
--     "exits": {
--         "GF Entrances Behind Crates": "True",
--         "Gerudo Fortress": "True",
--         "Hideout Kitchen Front": "
--             Gerudo_Membership_Card or can_use(Bow) or can_use(Hookshot) or Has("logic_gerudo_kitchen")",
--         "Hideout Kitchen Rear": "
--             Gerudo_Membership_Card or can_use(Bow) or can_use(Hookshot) or Has("logic_gerudo_kitchen")",
--         "Hideout Kitchen Pots": "
--             Gerudo_Membership_Card or can_use(Bow) or can_use(Hookshot) or Has("logic_gerudo_kitchen")"
--     }
-- },
-- {
--     "region_name": "Hideout Kitchen Front",
--     "scene": "Hideout Kitchen",
--     "hint": "GERUDO_FORTRESS",
--     "exits": {
--         "GF Roof Entrance Cluster": "True",
--         "Hideout Kitchen Rear": "
--             Gerudo_Membership_Card or can_use(Bow) or can_use(Hookshot) or
--             can_use(HoverBoots) or Has("logic_gerudo_kitchen")",
--         "Hideout Kitchen Hallway": "
--             Gerudo_Membership_Card or can_use(Bow) or can_use(Hookshot) or Has("logic_gerudo_kitchen")",
--         "Hideout Kitchen Pots": "can_use(Boomerang)"
--     }
-- },
-- {
--     "region_name": "Hideout Kitchen Rear",
--     "scene": "Hideout Kitchen",
--     "hint": "GERUDO_FORTRESS",
--     "exits": {
--         "GF Kitchen Roof Access": "True",
--         "Hideout Kitchen Front": "
--             Gerudo_Membership_Card or can_use(Bow) or can_use(Hookshot) or
--             can_use(HoverBoots) or Has("logic_gerudo_kitchen")",
--         "Hideout Kitchen Hallway": "
--             Gerudo_Membership_Card or can_use(Bow) or can_use(Hookshot) or Has("logic_gerudo_kitchen")",
--         "Hideout Kitchen Pots": "can_use(Boomerang)"
--     }
-- },
-- {
--     "region_name": "Hideout Kitchen Pots",
--     "scene": "Hideout Kitchen",
--     "hint": "GERUDO_FORTRESS",
--     "locations": {
--         "Hideout Kitchen Pot 1": "True",
--         "Hideout Kitchen Pot 2": "True"
--     }
-- },
-- {
--     "region_name": "Hideout Hall to Balcony Lower",
--     "scene": "Hideout Hall to Balcony",
--     "hint": "GERUDO_FORTRESS",
--     "exits": {
--         "GF Hall to Balcony Entrance": "True",
--         "Hideout Hall to Balcony Upper": "can_use(Hookshot)"
--     },
--     "locations": {
--         "Hideout Break Room Pot 1": "Gerudo_Membership_Card or can_use(Bow) or can_use(Hookshot)",
--         "Hideout Break Room Pot 2": "Gerudo_Membership_Card or can_use(Bow) or can_use(Hookshot)",
--         "Hideout Break Room Hallway Crate 1": "Can_break_crate",
--         "Hideout Break Room Hallway Crate 2": "Can_break_crate",
--         # Child Link is too short to seen over the table as you go for these crates.
--         "Hideout Break Room Crate 1": "
--             Can_break_crate and
--             (Gerudo_Membership_Card or can_use(Bow) or can_use(Hookshot) or
--                 can_use(Sticks) or can_use(Kokiri_Sword))",
--         "Hideout Break Room Crate 2": "
--             Can_break_crate and
--             (Gerudo_Membership_Card or can_use(Bow) or can_use(Hookshot) or
--                 can_use(Sticks) or can_use(Kokiri_Sword))"
--     }
-- },
-- {
--     "region_name": "Hideout Hall to Balcony Upper",
--     "scene": "Hideout Hall to Balcony",
--     "hint": "GERUDO_FORTRESS",
--     "exits": {
--         "Hideout Hall to Balcony Lower": "can_use(Hookshot)",
--         "GF Balcony": "True"
--     }
-- },