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
--         ((gerudo_fortress == 'normal' and (Small_Key_Thieves_Hideout, 4)) or
--             (gerudo_fortress == 'fast' and Small_Key_Thieves_Hideout))"
-- },
Child_Hideout_1_Torch_Jail:connect_one_way("Child Hideout 1 Torch Jail Gerudo Key", function() return Has("KokiriSword") end)
Child_Hideout_1_Torch_Jail:connect_one_way("Child Hideout Gerudo Membership Card", function() return can_finish_GerudoFortress end)
Child_Hideout_1_Torch_Jail:connect_one_way("Child Hideout 1 Torch Jail Pot 1")
Child_Hideout_1_Torch_Jail:connect_one_way("Child Hideout 1 Torch Jail Pot 2")
Child_Hideout_1_Torch_Jail:connect_one_way("Child Hideout 1 Torch Jail Pot 3")
Child_Hideout_1_Torch_Jail:connect_one_way("Child Hideout 1 Torch Jail Crate", function() return CanBreakCrates() end)

Adult_Hideout_1_Torch_Jail:connect_one_way("Adult Hideout 1 Torch Jail Gerudo Key")
Adult_Hideout_1_Torch_Jail:connect_one_way("Adult Hideout Gerudo Membership Card", function() return can_finish_GerudoFortress end)
Adult_Hideout_1_Torch_Jail:connect_one_way("Adult Hideout 1 Torch Jail Pot 1")
Adult_Hideout_1_Torch_Jail:connect_one_way("Adult Hideout 1 Torch Jail Pot 2")
Adult_Hideout_1_Torch_Jail:connect_one_way("Adult Hideout 1 Torch Jail Pot 3")
Adult_Hideout_1_Torch_Jail:connect_one_way("Adult Hideout 1 Torch Jail Crate", function() return CanBreakCrates() end)


Child_Hideout_1_Torch_Jail:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_Hideout_1_Torch_Jail:connect_one_way_entrance("Child GF Entrances Behind Crates", Child_GF_Entrances_Behind_Crates)

Adult_Hideout_1_Torch_Jail:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_Hideout_1_Torch_Jail:connect_one_way_entrance("Adult GF Entrances Behind Crates", Adult_GF_Entrances_Behind_Crates)

-- "events": {
--     "Hideout 2 Torches Jail Gerudo": "is_adult or Kokiri_Sword",
--     "Hideout 2 Torches Jail Carpenter": "
--         'Hideout 2 Torches Jail Gerudo' and
--         gerudo_fortress == 'normal' and (Small_Key_Thieves_Hideout, 4)"
-- }
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torches Jail Gerudo Key", function() return Has("KokiriSword") end)
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail Pot 1")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail Pot 2")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail Pot 3")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail In Cell Pot 1")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail In Cell Pot 2")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail In Cell Pot 3")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail In Cell Pot 4")
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail Crate 1", function() return CanBreakCrates() end)
Child_Hideout_2_Torches_Jail:connect_one_way("Child Hideout 2 Torch Jail Crate 2", function() return CanBreakCrates() end)

Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torches Jail Gerudo Key")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail Pot 1")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail Pot 2")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail Pot 3")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail In Cell Pot 1")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail In Cell Pot 2")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail In Cell Pot 3")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail In Cell Pot 4")
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail Crate 1", function() return CanBreakCrates() end)
Adult_Hideout_2_Torches_Jail:connect_one_way("Adult Hideout 2 Torch Jail Crate 2", function() return CanBreakCrates() end)


Child_Hideout_2_Torches_Jail:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_Hideout_2_Torches_Jail:connect_one_way_entrance("Child GF Roof Entrance Cluster", Child_GF_Roof_Entrance_Cluster)

Adult_Hideout_2_Torches_Jail:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_Hideout_2_Torches_Jail:connect_one_way_entrance("Adult GF Roof Entrance Cluster", Adult_GF_Roof_Entrance_Cluster)

-- "events": {
--     "Hideout 3 Torches Jail Gerudo": "is_adult or Kokiri_Sword",
--     "Hideout 3 Torches Jail Carpenter": "
--         'Hideout 3 Torches Jail Gerudo' and
--         gerudo_fortress == 'normal' and (Small_Key_Thieves_Hideout, 4)"
-- },
Child_Hideout_3_Torches_Jail:connect_one_way("Child Hideout 3 Torches Jail Gerudo Key", function() return Has("KokiriSword") end)
Child_Hideout_3_Torches_Jail:connect_one_way("Child Hideout 3 Torch Jail Crate", function() return CanBreakCrates() end)

Adult_Hideout_3_Torches_Jail:connect_one_way("Adult Hideout 3 Torches Jail Gerudo Key")
Adult_Hideout_3_Torches_Jail:connect_one_way("Adult Hideout 3 Torch Jail Crate", function() return CanBreakCrates() end)

Child_Hideout_3_Torches_Jail:connect_one_way_entrance("Child GF 3 Torches Jail Exterior", Child_GF_3_Torches_Jail_Exterior)

Adult_Hideout_3_Torches_Jail:connect_one_way_entrance("Adult GF 3 Torches Jail Exterior", Adult_GF_3_Torches_Jail_Exterior)


-- "events": {
--     "Hideout 4 Torches Jail Gerudo": "is_adult or Kokiri_Sword",
--     "Hideout 4 Torches Jail Carpenter": "
--         'Hideout 4 Torches Jail Gerudo' and
--         gerudo_fortress == 'normal' and (Small_Key_Thieves_Hideout, 4)"
-- },
Child_Hideout_4_Torches_Jail:connect_one_way("Hideout 4 Torches Jail Gerudo Key", function() return Has("KokiriSword") end)
Child_Hideout_4_Torches_Jail:connect_one_way("Hideout 4 Torch Jail Pot 1")
Child_Hideout_4_Torches_Jail:connect_one_way("Hideout 4 Torch Jail Pot 2")

Adult_Hideout_4_Torches_Jail:connect_one_way("Hideout 4 Torches Jail Gerudo Key")
Adult_Hideout_4_Torches_Jail:connect_one_way("Hideout 4 Torch Jail Pot 1")
Adult_Hideout_4_Torches_Jail:connect_one_way("Hideout 4 Torch Jail Pot 2")

Child_Hideout_4_Torches_Jail:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_Hideout_4_Torches_Jail:connect_one_way_entrance("Child GF Roof Entrance Cluster", Child_GF_Roof_Entrance_Cluster)

Adult_Hideout_4_Torches_Jail:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_Hideout_4_Torches_Jail:connect_one_way_entrance("Adult GF Roof Entrance Cluster", Adult_GF_Roof_Entrance_Cluster)


Child_Hideout_Kitchen_Hallway:connect_one_way("Child Hideout Near Kitchen Crate 1", function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            logic_gerudo_kitchen
        ),
        CanBreakCrates()
    )
end)
Child_Hideout_Kitchen_Hallway:connect_one_way("Child Hideout Near Kitchen Crate 2", function() return CanBreakCrates() end)
Child_Hideout_Kitchen_Hallway:connect_one_way("Child Hideout Near Kitchen Crate 3", function() return CanBreakCrates() end)
Child_Hideout_Kitchen_Hallway:connect_one_way("Child Hideout Near Kitchen Crate 4", function() return CanBreakCrates() end)
Child_Hideout_Kitchen_Hallway:connect_one_way("Child Hideout Near Kitchen Crate 5", function() return CanBreakCrates() end)

Adult_Hideout_Kitchen_Hallway:connect_one_way("Adult Hideout Near Kitchen Crate 1", function()
    return All(
        Any(
            Has("GerudoMembershipCard"),
            logic_gerudo_kitchen,
            Has("Hookshot"),
            Has("Bow")
        ),
        CanBreakCrates()
    )
end)
Adult_Hideout_Kitchen_Hallway:connect_one_way("Adult Hideout Near Kitchen Crate 2", function() return CanBreakCrates() end)
Adult_Hideout_Kitchen_Hallway:connect_one_way("Adult Hideout Near Kitchen Crate 3", function() return CanBreakCrates() end)
Adult_Hideout_Kitchen_Hallway:connect_one_way("Adult Hideout Near Kitchen Crate 4", function() return CanBreakCrates() end)
Adult_Hideout_Kitchen_Hallway:connect_one_way("Adult Hideout Near Kitchen Crate 5", function() return CanBreakCrates() end)



Child_Hideout_Kitchen_Hallway:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_Hideout_Kitchen_Hallway:connect_one_way_entrance("Child GF Entrances Behind Crates", Child_GF_Entrances_Behind_Crates)
Child_Hideout_Kitchen_Hallway:connect_one_way_entrance("Child Hideout Kitchen Front", Child_Hideout_Kitchen_Front, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen
    )
end)
Child_Hideout_Kitchen_Hallway:connect_one_way_entrance("Child Hideout Kitchen Rear", Child_Hideout_Kitchen_Rear, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen
    )
end)
Child_Hideout_Kitchen_Hallway:connect_one_way_entrance("Child Hideout Kitchen Pots", Child_Hideout_Kitchen_Pots, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen
    )
end)

Adult_Hideout_Kitchen_Hallway:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_Hideout_Kitchen_Hallway:connect_one_way_entrance("Adult GF Entrances Behind Crates", Adult_GF_Entrances_Behind_Crates)
Adult_Hideout_Kitchen_Hallway:connect_one_way_entrance("Adult Hideout Kitchen Front", Adult_Hideout_Kitchen_Front, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen,
        Has("Bow"),
        Has("Hookshot")
    )
end)
Adult_Hideout_Kitchen_Hallway:connect_one_way_entrance("Adult Hideout Kitchen Rear", Adult_Hideout_Kitchen_Rear, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen,
        Has("Bow"),
        Has("Hookshot")
    )
end)
Adult_Hideout_Kitchen_Hallway:connect_one_way_entrance("Adult Hideout Kitchen Pots", Adult_Hideout_Kitchen_Pots, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen,
        Has("Bow"),
        Has("Hookshot")
    )
end)


Child_Hideout_Kitchen_Front:connect_one_way_entrance("Child GF Roof Entrance Cluster", Child_GF_Roof_Entrance_Cluster)
Child_Hideout_Kitchen_Front:connect_one_way_entrance("Child Hideout Kitchen Rear", Child_Hideout_Kitchen_Rear, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen
    )
end)
Child_Hideout_Kitchen_Front:connect_one_way_entrance("Child Hideout Kitchen Hallway", Child_Hideout_Kitchen_Hallway, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen
    )
end)

Adult_Hideout_Kitchen_Front:connect_one_way_entrance("Adult GF Roof Entrance Cluster", Adult_GF_Roof_Entrance_Cluster)
Adult_Hideout_Kitchen_Front:connect_one_way_entrance("Adult Hideout Kitchen Rear", Adult_Hideout_Kitchen_Rear, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen,
        Has("HoverBoots"),
        Has("Hookshot"),
        Has("Bow")
    )
end)
Adult_Hideout_Kitchen_Front:connect_one_way_entrance("Adult Hideout Kitchen Hallway", Adult_Hideout_Kitchen_Hallway, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen,
        Has("HoverBoots"),
        Has("Hookshot"),
        Has("Bow")
    )
end)
Adult_Hideout_Kitchen_Front:connect_one_way_entrance("Adult Hideout Kitchen Pots", Adult_Hideout_Kitchen_Pots, function() return Has("Boomerang") end)


Child_Hideout_Kitchen_Rear:connect_one_way_entrance("Child GT Kitchen Root Access", Child_GF_Kitchen_Roof_Access)
Child_Hideout_Kitchen_Rear:connect_one_way_entrance("Child Hidout Kitchen Front", Child_Hideout_Kitchen_Front, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen
    )
end)
Child_Hideout_Kitchen_Rear:connect_one_way_entrance("Child Hidout Kitchen Halleway", Child_Hideout_Kitchen_Hallway, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen
    )
end)

Adult_Hideout_Kitchen_Rear:connect_one_way_entrance("Adult GT Kitchen Root Access", Adult_GF_Kitchen_Roof_Access)
Adult_Hideout_Kitchen_Rear:connect_one_way_entrance("Adult Hidout Kitchen Front", Adult_Hideout_Kitchen_Front, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen,
        Has("Bow"),
        Has("Hookshot"),
        Has("HoverBoots")
    )
end)
Adult_Hideout_Kitchen_Rear:connect_one_way_entrance("Adult Hidout Kitchen Halleway", Adult_Hideout_Kitchen_Hallway, function()
    return Any(
        Has("GerudoMembershipCard"),
        logic_gerudo_kitchen,
        Has("Bow"),
        Has("Hookshot")
    )
end)
Adult_Hideout_Kitchen_Rear:connect_one_way_entrance("Adult Hidout Kitchen Pots", Adult_Hideout_Kitchen_Pots, function() return Has("Boomerang") end)



Child_Hideout_Kitchen_Pots:connect_one_way("Child Hideout Kitchen Pot 1")
Child_Hideout_Kitchen_Pots:connect_one_way("Child Hideout Kitchen Pot 2")

Adult_Hideout_Kitchen_Pots:connect_one_way("Adult Hideout Kitchen Pot 1")
Adult_Hideout_Kitchen_Pots:connect_one_way("Adult Hideout Kitchen Pot 2")



Child_Hideout_Hall_to_Balcony_Lower:connect_one_way("Child Hideout Break Room Pot 1", function() return Has("GerudoMembershipCard") end)
Child_Hideout_Hall_to_Balcony_Lower:connect_one_way("Child Hideout Break Room Pot 2", function() return Has("GerudoMembershipCard") end)
Child_Hideout_Hall_to_Balcony_Lower:connect_one_way("Child Hideout Break Room Hallway Crate 1", function() return CanBreakCrates() end)
Child_Hideout_Hall_to_Balcony_Lower:connect_one_way("Child Hideout Break Room Hallway Crate 2", function() return CanBreakCrates() end)
Child_Hideout_Hall_to_Balcony_Lower:connect_one_way("Child Hideout Break Room Crate 1", function()
    return All(
        CanBreakCrates(),
        Any(
            Has("GerudoMembershipCard"),
            Has("KokiriSword"),
            Has("DekuSticks")
        )
    )
end)
Child_Hideout_Hall_to_Balcony_Lower:connect_one_way("Child Hideout Break Room Crate 2", function()
    return All(
        CanBreakCrates(),
        Any(
            Has("GerudoMembershipCard"),
            Has("KokiriSword"),
            Has("DekuSticks")
        )
    )
end)

Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way("Adult Hideout Break Room Pot 1", function()
    return Any(
        Has("GerudoMembershipCard"),
        Has("Bow"),
        Has("Hookshot")
    )
end)
Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way("Adult Hideout Break Room Pot 2", function()
    return Any(
        Has("GerudoMembershipCard"),
        Has("Bow"),
        Has("Hookshot")
    )
end)
Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way("Adult Hideout Break Room Hallway Crate 1", function() return CanBreakCrates() end)
Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way("Adult Hideout Break Room Hallway Crate 2", function() return CanBreakCrates() end)
Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way("Adult Hideout Break Room Crate 1", function()
    return All(
        CanBreakCrates(),
        Any(
            Has("GerudoMembershipCard"),
            Has("Bow"),
            Has("Hookshot")
        )
    )
end)
Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way("Adult Hideout Break Room Crate 2", function()
    return All(
        CanBreakCrates(),
        Any(
            Has("GerudoMembershipCard"),
            Has("Bow"),
            Has("Hookshot")
        )
    )
end)

Child_Hideout_Hall_to_Balcony_Lower:connect_one_way_entrance("Child GF Hall to Balcony Entrance", Child_GF_Hall_to_Balcony_Entrance)

Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way_entrance("Adult GF Hall to Balcony Entrance", Adult_GF_Hall_to_Balcony_Entrance)
Adult_Hideout_Hall_to_Balcony_Lower:connect_one_way_entrance("Adult Hideout Hall to Balcony Upper", Adult_Hideout_Hall_to_Balcony_Upper, function() return Has("Hookshot") end)


Child_Hideout_Hall_to_Balcony_Upper:connect_one_way_entrance("Child Hideout Hall to Balcony Lower", Child_Hideout_Hall_to_Balcony_Lower)
Child_Hideout_Hall_to_Balcony_Upper:connect_one_way_entrance("Child GF Balcony", Child_GF_Balcony)

Adult_Hideout_Hall_to_Balcony_Upper:connect_one_way_entrance("Adult Hideout Hall to Balcony Lower", Adult_Hideout_Hall_to_Balcony_Lower)
Adult_Hideout_Hall_to_Balcony_Upper:connect_one_way_entrance("Adult GF Balcony", Adult_GF_Balcony)

