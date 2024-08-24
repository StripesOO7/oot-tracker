-- Child_Jabu_Jabus_Belly_Beginning = OOTLocation.new("Child_Jabu_Jabus_Belly_Beginning")
-- Child_Jabu_Jabus_Belly_Main = OOTLocation.new("Child_Jabu_Jabus_Belly_Main")
-- Child_Jabu_Jabus_Belly_Depths = OOTLocation.new("Child_Jabu_Jabus_Belly_Depths")
-- Child_Jabu_Jabus_Belly_Past_Big_Octo = OOTLocation.new("Child_Jabu_Jabus_Belly_Past_Big_Octo")
-- Child_Jabu_Jabus_Belly_Before_Boss = OOTLocation.new("Child_Jabu_Jabus_Belly_Before_Boss")

-- Adult_Jabu_Jabus_Belly_Beginning = OOTLocation.new("Adult_Jabu_Jabus_Belly_Beginning")
-- Adult_Jabu_Jabus_Belly_Main = OOTLocation.new("Adult_Jabu_Jabus_Belly_Main")
-- Adult_Jabu_Jabus_Belly_Depths = OOTLocation.new("Adult_Jabu_Jabus_Belly_Depths")
-- Adult_Jabu_Jabus_Belly_Past_Big_Octo = OOTLocation.new("Adult_Jabu_Jabus_Belly_Past_Big_Octo")
-- Adult_Jabu_Jabus_Belly_Before_Boss = OOTLocation.new("Adult_Jabu_Jabus_Belly_Before_Boss")


-- Child_Jabu_Jabus_Belly_Beginning:connect_one_way()
-- Adult_Jabu_Jabus_Belly_Beginning:connect_one_way()

Child_Jabu_Jabus_Belly_Beginning:connect_one_way_entrance("Child Zoras Fountain", Child_Zoras_Fountain)
Child_Jabu_Jabus_Belly_Beginning:connect_one_way_entrance("Child Jabu Jabus Belly Main", Child_Jabu_Jabus_Belly_Main, function() return Can_use_projectile("child") end)

Adult_Jabu_Jabus_Belly_Beginning:connect_one_way_entrance("Adult Zoras Fountain", Adult_Zoras_Fountain)
Adult_Jabu_Jabus_Belly_Beginning:connect_one_way_entrance("Adult Jabu Jabus Belly Main", Adult_Jabu_Jabus_Belly_Main, function() return Can_use_projectile("adult") end)


Child_Jabu_Jabus_Belly_Main:connect_one_way("Child Jabu Jabus Belly Boomerang Chest")
Child_Jabu_Jabus_Belly_Main:connect_one_way("Child Jabu Jabus Belly Deku Scrub", function() 
    return Any(
        Can_dive("child"),
        true,
        Has("logic_jabu_alcove_jump_dive"),
        Can_use("IronBoots", "child")
    ) 
end)
Child_Jabu_Jabus_Belly_Main:connect_one_way("Child Jabu Jabus Belly Small Wooden Crate")
Child_Jabu_Jabus_Belly_Main:connect_one_way("Child Jabu Jabus Belly Basement 2 Octoroks Pot 1", function() 
    return Any(
        Can_use("Boomerang", "child"),
        Can_use("HoverBoots", "child")
    ) 
end)
Child_Jabu_Jabus_Belly_Main:connect_one_way("Child Jabu Jabus Belly Basement 2 Octoroks Pot 2", function() 
    return Any(
        Can_use("Boomerang", "child"),
        Can_use("HoverBoots", "child")
    ) 
end)
Child_Jabu_Jabus_Belly_Main:connect_one_way("Child Jabu Jabus Belly Basement 2 Octoroks Pot 3", function() 
    return Any(
        Can_use("Boomerang", "child"),
        Can_use("HoverBoots", "child")
    ) 
end)
Child_Jabu_Jabus_Belly_Main:connect_one_way("Child Jabu Jabus Belly Basement 2 Octoroks Pot 4", function() 
    return Any(
        Can_use("Boomerang", "child"),
        Can_use("HoverBoots", "child")
    ) 
end)
Child_Jabu_Jabus_Belly_Main:connect_one_way("Child Jabu Jabus Belly Basement Switch Room Pot 1")
Child_Jabu_Jabus_Belly_Main:connect_one_way("Child Jabu Jabus Belly Basement Switch Room Pot 2")
Child_Jabu_Jabus_Belly_Main:connect_one_way("Child Jabu Jabus Belly GS Water Switch Room")
Child_Jabu_Jabus_Belly_Main:connect_one_way("Child Jabu Jabus Belly GS Lobby Basement Lower", function() 
    return Any(
        Can_use("Boomerang", "child"),
        Can_use("Hookshot", "child")
    ) 
end)
Child_Jabu_Jabus_Belly_Main:connect_one_way("Child Jabu Jabus Belly GS Lobby Basement Upper", function() 
    return Any(
        Can_use("Boomerang", "child"),
        Can_use("Hookshot", "child")
    ) 
end)

Adult_Jabu_Jabus_Belly_Main:connect_one_way("Adult Jabu Jabus Belly Boomerang Chest")
Adult_Jabu_Jabus_Belly_Main:connect_one_way("Adult Jabu Jabus Belly Deku Scrub", function() 
    return Any(
        Can_dive("adult"),
        false,
        Has("logic_jabu_alcove_jump_dive"),
        Can_use("IronBoots", "adult")
    ) 
end)
Adult_Jabu_Jabus_Belly_Main:connect_one_way("Adult Jabu Jabus Belly Small Wooden Crate")
Adult_Jabu_Jabus_Belly_Main:connect_one_way("Adult Jabu Jabus Belly Basement 2 Octoroks Pot 1", function() 
    return Any(
        Can_use("Boomerang", "adult"),
        Can_use("HoverBoots", "adult")
    ) 
end)
Adult_Jabu_Jabus_Belly_Main:connect_one_way("Adult Jabu Jabus Belly Basement 2 Octoroks Pot 2", function() 
    return Any(
        Can_use("Boomerang", "adult"),
        Can_use("HoverBoots", "adult")
    ) 
end)
Adult_Jabu_Jabus_Belly_Main:connect_one_way("Adult Jabu Jabus Belly Basement 2 Octoroks Pot 3", function() 
    return Any(
        Can_use("Boomerang", "adult"),
        Can_use("HoverBoots", "adult")
    ) 
end)
Adult_Jabu_Jabus_Belly_Main:connect_one_way("Adult Jabu Jabus Belly Basement 2 Octoroks Pot 4", function() 
    return Any(
        Can_use("Boomerang", "adult"),
        Can_use("HoverBoots", "adult")
    ) 
end)
Adult_Jabu_Jabus_Belly_Main:connect_one_way("Adult Jabu Jabus Belly Basement Switch Room Pot 1")
Adult_Jabu_Jabus_Belly_Main:connect_one_way("Adult Jabu Jabus Belly Basement Switch Room Pot 2")
Adult_Jabu_Jabus_Belly_Main:connect_one_way("Adult Jabu Jabus Belly GS Water Switch Room")
Adult_Jabu_Jabus_Belly_Main:connect_one_way("Adult Jabu Jabus Belly GS Lobby Basement Lower", function() 
    return Any(
        Can_use("Boomerang", "adult"),
        Can_use("Hookshot", "adult")
    ) 
end)
Adult_Jabu_Jabus_Belly_Main:connect_one_way("Adult Jabu Jabus Belly GS Lobby Basement Upper", function() 
    return Any(
        Can_use("Boomerang", "adult"),
        Can_use("Hookshot", "adult")
    ) 
end)


Child_Jabu_Jabus_Belly_Main:connect_one_way_entrance("Child Jabu Jabus Belly Depths", Child_Jabu_Jabus_Belly_Depths, function() return Can_use("Boomerang", "child") end )
Child_Jabu_Jabus_Belly_Main:connect_one_way_entrance("Child Jabu Jabus Belly Before Boss", Child_Jabu_Jabus_Belly_Before_Boss, function() 
    return Any(
        All(
            Has("logic_jabu_boss_hover"),
            Can_use("HoverBoots", "child")
        ),
        Has("jabu_shortcuts"),
        Child_Jabu_Jabus_Belly_Past_Big_Octo.accessibility_level >5
    )
end)

Adult_Jabu_Jabus_Belly_Main:connect_one_way_entrance("Adult Jabu Jabus Belly Depths", Adult_Jabu_Jabus_Belly_Depths, function() return Can_use("Boomerang", "adult") end )
Adult_Jabu_Jabus_Belly_Main:connect_one_way_entrance("Adult Jabu Jabus Belly Before Boss", Adult_Jabu_Jabus_Belly_Before_Boss, function() 
    return Any(
        All(
            Has("logic_jabu_boss_hover"),
            Can_use("HoverBoots", "adult")
        ),
        Has("jabu_shortcuts"),
        Adult_Jabu_Jabus_Belly_Past_Big_Octo.accessibility_level >5
    )
end)


Child_Jabu_Jabus_Belly_Depths:connect_one_way("Child Jabu Jabus Belly Map Chest")
Child_Jabu_Jabus_Belly_Depths:connect_one_way("Child Jabu Jabus Belly Compass Chest")

Adult_Jabu_Jabus_Belly_Depths:connect_one_way("Adult Jabu Jabus Belly Map Chest")
Adult_Jabu_Jabus_Belly_Depths:connect_one_way("Adult Jabu Jabus Belly Compass Chest")

Child_Jabu_Jabus_Belly_Depths:connect_one_way_entrance("Child Jabu Jabus Belly Past Big Octo", Child_Jabu_Jabus_Belly_Past_Big_Octo, function() 
    return Any(
        Can_use("DekuStick", "child"),
        Can_use("KokiriSword", "child")
    ) 
end)
Adult_Jabu_Jabus_Belly_Depths:connect_one_way_entrance("Adult Jabu Jabus Belly Past Big Octo", Adult_Jabu_Jabus_Belly_Past_Big_Octo, function() 
    return Any(
        Can_use("DekuStick", "adult"),
        Can_use("KokiriSword", "adult")
    ) 
end)

Child_Jabu_Jabus_Belly_Past_Big_Octo:connect_one_way("Child Jabu Jabus Belly Above Big Octo Pot 1")
Child_Jabu_Jabus_Belly_Past_Big_Octo:connect_one_way("Child Jabu Jabus Belly Above Big Octo Pot 2")

Adult_Jabu_Jabus_Belly_Past_Big_Octo:connect_one_way("Adult Jabu Jabus Belly Above Big Octo Pot 1")
Adult_Jabu_Jabus_Belly_Past_Big_Octo:connect_one_way("Adult Jabu Jabus Belly Above Big Octo Pot 2")


-- Child_Jabu_Jabus_Belly_Past_Big_Octo:connect_one_way_entrance()
-- Adult_Jabu_Jabus_Belly_Past_Big_Octo:connect_one_way_entrance()

Child_Jabu_Jabus_Belly_Before_Boss:connect_one_way("Child Jabu Jabus Belly GS Near Boss")
Adult_Jabu_Jabus_Belly_Before_Boss:connect_one_way("Adult Jabu Jabus Belly GS Near Boss")

Child_Jabu_Jabus_Belly_Before_Boss:connect_one_way_entrance("Child Jabu Jabus Belly Boss Door", Child_Jabu_Jabus_Belly_Boss_Door, function() 
    return Any(
        Can_use("Boomerang", "child"),
        All(
            Has("logic_jabu_near_boss_ranged"),
            Any(
                Can_use("Hookshot", "child"),
                Can_use("Bow", "child"),
                Can_use("Slingshot", "child")
            )
        ),
        All(
            Has("logic_jabu_near_boss_explosives"),
            Any(
                Has_bombchus(),
                All(
                    Bombs(),
                    Can_use("HoverBoots", "child")
                )
            )
        )
    )
end)
Adult_Jabu_Jabus_Belly_Before_Boss:connect_one_way_entrance("Adult Jabu Jabus Belly Boss Door", Adult_Jabu_Jabus_Belly_Boss_Door, function() 
    return Any(
        Can_use("Boomerang", "adult"),
        All(
            Has("logic_jabu_near_boss_ranged"),
            Any(
                Can_use("Hookshot", "adult"),
                Can_use("Bow", "adult"),
                Can_use("Slingshot", "adult")
            )
        ),
        All(
            Has("logic_jabu_near_boss_explosives"),
            Any(
                Has_bombchus(),
                All(
                    Bombs(),
                    Can_use("HoverBoots", "adult")
                )
            )
        )
    )
end)





-- --     {
--     "region_name": "Jabu Jabus Belly Beginning",
--     "dungeon": "Jabu Jabus Belly",
--     "exits": {
--         "Zoras Fountain": "True",
--         "Jabu Jabus Belly Main": "can_use_projectile"
--     }
-- },
-- {
--     "region_name": "Jabu Jabus Belly Main",
--     "dungeon": "Jabu Jabus Belly",
--     "locations": {
--         "Jabu Jabus Belly Boomerang Chest": "True",
--         "Jabu Jabus Belly Deku Scrub": "
--             can_dive or is_child or logic_jabu_alcove_jump_dive or can_use(Iron_Boots)",
--         "Jabu Jabus Belly Small Wooden Crate": "True",
--         "Jabu Jabus Belly Basement 2 Octoroks Pot 1": "can_use(Boomerang) or can_use(Hover_Boots)",
--         "Jabu Jabus Belly Basement 2 Octoroks Pot 2": "can_use(Boomerang) or can_use(Hover_Boots)",
--         "Jabu Jabus Belly Basement 2 Octoroks Pot 3": "can_use(Boomerang) or can_use(Hover_Boots)",
--         "Jabu Jabus Belly Basement 2 Octoroks Pot 4": "can_use(Boomerang) or can_use(Hover_Boots)",
--         "Jabu Jabus Belly Basement Switch Room Pot 1": "True",
--         "Jabu Jabus Belly Basement Switch Room Pot 2": "True",
--         "Jabu Jabus Belly GS Water Switch Room": "True",
--         "Jabu Jabus Belly GS Lobby Basement Lower": "can_use(Boomerang) or can_use(Hookshot)",
--         "Jabu Jabus Belly GS Lobby Basement Upper": "can_use(Boomerang) or can_use(Hookshot)",
--         "Fairy Pot": "has_bottle"
--     },
--     "exits": {
--         "Jabu Jabus Belly Depths": "can_use(Boomerang)",
--         "Jabu Jabus Belly Before Boss": "
--             (logic_jabu_boss_hover and can_use(Hover_Boots))
--             or jabu_shortcuts or 'Jabu Jabus Belly Floor Lowered'"
--     }
-- },
-- {
--     "region_name": "Jabu Jabus Belly Depths",
--     "dungeon": "Jabu Jabus Belly",
--     "locations": {
--         "Jabu Jabus Belly Map Chest": "True",
--         "Jabu Jabus Belly Compass Chest": "True"
--     },
--     "exits": {
--         "Jabu Jabus Belly Past Big Octo": "Sticks or Kokiri_Sword"
--     }
-- },
-- {
--     "region_name": "Jabu Jabus Belly Past Big Octo",
--     "dungeon": "Jabu Jabus Belly",
--     "events": {
--         "Jabu Jabus Belly Floor Lowered": "True"
--     },
--     "locations": {
--         "Jabu Jabus Belly Above Big Octo Pot 1": "True",
--         "Jabu Jabus Belly Above Big Octo Pot 2": "True",
--         "Nut Pot": "True"
--     }
-- },
-- {
--     "region_name": "Jabu Jabus Belly Before Boss",
--     "dungeon": "Jabu Jabus Belly",
--     "locations": {
--         "Jabu Jabus Belly GS Near Boss": "True"
--     },
--     "exits": {
--         "Jabu Jabus Belly Boss Door": "
--             can_use(Boomerang) or
--             (logic_jabu_near_boss_ranged and
--                 (can_use(Hookshot) or can_use(Bow) or can_use(Slingshot))) or
--             (logic_jabu_near_boss_explosives and
--                 (has_bombchus or (Bombs and can_use(Hover_Boots))))"
--     }
-- }