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
        Can_dive(),
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
        Can_dive(),
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
            Can_use("HoverBoots", "")
        ),
        Has("jabu_shortcuts"),
        CanReach(Child_Jabu_Jabus_Belly_Past_Big_Octo)
    )
end)

Adult_Jabu_Jabus_Belly_Main:connect_one_way_entrance("Adult Jabu Jabus Belly Depths", Adult_Jabu_Jabus_Belly_Depths, function() return Can_use("Boomerang", "adult") end )
Adult_Jabu_Jabus_Belly_Main:connect_one_way_entrance("Adult Jabu Jabus Belly Before Boss", Adult_Jabu_Jabus_Belly_Before_Boss, function() 
    return Any(
        All(
            Has("logic_jabu_boss_hover"),
            Can_use("HoverBoots", "adukt")
        ),
        Has("jabu_shortcuts"),
        CanReach(Adult_Jabu_Jabus_Belly_Past_Big_Octo)
    )
end)


Child_Jabu_Jabus_Belly_Depths:connect_one_way("Child Jabu Jabus Belly Map Chest")
Child_Jabu_Jabus_Belly_Depths:connect_one_way("Child Jabu Jabus Belly Compass Chest")

Adult_Jabu_Jabus_Belly_Depths:connect_one_way("Adult Jabu Jabus Belly Map Chest")
Adult_Jabu_Jabus_Belly_Depths:connect_one_way("Adult Jabu Jabus Belly Compass Chest")

Child_Jabu_Jabus_Belly_Depths:connect_one_way_entrance("Child Jabu Jabus Belly Past Big Octo", Child_Jabu_Jabus_Belly_Past_Big_Octo, function() 
    return Any(
        Sticks(),
        Has("KokiriSword")
    ) 
end)
Adult_Jabu_Jabus_Belly_Depths:connect_one_way_entrance("Adult Jabu Jabus Belly Past Big Octo", Adult_Jabu_Jabus_Belly_Past_Big_Octo, function() 
    return Any(
        Sticks(),
        Has("KokiriSword")
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
                    Bombs,
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
                    Bombs,
                    Can_use("HoverBoots", "adult")
                )
            )
        )
    )
end)





--     {
--         "region_name": "Jabu Jabus Belly Beginning",
--         "dungeon": "Jabu Jabus Belly",
--         "exits": {
--             "Zoras Fountain": "True",
--             "Jabu Jabus Belly Main": "can_use_projectile"
--         }
--     },
--     {
--         "region_name": "Jabu Jabus Belly Main",
--         "dungeon": "Jabu Jabus Belly",
--         "locations": {
--             "Jabu Jabus Belly Boomerang Chest": "True",
--             "Jabu Jabus Belly Deku Scrub": "
--                 can_dive or is_child or logic_jabu_alcove_jump_dive or can_use(IronBoots)",
--             "Jabu Jabus Belly Small Wooden Crate": "True",
--             "Jabu Jabus Belly Basement 2 Octoroks Pot 1": "can_use(Boomerang) or can_use(HoverBoots)",
--             "Jabu Jabus Belly Basement 2 Octoroks Pot 2": "can_use(Boomerang) or can_use(HoverBoots)",
--             "Jabu Jabus Belly Basement 2 Octoroks Pot 3": "can_use(Boomerang) or can_use(HoverBoots)",
--             "Jabu Jabus Belly Basement 2 Octoroks Pot 4": "can_use(Boomerang) or can_use(HoverBoots)",
--             "Jabu Jabus Belly Basement Switch Room Pot 1": "True",
--             "Jabu Jabus Belly Basement Switch Room Pot 2": "True",
--             "Jabu Jabus Belly GS Water Switch Room": "True",
--             "Jabu Jabus Belly GS Lobby Basement Lower": "can_use(Boomerang) or can_use(Hookshot)",
--             "Jabu Jabus Belly GS Lobby Basement Upper": "can_use(Boomerang) or can_use(Hookshot)",
--             "Fairy Pot": "has_bottle"
--         },
--         "exits": {
--             "Jabu Jabus Belly Depths": "can_use(Boomerang)",
--             "Jabu Jabus Belly Before Boss": "
--                 (logic_jabu_boss_hover and can_use(HoverBoots))
--                 or jabu_shortcuts or 'Jabu Jabus Belly Floor Lowered'"
--         }
--     },
--     {
--         "region_name": "Jabu Jabus Belly Depths",
--         "dungeon": "Jabu Jabus Belly",
--         "locations": {
--             "Jabu Jabus Belly Map Chest": "True",
--             "Jabu Jabus Belly Compass Chest": "True"
--         },
--         "exits": {
--             "Jabu Jabus Belly Past Big Octo": "Sticks or Kokiri_Sword"
--         }
--     },
--     {
--         "region_name": "Jabu Jabus Belly Past Big Octo",
--         "dungeon": "Jabu Jabus Belly",
--         "events": {
--             "Jabu Jabus Belly Floor Lowered": "True"
--         },
--         "locations": {
--             "Jabu Jabus Belly Above Big Octo Pot 1": "True",
--             "Jabu Jabus Belly Above Big Octo Pot 2": "True",
--             "Nut Pot": "True"
--         }
--     },
--     {
--         "region_name": "Jabu Jabus Belly Before Boss",
--         "dungeon": "Jabu Jabus Belly",
--         "locations": {
--             "Jabu Jabus Belly GS Near Boss": "True"
--         },
--         "exits": {
--             "Jabu Jabus Belly Boss Door": "
--                 can_use(Boomerang) or
--                 (logic_jabu_near_boss_ranged and
--                     (can_use(Hookshot) or can_use(Bow) or can_use(Slingshot))) or
--                 (logic_jabu_near_boss_explosives and
--                     (has_bombchus or (Bombs and can_use(HoverBoots))))"
--         }
--     }

-- --MQ

--     {
--         "region_name": "Jabu Jabus Belly Beginning",
--         "dungeon": "Jabu Jabus Belly",
--         "locations": {
--             "Jabu Jabus Belly MQ Map Chest": "can_blast_or_smash",
--             "Jabu Jabus Belly MQ First Room Side Chest": "can_use(Slingshot)",
--             "Jabu Jabus Belly MQ First Room Pot 1": "True",
--             "Jabu Jabus Belly MQ First Room Pot 2": "True",
--             "Nut Pot": "True"
--         },
--         "exits": {
--             "Zoras Fountain": "True",
--             "Jabu Jabus Belly Elevator Room": "here(can_use(Slingshot)) or jabu_shortcuts"
--         }
--     },
--     {
--         "region_name": "Jabu Jabus Belly Elevator Room",
--         "dungeon": "Jabu Jabus Belly",
--         "locations": {
--             "Jabu Jabus Belly MQ Second Room Lower Chest": "True",
--             "Jabu Jabus Belly MQ Second Room Upper Chest": "
--                 here(can_use(Slingshot)) and
--                 (can_use(HoverBoots) or can_use(Hookshot) or
--                 'Jabu Jabus Belly Floor Lowered' or jabu_shortcuts)",
--             "Jabu Jabus Belly MQ Compass Chest": "
--                 (is_child or can_dive or IronBoots or logic_jabu_alcove_jump_dive) and
--                 (can_use(Slingshot) or has_bombchus or can_use(Bow) or can_use(Hookshot) or
--                    (logic_jabu_mq_rang_jump and can_use(Boomerang)))",
--             "Jabu Jabus Belly MQ Recovery Heart 1": "True",
--             "Jabu Jabus Belly MQ Recovery Heart 2": "True",
--             "Jabu Jabus Belly MQ Underwater Green Rupee 1": "
--                 can_use(Boomerang) or (Progressive_Scale, 2) or can_use(IronBoots)",
--             "Jabu Jabus Belly MQ Underwater Green Rupee 2": "
--                 can_use(Boomerang) or can_dive or can_use(IronBoots)",
--             "Jabu Jabus Belly MQ Underwater Green Rupee 3": "True",
--             "Jabu Jabus Belly MQ Elevator Room Pot 1": "True",
--             "Jabu Jabus Belly MQ Elevator Room Pot 2": "True"
--         },
--         "exits": {
--             "Jabu Jabus Belly Main": "
--                 here(is_child or can_dive or IronBoots or logic_jabu_alcove_jump_dive)",
--             "Jabu Jabus Belly Before Boss": "
--                 jabu_shortcuts or 'Jabu Jabus Belly Floor Lowered' or
--                 ('Jabu Jabus Belly Parasitic Tentacle Cleared' and
--                     (can_use(HoverBoots) or can_use(Hookshot)))"
--         }
--     },
--     {
--         "region_name": "Jabu Jabus Belly Main",
--         "dungeon": "Jabu Jabus Belly",
--         "locations": {
--             "Jabu Jabus Belly MQ Basement Near Vines Chest": "can_use(Slingshot)",
--             "Jabu Jabus Belly MQ Basement Near Switches Chest": "can_use(Slingshot)",
--             "Jabu Jabus Belly MQ Boomerang Room Small Chest": "True",
--             "Jabu Jabus Belly MQ Boomerang Chest": "
--                 Kokiri_Sword or Slingshot or Bombs or Sticks or is_adult",
--             "Jabu Jabus Belly MQ Boomerang Room Pot 1": "True",
--             "Jabu Jabus Belly MQ Boomerang Room Pot 2": "True",
--             "Jabu Jabus Belly MQ GS Boomerang Chest Room": "
--                 (can_play(Song_of_Time) and (can_child_attack or is_adult)) or
--                 (logic_jabu_mq_sot_gs and can_use(Boomerang))",
--             "Jabu Jabus Belly MQ GS Invisible Enemies Room": "
--                 (at('Jabu Jabus Belly Depths', True) or jabu_shortcuts) and
--                 ((can_use(Hookshot) and can_use(HoverBoots)) or
--                     (here((logic_lens_jabu_mq or can_use(Lens_of_Truth)) and
--                             (can_use(Slingshot) or can_use(Bow) or can_use(Longshot) or
--                             (can_use(Hookshot) and can_use(IronBoots) and logic_lens_jabu_mq))) and
--                         (can_use(Boomerang) or (can_use(Hookshot) and can_use(IronBoots)))))"
--             # Lens of Truth cannot be used underwater.
--             # Adult's legs are too long to swim directly onto the Hookshot pillar.
--         },
--         "exits": {
--             "Jabu Jabus Belly Depths": "has_explosives and can_use(Boomerang) and can_use(Slingshot)"
--         }
--     },
--     {
--         "region_name": "Jabu Jabus Belly Depths",
--         "dungeon": "Jabu Jabus Belly",
--         "events": {
--             "Jabu Jabus Belly Parasitic Tentacle Cleared": "True"
--         },
--         "locations": {
--             "Jabu Jabus Belly MQ Falling Like Like Room Chest": "True",
--             "Jabu Jabus Belly MQ Falling Like Like Room Pot 1": "True",
--             "Jabu Jabus Belly MQ Falling Like Like Room Pot 2": "True",
--             "Jabu Jabus Belly MQ GS Tailpasaran Room": "Sticks or can_use(Dins_Fire)"
--         },
--         "exits": {
--             "Jabu Jabus Belly Past Big Octo": "Sticks or (can_use(Dins_Fire) and Kokiri_Sword)"
--         }
--     },
--     {
--         "region_name": "Jabu Jabus Belly Past Big Octo",
--         "dungeon": "Jabu Jabus Belly",
--         "events": {
--             "Jabu Jabus Belly Floor Lowered": "True"
--         },
--         "locations": {
--             "Jabu Jabus Belly MQ Cow": "can_play(Eponas_Song)"
--         }
--     },
--     {
--         "region_name": "Jabu Jabus Belly Before Boss",
--         "dungeon": "Jabu Jabus Belly",
--         "locations": {
--             "Jabu Jabus Belly MQ Near Boss Chest": "can_use(Slingshot)",
--             "Jabu Jabus Belly MQ GS Near Boss": "
--                 can_use(Boomerang) or (logic_jabu_near_boss_ranged and can_use(Hookshot))",
--             "Fairy Pot": "has_bottle"
--         },
--         "exits": {
--             "Jabu Jabus Belly Boss Door": "here(can_use(Slingshot)) or jabu_shortcuts"
--         }
--     }
