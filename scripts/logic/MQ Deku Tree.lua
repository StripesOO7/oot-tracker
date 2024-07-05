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


-- MQ

Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree MQ Map Chest")
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree MQ Slingshot Chest", function() 
    return Any(
        false,
        Can_child_attack("child")
    ) 
end)
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree MQ Slingshot Room Back Chest", function() 
    return Any(
        Has_fire_source_with_torch("child"),
        Can_use("Bow", "child")
    ) 
end)
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree MQ Basement Chest", function() 
    return Any(
        Has_fire_source_with_torch("child"),
        Can_use("Bow", "child")
    ) 
end)
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree MQ Lower Lobby Recovery Heart")
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree MQ Slingshot Room Recovery Heart")
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree MQ Lobby Crate", function() return Can_break_crate("child") end)
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree MQ Slingshot Room Crate 1", function() return Can_break_crate("child") end)
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree MQ Slingshot Room Crate 2", function() return Can_break_crate("child") end)
Child_Deku_Tree_Lobby:connect_one_way("Child Deku Tree MQ GS Lobby", function() 
    return Any(
        false,
        Can_use("DekuSticks", "child"),
        Can_use("KokiriSword", "child"),
        Has_explosives(),
        Can_use("DinsFire", "child"),
        All(
            Any(
                Can_use("Slingshot", "child"),
                Can_use("Boomerang", "child")
            ),
            Can_break_crate("child")
        )
    )
end)

Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree MQ Map Chest")
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree MQ Slingshot Chest", function() 
    return Any(
        true,
        Can_child_attack("adult")
    ) 
end)
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree MQ Slingshot Room Back Chest", function() 
    return Any(
        Has_fire_source_with_torch("adult"),
        Can_use("Bow", "adult")
    ) 
end)
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree MQ Basement Chest", function() 
    return Any(
        Has_fire_source_with_torch("adult"),
        Can_use("Bow", "adult")
    ) 
end)
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree MQ Lower Lobby Recovery Heart")
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree MQ Slingshot Room Recovery Heart")
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree MQ Lobby Crate", function() return Can_break_crate("adult") end)
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree MQ Slingshot Room Crate 1", function() return Can_break_crate("adult") end)
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree MQ Slingshot Room Crate 2", function() return Can_break_crate("adult") end)
Adult_Deku_Tree_Lobby:connect_one_way("Adult Deku Tree MQ GS Lobby", function() 
    return Any(
        true,
        Can_use("DekuSticks", "adult"),
        Can_use("KokiriSword", "adult"),
        Has_explosives(),
        Can_use("DinsFire", "adult"),
        All(
            Any(
                Can_use("Slingshot", "adult"),
                Can_use("Boomerang", "adult")
            ),
            Can_break_crate("adult")
        )
    )
end)


Child_Deku_Tree_Lobby:connect_one_way_entrance("Child KF Outside Deku Tree", Child_KF_Outside_Deku_Tree)
Child_Deku_Tree_Lobby:connect_one_way_entrance("Child Deku Tree Near Compass Room", Child_Deku_Tree_Near_Compass_Room, function() 
    return Any(
        Has_fire_source_with_torch("child"),
        Can_use("Bow", "child")
    ) 
end)
Child_Deku_Tree_Lobby:connect_one_way_entrance("Child Deku Tree Basement Water Room Front", Child_Deku_Tree_Basement_Water_Room_Back, function() 
    return All(
        Any(
            Can_use("Slingshot", "child"),
            Can_use("Bow", "child")
        ),
        Has_fire_source_with_torch("child")
    ) 
end)
Child_Deku_Tree_Lobby:connect_one_way_entrance("Child Deku Tree Basement Ledge", Child_Deku_Tree_Basement_Ledge, function() 
    return Any(
        Has("deku_tree_shortcuts"),
        false,
        Has("logic_deku_b1_skip")
        ) 
end)

Adult_Deku_Tree_Lobby:connect_one_way_entrance("Adult KF Outside Deku Tree", Adult_KF_Outside_Deku_Tree)
Adult_Deku_Tree_Lobby:connect_one_way_entrance("Adult Deku Tree Near Compass Room", Adult_Deku_Tree_Near_Compass_Room, function() 
    return Any(
        Has_fire_source_with_torch("adult"),
        Can_use("Bow", "adult")
    ) 
end )
Adult_Deku_Tree_Lobby:connect_one_way_entrance("Adult Deku Tree Basement Water Room Front", Adult_Deku_Tree_Basement_Water_Room_Back, function() 
    return All(
        Any(
            Can_use("Slingshot", "adult"),
            Can_use("Bow", "adult")
        ),
        Has_fire_source_with_torch("adult")
    ) 
end )
Adult_Deku_Tree_Lobby:connect_one_way_entrance("Adult Deku Tree Basement Ledge", Adult_Deku_Tree_Basement_Ledge, function() 
    return Any(
        Has("deku_tree_shortcuts"),
        true,
        Has("logic_deku_b1_skip")
    ) 
end )


Child_Deku_Tree_Near_Compass_Room:connect_one_way("Child Deku Tree MQ Near Compass Room Recovery Heart")
Adult_Deku_Tree_Near_Compass_Room:connect_one_way("Adult Deku Tree MQ Near Compass Room Recovery Heart")

Child_Deku_Tree_Near_Compass_Room:connect_one_way_entrance("Child Deku Tree Compass Room", Child_Deku_Tree_Compass_Room, function() 
    return Any(
        Can_use("Slingshot", "child"),
        Can_use("Bow", "child")
    ) 
end)
Adult_Deku_Tree_Near_Compass_Room:connect_one_way_entrance("Adult Deku Tree Compass Room", Child_Deku_Tree_Compass_Room, function() 
    return Any(
        Can_use("Slingshot", "adult"),
        Can_use("Bow", "adult")
    ) 
end)

Child_Deku_Tree_Compass_Room:connect_one_way("Child Deku Tree MQ Compass Chest")
Child_Deku_Tree_Compass_Room:connect_one_way("Child Deku Tree MQ Compass Room Recovery Heart", function() 
    return Any(
        Has_bombchus(),
        All(
            Bombs(),
            Any(
                Can_play("SongofTime"),
                false
            )
        ),
        All(
            Can_use("MegatonHammer", "child"),
            Any(
                Can_play("SongofTime"),
                Has("logic_deku_mq_compass_gs")
            )
        )
    )
end)
Child_Deku_Tree_Compass_Room:connect_one_way("Child Deku Tree MQ GS Compass Room", function() 
    return All(
        Any(
            Can_use("Hookshot", "child"),
            Can_use("Boomerang", "child")
        ),
        Any(
            Has_bombchus(),
            All(
                Bombs(),
                Any(
                    Can_play("SongofTime"),
                    false
                )
            ),
            All(
                Can_use("MegatonHammer", "child"),
                Any(
                    Can_play("SongofTime"),
                    Has("logic_deku_mq_compass_gs")
                )
            )
        )
    )
end)

Adult_Deku_Tree_Compass_Room:connect_one_way("Adult Deku Tree MQ Compass Chest")
Adult_Deku_Tree_Compass_Room:connect_one_way("Adult Deku Tree MQ Compass Room Recovery Heart", function() 
    return Any(
        Has_bombchus(),
        All(
            Bombs(),
            Any(
                Can_play("SongofTime"),
                true)
            )
             ,
             All(
                Can_use("MegatonHammer", "adult"),
                Any(
                    Can_play("SongofTime"),
                    Has("logic_deku_mq_compass_gs")
                )
            )
        )
end)
Adult_Deku_Tree_Compass_Room:connect_one_way("Adult Deku Tree MQ GS Compass Room", function() 
    return All(
        Any(
            Can_use("Hookshot", "adult"),
            Can_use("Boomerang", "adult")
        ),
        Any(
            Has_bombchus(),
            All(
                Bombs(),
                Any(
                    Can_play("SongofTime"),
                    true)
                )
                 ,
                 All(
                    Can_use("MegatonHammer", "adult"),
                    Any(
                        Can_play("SongofTime"),
                        Has("logic_deku_mq_compass_gs")
                    )
                )
            )
        )
end)


-- Child_Deku_Tree_Compass_Room:connect_one_way_entrance("Child ")
-- Adult_Deku_Tree_Compass_Room:connect_one_way_entrance("Adult ")

Child_Deku_Tree_Basement_Water_Room_Front:connect_one_way("Child Deku Tree MQ Before Spinning Log Chest")
Adult_Deku_Tree_Basement_Water_Room_Front:connect_one_way("Adult Deku Tree MQ Before Spinning Log Chest")

Child_Deku_Tree_Basement_Water_Room_Front:connect_one_way_entrance("Child Deku Tree Basement Water Room Back", Child_Deku_Tree_Basement_Water_Room_Back, function()
    return Any(
        Has("logic_deku_mq_log"),
        All(
            true,
            Any(
                Can_use("DekuShield", "child"),
                Can_use("HylianShield", "child")
            )
        ),
        Can_use("Longshot", "child"),
        All(
            Can_use("Hookshot", "child"),
            Can_use("IronBoots", "child")
        )
    )
end)
Adult_Deku_Tree_Basement_Water_Room_Front:connect_one_way_entrance("Adult Deku Tree Basement Water Room Back", Adult_Deku_Tree_Basement_Water_Room_Back, function()
    return Any(
        Has("logic_deku_mq_log"),
        All(
            false,
            Any(
                Can_use("DekuShield", "adult"),
                Can_use("HylianShield", "adult")
            )
        ),
        Can_use("Longshot", "adult"),
        All(
            Can_use("Hookshot", "adult"),
            Can_use("IronBoots", "adult")
        )
    )
end)

Child_Deku_Tree_Basement_Water_Room_Back:connect_one_way("Child Deku Tree MQ After Spinning Log Chest", function() return Can_play("SongofTime") end)
Adult_Deku_Tree_Basement_Water_Room_Back:connect_one_way("Adult Deku Tree MQ After Spinning Log Chest", function() return Can_play("SongofTime") end)

Child_Deku_Tree_Basement_Water_Room_Back:connect_one_way_entrance("Child Deku Tree Basement Back Room", Child_Deku_Tree_Basement_Back_Room)
Adult_Deku_Tree_Basement_Water_Room_Back:connect_one_way_entrance("Adult Deku Tree Basement Back Room", Adult_Deku_Tree_Basement_Back_Room)

Child_Deku_Tree_Basement_Back_Room:connect_one_way("Child Deku Tree MQ GS Basement Graves Room", function() 
    return Any(
        Can_use("Longshot", "child"),
        All(
            Can_play("SongofTime"),
            Any(
                Can_use("Boomerang", "child"),
                Can_use("Hookshot", "child")
            )
        )
    )
end)
Child_Deku_Tree_Basement_Back_Room:connect_one_way("Child Deku Tree MQ GS Basement Back Room", function() 
    return All(
        Has_fire_source_with_torch("child"),
        Any(
            Can_use("Hookshot", "child"),
            Can_use("Boomerang", "child")
        )
    )
end)

Adult_Deku_Tree_Basement_Back_Room:connect_one_way("Adult Deku Tree MQ GS Basement Graves Room", function() 
    return Any(
        Can_use("Longshot", "adult"),
        All(
            Can_play("SongofTime"),
            Any(
                Can_use("Boomerang", "adult"),
                Can_use("Hookshot", "adult")
            )
        )
    )
end)
Adult_Deku_Tree_Basement_Back_Room:connect_one_way("Adult Deku Tree MQ GS Basement Back Room", function() 
    return All(
        Has_fire_source_with_torch("adult"),
        Any(
            Can_use("Hookshot", "adult"),
            Can_use("Boomerang", "adult")
        )
    )
end)


Child_Deku_Tree_Basement_Back_Room:connect_one_way_entrance("Child Deku Tree Basement Ledge", Child_Deku_Tree_Basement_Ledge, function() return true end)
Child_Deku_Tree_Basement_Back_Room:connect_one_way_entrance("Child Deku Tree Basement Water Room Back", Child_Deku_Tree_Basement_Water_Room_Back, function() 
    return Any(
        Can_use("KokiriSword", "true"),
        Can_use_projectile("true"),
        All(
            Nuts(),
            Can_use("DekuSticks", "true")
        )
    )
end)

Adult_Deku_Tree_Basement_Back_Room:connect_one_way_entrance("Adult Deku Tree Basement Ledge", Adult_Deku_Tree_Basement_Ledge, function() return false end)
Adult_Deku_Tree_Basement_Back_Room:connect_one_way_entrance("Adult Deku Tree Basement Water Room Back", Adult_Deku_Tree_Basement_Water_Room_Back, function() 
    return Any(
        Can_use("KokiriSword", "adult"),
        Can_use_projectile("adult"),
        All(
            Nuts(),
            Can_use("DekuSticks", "adult")
        )
    )
end)

Child_Deku_Tree_Basement_Ledge:connect_one_way("Child Deku Tree MQ Deku Scrub", function() return Can_stun_deku() end)
Adult_Deku_Tree_Basement_Ledge:connect_one_way("Adult Deku Tree MQ Deku Scrub", function() return Can_stun_deku() end)

Child_Deku_Tree_Basement_Ledge:connect_one_way_entrance("Child Deku Tree Basement Back Room", function() return true end)
Child_Deku_Tree_Basement_Ledge:connect_one_way_entrance("Child Deku Tree Before Boss", function() 
    return Any(
        Has("deku_tree_shortcuts"),
        (Has_fire_source_with_torch("child")
    )
) 
end)

Adult_Deku_Tree_Basement_Ledge:connect_one_way_entrance("Adult Deku Tree Basement Back Room", function() return false end)
Adult_Deku_Tree_Basement_Ledge:connect_one_way_entrance("Adult Deku Tree Before Boss", function() 
    return Any(
        Has("deku_tree_shortcuts"),
        (Has_fire_source_with_torch("adult")
    )
) 
end)


Child_Deku_Tree_Before_Boss:connect_one_way("Child Deku Tree MQ Basement Recovery Heart 1")
Child_Deku_Tree_Before_Boss:connect_one_way("Child Deku Tree MQ Basement Recovery Heart 2")
Child_Deku_Tree_Before_Boss:connect_one_way("Child Deku Tree MQ Basement Recovery Heart 3")

Adult_Deku_Tree_Before_Boss:connect_one_way("Adult Deku Tree MQ Basement Recovery Heart 1")
Adult_Deku_Tree_Before_Boss:connect_one_way("Adult Deku Tree MQ Basement Recovery Heart 2")
Adult_Deku_Tree_Before_Boss:connect_one_way("Adult Deku Tree MQ Basement Recovery Heart 3")


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





-- -- MQ


--     {
--         "region_name": "Deku Tree Lobby",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ Map Chest": "True",
--             "Deku Tree MQ Slingshot Chest": "is_adult or Can_child_attack("")",
--             "Deku Tree MQ Slingshot Room Back Chest": "Has_fire_source_with_torch("") or Can_use("Bow", "")",
--             "Deku Tree MQ Basement Chest": "Has_fire_source_with_torch("") or Can_use("Bow", "")",
--             "Deku Tree MQ Lower Lobby Recovery Heart": "True",
--             "Deku Tree MQ Slingshot Room Recovery Heart": "True",
--             "Deku Tree MQ Lobby Crate": "Can_break_crate("")",
--             "Deku Tree MQ Slingshot Room Crate 1": "Can_break_crate("")",
--             "Deku Tree MQ Slingshot Room Crate 2": "Can_break_crate("")",
--             "Deku Tree MQ GS Lobby": "
--                 is_adult or Can_use("DekuSticks", "") or Kokiri_Sword or Has_explosives() or Can_use("Dins_Fire", "") or
--                 ((Slingshot or Boomerang) and Can_break_crate(""))",
--             "Deku Baba Can_use("DekuSticks", "")": "is_adult or Kokiri_Sword or Boomerang",
--             "Deku Baba Nuts": "
--                 is_adult or Slingshot or Can_use("DekuSticks", "") or
--                 Has_explosives() or Kokiri_Sword or Can_use("Dins_Fire", "")"
--         },
--         "exits": {
--             "KF Outside Deku Tree": "True",
--             "Deku Tree Near Compass Room": "(Has_fire_source_with_torch("") or Can_use("Bow", ""))",
--             "Deku Tree Basement Water Room Front": "
--                 (Can_use("Slingshot", "") or Can_use("Bow", "")) and (Has_fire_source_with_torch(""))",
--             "Deku Tree Basement Ledge": "Has("deku_tree_shortcuts") or (is_adult) or Has("logic_deku_b1_skip")"
--         }
--     },
--     {
--         "region_name": "Deku Tree Near Compass Room",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ Near Compass Room Recovery Heart": "True"
--         },
--         "exits": {
--             "Deku Tree Compass Room": "(Can_use("Slingshot", "") or Can_use("Bow", ""))"
--         }
--     },
--     {
--         "region_name": "Deku Tree Compass Room",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ Compass Chest": "True",
--             "Deku Tree MQ Compass Room Recovery Heart": "
--                 Has_bombchus() or (Bombs() and (Can_play("SongofTime") or is_adult)) or
--                 (Can_use("MegatonHammer", "") and (Can_play("SongofTime") or Has("logic_deku_mq_compass_gs")))",
--             "Deku Tree MQ GS Compass Room": "
--                 (Can_use("Hookshot", "") or Can_use("Boomerang", "")) and
--                 (Has_bombchus() or (Bombs() and (Can_play("SongofTime") or is_adult)) or
--                     (Can_use("MegatonHammer", "") and (Can_play("SongofTime") or Has("logic_deku_mq_compass_gs"))))"
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
--                 Has("logic_deku_mq_log") or (is_child and (Can_use("Deku_Shield", "") or Can_use("Hylian_Shield", ""))) or
--                 Can_use("Longshot", "") or (Can_use("Hookshot", "") and Can_use("IronBoots", ""))"
--         }
--     },
--     {
--         "region_name": "Deku Tree Basement Water Room Back",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ After Spinning Log Chest": "Can_play("SongofTime")"
--         },
--         "exits": {
--             "Deku Tree Basement Back Room", Child_Deku_Tree_Basement_Back_Room: "
--                 ((Can_use("Can_use("DekuSticks", "")", "") or Can_use("Dins_Fire", "")) or
--                     at('Deku Tree Basement Water Room Front', Can_use("Fire_Arrows", ""))) and
--                 (is_adult or Kokiri_Sword or Can_use_projectile("") or (Nuts and Can_use("DekuSticks", "")))",
--             "Deku Tree Basement Water Room Front": "True"
--         }
--     },
--     {
--         "region_name": "Deku Tree Basement Back Room",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ GS Basement Graves Room": "
--                 Can_use("Longshot", "") or
--                 (Can_play("SongofTime") and (Can_use("Boomerang", "") or Can_use("Hookshot", "")))",
--             "Deku Tree MQ GS Basement Back Room": "
--                 (Has_fire_source_with_torch("")) and
--                 (Can_use("Hookshot", "") or Can_use("Boomerang", ""))"
--         },
--         "exits": {
--             "Deku Tree Basement Ledge": "is_child",
--             "Deku Tree Basement Water Room Back": "
--                 Can_use("Kokiri_Sword", "") or Can_use_projectile("") or (Nuts and Can_use("Can_use("DekuSticks", "")", ""))"
--         }
--     },
--     {
--         "region_name": "Deku Tree Basement Ledge",
--         "dungeon": "Deku Tree",
--         "locations": {
--             "Deku Tree MQ Deku Scrub": "Can_stun_deku()"
--         },
--         "exits": {
--             "Deku Tree Basement Back Room": "is_child",
--             "Deku Tree Before Boss": "Has("deku_tree_shortcuts") or (Has_fire_source_with_torch(""))"
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
--             "Deku Tree Boss Door": "Has("deku_tree_shortcuts") or (Can_use("Has_shield")(""))"
, ""--         }
--     }
