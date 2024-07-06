-- Child_Deku_Tree_Lobby = OOTLocation.new("Child_Deku_Tree_Lobby")
-- Child_Deku_Tree_Slingshot_Room = OOTLocation.new("Child_Deku_Tree_Slingshot_Room")
-- Child_Deku_Tree_Basement = OOTLocation.new("Child_Deku_Tree_Basement")
-- Child_Deku_Tree_Basement_Back_Room = OOTLocation.new("Child_Deku_Tree_Basement_Back_Room")
-- Child_Deku_Tree_Basement_Ledge = OOTLocation.new("Child_Deku_Tree_Basement_Ledge")
-- Child_Deku_Tree_Before_Boss = OOTLocation.new("Child_Deku_Tree_Before_Boss")

-- Adult_Deku_Tree_Lobby = OOTLocation.new("Adult_Deku_Tree_Lobby")
-- Adult_Deku_Tree_Slingshot_Room = OOTLocation.new("Adult_Deku_Tree_Slingshot_Room")
-- Adult_Deku_Tree_Basement = OOTLocation.new("Adult_Deku_Tree_Basement")
-- Adult_Deku_Tree_Basement_Back_Room = OOTLocation.new("Adult_Deku_Tree_Basement_Back_Room")
-- Adult_Deku_Tree_Basement_Ledge = OOTLocation.new("Adult_Deku_Tree_Basement_Ledge")
-- Adult_Deku_Tree_Before_Boss = OOTLocation.new("Adult_Deku_Tree_Before_Boss")


Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree Map Chest")
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree Compass Chest")
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree Compass Room Side Chest")
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree Lower Lobby Recovery Heart")
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree Upper Lobby Recovery Heart", function()
    return Any(
        false,
        Can_child_attack("child"),
        Nuts()
    )
end)
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree GS Compass Room", function()
    return Any(
        false,
        Can_child_attack("child")
    )
end)


Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree Map Chest")
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree Compass Chest")
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree Compass Room Side Chest")
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree Lower Lobby Recovery Heart")
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree Upper Lobby Recovery Heart", function()
    return Any(
        true,
        Can_child_attack("adult"),
        Nuts()
    )
end)
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree GS Compass Room", function()
    return Any(
        true,
        Can_child_attack("adult")
    )
end)

Child_Deku_Tree_Lobby:connect_one_way_entrance("Child KF Outside Deku Tree", Child_KF_Outside_Deku_Tree)
Child_Deku_Tree_Lobby:connect_one_way_entrance("Child Deku Tree Slingshot Room", Child_Deku_Tree_Slingshot_Room, function() return Has_shield("child") end)
Child_Deku_Tree_Lobby:connect_one_way_entrance("Child Deku Tree Basement", Child_Deku_Tree_Basement, function() 
    return Any(
        Has("deku_tree_shortcuts"),
        false,
        Can_child_attack("child"),
        Nuts()
    ) 
end)

Adult_Deku_Tree_Lobby:connect_one_way_entrance("Adult KF Outside Deku Tree", Adult_KF_Outside_Deku_Tree)
Adult_Deku_Tree_Lobby:connect_one_way_entrance("Adult Deku Tree Slingshot Room", Adult_Deku_Tree_Slingshot_Room, function() return Has_shield("adult") end)
Adult_Deku_Tree_Lobby:connect_one_way_entrance("Adult Deku Tree Basement", Adult_Deku_Tree_Basement, function() 
    return Any(
        Has("deku_tree_shortcuts"),
        true,
        Can_child_attack("adult"),
        Nuts()
    ) 
end)


Child_Deku_Tree_Slingshot_Room:connect_one_way("Child Deku Tree Slingshot Chest")
Child_Deku_Tree_Slingshot_Room:connect_one_way("Child Deku Tree Slingshot Room Side Chest")

Adult_Deku_Tree_Slingshot_Room:connect_one_way("Adult Deku Tree Slingshot Chest")
Adult_Deku_Tree_Slingshot_Room:connect_one_way("Adult Deku Tree Slingshot Room Side Chest")


-- Child_Deku_Tree_Slingshot_Room:connect_one_way_entrance()
-- Adult_Deku_Tree_Slingshot_Room:connect_one_way_entrance()

Child_Deku_Tree_Basement:connect_one_way("Child Deku Tree Basement Chest")
Child_Deku_Tree_Basement:connect_one_way("Child Deku Tree GS Basement Gate", function() return Any(false, Can_child_attack("child")) end)
Child_Deku_Tree_Basement:connect_one_way("Child Deku Tree GS Basement Vines", function()
    return Any(
        Can_use_projectile("child"),
        Can_use("DinsFire", "child"),
        All(
            Has("logic_deku_basement_gs"),
            Any(
                false,
                Can_use("DekuStick", "child"),
                Can_use("KokiriSword", "child")
            )
        )
    )
end)

Adult_Deku_Tree_Basement:connect_one_way("Adult Deku Tree Basement Chest")
Adult_Deku_Tree_Basement:connect_one_way("Adult Deku Tree GS Basement Gate", function() return Any(true, Can_child_attack("adult")) end)
Adult_Deku_Tree_Basement:connect_one_way("Adult Deku Tree GS Basement Vines", function()
    return Any(
        Can_use_projectile("adult"),
        Can_use("DinsFire", "adult"),
        All(
            Has("logic_deku_basement_gs"),
            Any(
                true,
                Can_use("DekuStick", "adult"),
                Can_use("KokiriSword", "adult")
            )
        )
    )
end)


Child_Deku_Tree_Basement:connect_one_way_entrance("Child Deku Tree Basement Back Room", Child_Deku_Tree_Basement_Back_Room, function() 
    return All(
        Any(
            Has_fire_source_with_torch("child"),
            Can_use("Bow", "child")
        ),
        Any(
            Can_use("Slingshot", "child"),
            Can_use("Bow", "child")
        )
    )
end)
Child_Deku_Tree_Basement:connect_one_way_entrance("Child Deku Tree Basement Ledge", Child_Deku_Tree_Basement_Ledge, function()
    return Any(
        Has("deku_tree_shortcuts"),
        false,
        Has("logic_deku_b1_skip")
    )
end)

Adult_Deku_Tree_Basement:connect_one_way_entrance("Adult Deku Tree Basement Back Room", Adult_Deku_Tree_Basement_Back_Room, function() 
    return All(
        Any(
            Has_fire_source_with_torch("adult"),
            Can_use("Bow", "adult")
        ),
        Any(
            Can_use("Slingshot", "adult"),
            Can_use("Bow", "adult")
        )
    )
end)
Adult_Deku_Tree_Basement:connect_one_way_entrance("Adult Deku Tree Basement Ledge", Adult_Deku_Tree_Basement_Ledge, function()
    return Any(
        Has("deku_tree_shortcuts"),
        true,
        Has("logic_deku_b1_skip")
    )
end)


Child_Deku_Tree_Basement_Back_Room:connect_one_way("Child Deku Tree GS Basement Back Room", function() 
    return All(
        Any(
            Has_fire_source_with_torch("child"),
            Can_use("Bow", "child")
        ),
        Can_blast_or_smash("child"),
        Any(
            Can_use("Boomerang", "child"),
            Can_use("Hookshot", "child")
        )
    )
end)
Adult_Deku_Tree_Basement_Back_Room:connect_one_way("Adult Deku Tree GS Basement Back Room", function() 
    return All(
        Any(
            Has_fire_source_with_torch("adult"),
            Can_use("Bow", "adult")
        ),
        Can_blast_or_smash("adult"),
        Any(
            Can_use("Boomerang", "adult"),
            Can_use("Hookshot", "adult")
        )
    )
end)

Child_Deku_Tree_Basement_Back_Room:connect_one_way_entrance("Child Deku Tree Basement Ledge", Child_Deku_Tree_Basement_Ledge)
Adult_Deku_Tree_Basement_Back_Room:connect_one_way_entrance("Adult Deku Tree Basement Ledge", Adult_Deku_Tree_Basement_Ledge, function() return false end)

-- Child_Deku_Tree_Basement_Ledge:connect_one_way()
-- Adult_Deku_Tree_Basement_Ledge:connect_one_way()

Child_Deku_Tree_Basement_Ledge:connect_one_way_entrance("Child Deku Tree Basement Back Room", Child_Deku_Tree_Basement_Back_Room)
Child_Deku_Tree_Basement_Ledge:connect_one_way_entrance("Child Deku Tree Before Boss", Child_Deku_Tree_Before_Boss, function()
    return Any(
        Has("deku_tree_shortcuts"),
        Any(
            Has_fire_source_with_torch("child"),
            All(
                Has("logic_deku_b1_webs_with_bow"),
                Can_use("Bow", "child")
            )
        )
    )
end)

Adult_Deku_Tree_Basement_Ledge:connect_one_way_entrance("Adult Deku Tree Basement Back Room", Adult_Deku_Tree_Basement_Back_Room, function() return false end)
Adult_Deku_Tree_Basement_Ledge:connect_one_way_entrance("Adult Deku Tree Before Boss", Adult_Deku_Tree_Before_Boss, function()
    return Any(
        Has("deku_tree_shortcuts"),
        Any(
            Has_fire_source_with_torch("adult"),
            All(
                Has("logic_deku_b1_webs_with_bow"),
                Can_use("Bow", "child")
            )
        )
    )
end)


Child_Deku_Tree_Before_Boss:connect_one_way("Child Deku Tree Basement Recovery Heart 1")
Child_Deku_Tree_Before_Boss:connect_one_way("Child Deku Tree Basement Recovery Heart 2")
Child_Deku_Tree_Before_Boss:connect_one_way("Child Deku Tree Basement Recovery Heart 3")

Adult_Deku_Tree_Before_Boss:connect_one_way("Adult Deku Tree Basement Recovery Heart 1")
Adult_Deku_Tree_Before_Boss:connect_one_way("Adult Deku Tree Basement Recovery Heart 2")
Adult_Deku_Tree_Before_Boss:connect_one_way("Adult Deku Tree Basement Recovery Heart 3")


Child_Deku_Tree_Before_Boss:connect_one_way_entrance("Child Deku Tree Boss Door", Child_Deku_Tree_Boss_Door, function() 
    return Any(
        Has("deku_tree_shortcuts"),
        Has_shield("child")
    ) 
end)
Adult_Deku_Tree_Before_Boss:connect_one_way_entrance("Adult Deku Tree Boss Door", Adult_Deku_Tree_Boss_Door, function() 
    return Any(
        Has("deku_tree_shortcuts"),
        Has_shield("adult")
    ) 
end)








--     {
--         "region_name": "Deku Tree Lobby",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree Map Chest": "True",
--             "Deku Tree Compass Chest": "True",
--             "Deku Tree Compass Room Side Chest": "True",
--             "Deku Tree Lower Lobby Recovery Heart": "True",
--             "Deku Tree Upper Lobby Recovery Heart": "is_adult or can_child_attack or Nuts",
--             "Deku Tree GS Compass Room": "is_adult or can_child_attack",
--             "Deku Baba Sticks": "is_adult or Kokiri_Sword or Boomerang",
--             "Deku Baba Nuts": "
--                 is_adult or Slingshot or Sticks or
--                 has_explosives or Kokiri_Sword or can_use(Dins_Fire)"
--         },
--         "exits": {
--             "KF Outside Deku Tree": "True",
--             "Deku Tree Slingshot Room": "here(has_shield)",
--             "Deku Tree Basement": "deku_tree_shortcuts or is_adult or can_child_attack or Nuts"
--         }
--     },
--     {
--         "region_name": "Deku Tree Slingshot Room",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree Slingshot Chest": "True",
--             "Deku Tree Slingshot Room Side Chest": "True"
--         }
--     },
--     {
--         "region_name": "Deku Tree Basement",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree Basement Chest": "True",
--             "Deku Tree GS Basement Gate": "is_adult or can_child_attack",
--             "Deku Tree GS Basement Vines": "
--                 can_use_projectile or can_use(Dins_Fire) or
--                 (logic_deku_basement_gs and (is_adult or Sticks or Kokiri_Sword))"
--         },
--         "exits": {
--             "Deku Tree Basement Back Room": "
--                 here(has_fire_source_with_torch or can_use(Bow)) and
--                 here(can_use(Slingshot) or can_use(Bow))",
--             "Deku Tree Basement Ledge": "deku_tree_shortcuts or here(is_adult) or logic_deku_b1_skip"
--         }
--     },
--     {
--         "region_name": "Deku Tree Basement Back Room",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree GS Basement Back Room": "
--                 here(has_fire_source_with_torch or can_use(Bow)) and
--                 here(can_blast_or_smash) and
--                 (can_use(Boomerang) or can_use(Hookshot))"
--         },
--         "exits": {
--             "Deku Tree Basement Ledge": "is_child"
--         }
--     },
--     {
--         "region_name": "Deku Tree Basement Ledge",
--         "dungeon": "Deku Tree",
--         "exits": {
--             "Deku Tree Basement Back Room": "is_child",
--             "Deku Tree Before Boss": "
--                 deku_tree_shortcuts or
--                 here(has_fire_source_with_torch or (logic_deku_b1_webs_with_bow and can_use(Bow)))"
--         }
--     },
--     {
--         "region_name": "Deku Tree Before Boss",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree Basement Recovery Heart 1": "True",
--             "Deku Tree Basement Recovery Heart 2": "True",
--             "Deku Tree Basement Recovery Heart 3": "True"
--         },
--         "exits": {
--             "Deku Tree Boss Door": "deku_tree_shortcuts or here(has_shield)"
--         }
--     }

-- -- MQ


--     {
--         "region_name": "Deku Tree Lobby",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ Map Chest": "True",
--             "Deku Tree MQ Slingshot Chest": "is_adult or can_child_attack",
--             "Deku Tree MQ Slingshot Room Back Chest": "has_fire_source_with_torch or can_use(Bow)",
--             "Deku Tree MQ Basement Chest": "has_fire_source_with_torch or can_use(Bow)",
--             "Deku Tree MQ Lower Lobby Recovery Heart": "True",
--             "Deku Tree MQ Slingshot Room Recovery Heart": "True",
--             "Deku Tree MQ Lobby Crate": "can_break_crate",
--             "Deku Tree MQ Slingshot Room Crate 1": "can_break_crate",
--             "Deku Tree MQ Slingshot Room Crate 2": "can_break_crate",
--             "Deku Tree MQ GS Lobby": "
--                 is_adult or Sticks or Kokiri_Sword or has_explosives or can_use(Dins_Fire) or
--                 ((Slingshot or Boomerang) and can_break_crate)",
--             "Deku Baba Sticks": "is_adult or Kokiri_Sword or Boomerang",
--             "Deku Baba Nuts": "
--                 is_adult or Slingshot or Sticks or
--                 has_explosives or Kokiri_Sword or can_use(Dins_Fire)"
--         },
--         "exits": {
--             "KF Outside Deku Tree": "True",
--             "Deku Tree Near Compass Room": "here(has_fire_source_with_torch or can_use(Bow))",
--             "Deku Tree Basement Water Room Front": "
--                 here(can_use(Slingshot) or can_use(Bow)) and here(has_fire_source_with_torch)",
--             "Deku Tree Basement Ledge": "deku_tree_shortcuts or here(is_adult) or logic_deku_b1_skip"
--         }
--     },
--     {
--         "region_name": "Deku Tree Near Compass Room",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ Near Compass Room Recovery Heart": "True"
--         },
--         "exits": {
--             "Deku Tree Compass Room": "here(can_use(Slingshot) or can_use(Bow))"
--         }
--     },
--     {
--         "region_name": "Deku Tree Compass Room",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ Compass Chest": "True",
--             "Deku Tree MQ Compass Room Recovery Heart": "
--                 has_bombchus or (Bombs and (can_play(Song_of_Time) or is_adult)) or
--                 (can_use(Megaton_Hammer) and (can_play(Song_of_Time) or logic_deku_mq_compass_gs))",
--             "Deku Tree MQ GS Compass Room": "
--                 (can_use(Hookshot) or can_use(Boomerang)) and
--                 here(has_bombchus or (Bombs and (can_play(Song_of_Time) or is_adult)) or
--                     (can_use(Megaton_Hammer) and (can_play(Song_of_Time) or logic_deku_mq_compass_gs)))"
--         }
--     },
--     {
--         "region_name": "Deku Tree Basement Water Room Front",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ Before Spinning Log Chest": "True"
--         },
--         "exits": {
--             "Deku Tree Basement Water Room Back": "
--                 logic_deku_mq_log or (is_child and (Deku_Shield or Hylian_Shield)) or
--                 can_use(Longshot) or (can_use(Hookshot) and can_use(IronBoots))"
--         }
--     },
--     {
--         "region_name": "Deku Tree Basement Water Room Back",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ After Spinning Log Chest": "can_play(Song_of_Time)"
--         },
--         "exits": {
--             "Deku Tree Basement Back Room": "
--                 (here(can_use(Sticks) or can_use(Dins_Fire)) or
--                     at('Deku Tree Basement Water Room Front', can_use(Fire_Arrows))) and
--                 here(is_adult or Kokiri_Sword or can_use_projectile or (Nuts and Sticks))",
--             "Deku Tree Basement Water Room Front": "True"
--         }
--     },
--     {
--         "region_name": "Deku Tree Basement Back Room",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ GS Basement Graves Room": "
--                 can_use(Longshot) or
--                 (can_play(Song_of_Time) and (can_use(Boomerang) or can_use(Hookshot)))",
--             "Deku Tree MQ GS Basement Back Room": "
--                 here(has_fire_source_with_torch) and
--                 (can_use(Hookshot) or can_use(Boomerang))"
--         },
--         "exits": {
--             "Deku Tree Basement Ledge": "is_child",
--             "Deku Tree Basement Water Room Back": "
--                 can_use(Kokiri_Sword) or can_use_projectile or (Nuts and can_use(Sticks))"
--         }
--     },
--     {
--         "region_name": "Deku Tree Basement Ledge",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ Deku Scrub": "can_stun_deku"
--         },
--         "exits": {
--             "Deku Tree Basement Back Room": "is_child",
--             "Deku Tree Before Boss": "deku_tree_shortcuts or here(has_fire_source_with_torch)"
--         }
--     },
--     {
--         "region_name": "Deku Tree Before Boss",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ Basement Recovery Heart 1": "True",
--             "Deku Tree MQ Basement Recovery Heart 2": "True",
--             "Deku Tree MQ Basement Recovery Heart 3": "True"
--         },
--         "exits": {
--             "Deku Tree Boss Door": "deku_tree_shortcuts or here(has_shield)"
--         }
--     }
