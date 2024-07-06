-- Child_Bottom_of_the_Well = OOTLocation.new("Child_Bottom_of_the_Well")
-- Child_Bottom_of_the_Well_Main_Area = OOTLocation.new("Child_Bottom_of_the_Well_Main_Area")
-- Child_Bottom_of_the_Well_Behind_Fake_Walls = OOTLocation.new("Child_Bottom_of_the_Well_Behind_Fake_Walls")
-- Child_Bottom_of_the_Well_Behind_Locked_Doors = OOTLocation.new("Child_Bottom_of_the_Well_Behind_Locked_Doors")

-- Adult_Bottom_of_the_Well = OOTLocation.new("Adult_Bottom_of_the_Well")
-- Adult_Bottom_of_the_Well_Main_Area = OOTLocation.new("Adult_Bottom_of_the_Well_Main_Area")
-- Adult_Bottom_of_the_Well_Behind_Fake_Walls = OOTLocation.new("Adult_Bottom_of_the_Well_Behind_Fake_Walls")
-- Adult_Bottom_of_the_Well_Behind_Locked_Doors = OOTLocation.new("Adult_Bottom_of_the_Well_Behind_Locked_Doors")

-- Child_Bottom_of_the_Well:connect_one_way()
-- Adult_Bottom_of_the_Well:connect_one_way()


Child_Bottom_of_the_Well:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)
Child_Bottom_of_the_Well:connect_one_way_entrance("Child_Bottom_of_the_Well_Perimeter", Child_Bottom_of_the_Well_Perimeter, function() return true end)


Adult_Bottom_of_the_Well:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)
Adult_Bottom_of_the_Well:connect_one_way_entrance("Adult_Bottom_of_the_Well_Perimeter", Adult_Bottom_of_the_Well_Perimeter, function() return false end)


Child_Bottom_of_the_Well_Perimeter:connect_one_way("Child Bottom of the Well MQ Compass Chest", function() 
    return Any(
        Can_use("KokiriSword", "child"),
        All(
            Can_use("DekuStick", "child"),
            Has("logic_child_deadhand")
        )
    ) 
end)
Child_Bottom_of_the_Well_Perimeter:connect_one_way("Child Bottom of the Well MQ Dead Hand Freestanding Key", function() 
    return Any(
        Has_explosives(),
        All(
            Has("logic_botw_mq_dead_hand_key"),
            Can_use("Boomerang", "child")
        )
    ) 
end)
Child_Bottom_of_the_Well_Perimeter:connect_one_way("Child Bottom of the Well MQ Bombable Recovery Heart 1", function() 
    return Has_explosives() 
end)
Child_Bottom_of_the_Well_Perimeter:connect_one_way("Child Bottom of the Well MQ Bombable Recovery Heart 2", function() 
    return Has_explosives() 
end)
Child_Bottom_of_the_Well_Perimeter:connect_one_way("Child Bottom of the Well MQ Basement Recovery Heart 1")
Child_Bottom_of_the_Well_Perimeter:connect_one_way("Child Bottom of the Well MQ Basement Recovery Heart 2")
Child_Bottom_of_the_Well_Perimeter:connect_one_way("Child Bottom of the Well MQ Basement Recovery Heart 3")
Child_Bottom_of_the_Well_Perimeter:connect_one_way("Child Bottom of the Well MQ Coffin Recovery Heart 1", function() 
    return All(
        Has(("SmallKey(BottomoftheWell)"), 2),
        Any(
            Can_use("DekuStick", "child"),
            Can_use("DinsFire", "child")
        )
    ) 
end)
Child_Bottom_of_the_Well_Perimeter:connect_one_way("Child Bottom of the Well MQ Coffin Recovery Heart 2", function() 
    return All(
        Has(("SmallKey(BottomoftheWell)"), 2),
        Any(
            Can_use("DekuStick", "child"),
            Can_use("DinsFire", "child")
        )
    ) 
end)
Child_Bottom_of_the_Well_Perimeter:connect_one_way("Child Bottom of the Well MQ GS Basement", function() 
    return Can_child_attack("child") 
end)
Child_Bottom_of_the_Well_Perimeter:connect_one_way("Child Bottom of the Well MQ GS Coffin Room", function() 
    return All(
        Has("SmallKey(BottomoftheWell)", 2),
        Can_child_attack("child")
    ) 
end)

Adult_Bottom_of_the_Well_Perimeter:connect_one_way("Adult Bottom of the Well MQ Compass Chest", function() 
    return Any(
        Can_use("KokiriSword", "Adult_Bottom_of_the_Well_Middle"),
        All(
            Can_use("DekuStick", "Adult_Bottom_of_the_Well_Middle"),
            Has("logic_child_deadhand")
        )
    ) 
end)
Adult_Bottom_of_the_Well_Perimeter:connect_one_way("Adult Bottom of the Well MQ Dead Hand Freestanding Key", function() 
    return Any(
        Has_explosives(),
        All(
            Has("logic_botw_mq_dead_hand_key"),
            Can_use("Boomerang", "Adult_Bottom_of_the_Well_Middle")
        )
    ) 
end)
Adult_Bottom_of_the_Well_Perimeter:connect_one_way("Adult Bottom of the Well MQ Bombable Recovery Heart 1", function() 
    return Has_explosives() 
end)
Adult_Bottom_of_the_Well_Perimeter:connect_one_way("Adult Bottom of the Well MQ Bombable Recovery Heart 2", function() 
    return Has_explosives() 
end)
Adult_Bottom_of_the_Well_Perimeter:connect_one_way("Adult Bottom of the Well MQ Basement Recovery Heart 1")
Adult_Bottom_of_the_Well_Perimeter:connect_one_way("Adult Bottom of the Well MQ Basement Recovery Heart 2")
Adult_Bottom_of_the_Well_Perimeter:connect_one_way("Adult Bottom of the Well MQ Basement Recovery Heart 3")
Adult_Bottom_of_the_Well_Perimeter:connect_one_way("Adult Bottom of the Well MQ Coffin Recovery Heart 1", function() 
    return All(
        Has(("SmallKey(BottomoftheWell)"), 2),
        Any(
            Can_use("DekuStick", "Adult_Bottom_of_the_Well_Middle"),
            Can_use("DinsFire", "Adult_Bottom_of_the_Well_Middle")
        )
    ) 
end)
Adult_Bottom_of_the_Well_Perimeter:connect_one_way("Adult Bottom of the Well MQ Coffin Recovery Heart 2", function() 
    return All(
        Has(("SmallKey(BottomoftheWell)"), 2),
        Any(
            Can_use("DekuStick", "adult"),
            Can_use("DinsFire", "adult")
        )
    ) 
end)
Adult_Bottom_of_the_Well_Perimeter:connect_one_way("Adult Bottom of the Well MQ GS Basement", function() 
    return Can_child_attack("adult") 
end)
Adult_Bottom_of_the_Well_Perimeter:connect_one_way("Adult Bottom of the Well MQ GS Coffin Room", function() 
    return All(
        Has("SmallKey(BottomoftheWell)", 2),
        Can_child_attack("adult")
    ) 
end)


Child_Bottom_of_the_Well_Perimeter:connect_one_way_entrance("Child Bottom of the Well Middle", function() 
    return Any(
        Can_play("ZeldasLullaby"),
        All(
            Has("logic_botw_mq_pits"),
            Has_explosives()
        )
    ) 
end)
Adult_Bottom_of_the_Well_Perimeter:connect_one_way_entrance("Adult Bottom of the Well Middle", function() 
    return Any(
        Can_play("ZeldasLullaby"),
        All(
            Has("logic_botw_mq_pits"),
            Has_explosives()
        )
    ) 
end)

Child_Bottom_of_the_Well_Middle:connect_one_way("Child Bottom of the Well MQ Map Chest")
Child_Bottom_of_the_Well_Middle:connect_one_way("Child Bottom of the Well MQ East Inner Room Freestanding Key")
Child_Bottom_of_the_Well_Middle:connect_one_way("Child Bottom of the Well MQ Lens of Truth Chest", function() 
    return All(
        Has("SmallKey(BottomoftheWell)", 2),
        Has_explosives()
    ) 
end)
Child_Bottom_of_the_Well_Middle:connect_one_way("Child Bottom of the Well MQ Center Room Right Pot 1")
Child_Bottom_of_the_Well_Middle:connect_one_way("Child Bottom of the Well MQ Center Room Right Pot 2")
Child_Bottom_of_the_Well_Middle:connect_one_way("Child Bottom of the Well MQ Center Room Right Pot 3")
Child_Bottom_of_the_Well_Middle:connect_one_way("Child  of the Well MQ East Inner Room Pot 1")
Child_Bottom_of_the_Well_Middle:connect_one_way("Child Bottom of the Well MQ East Inner Room Pot 2")
Child_Bottom_of_the_Well_Middle:connect_one_way("Child Bottom of the Well MQ East Inner Room Pot 3")
Child_Bottom_of_the_Well_Middle:connect_one_way("Child Bottom of the Well MQ GS West Inner Room", function() 
    return All(
        Can_child_attack("child"),
        Any(
            Has("logic_botw_mq_pits"),
            Has_explosives()
        )
    ) 
end)

Adult_Bottom_of_the_Well_Middle:connect_one_way("Adult Bottom of the Well MQ Map Chest")
Adult_Bottom_of_the_Well_Middle:connect_one_way("Adult Bottom of the Well MQ East Inner Room Freestanding Key")
Adult_Bottom_of_the_Well_Middle:connect_one_way("Adult Bottom of the Well MQ Lens of Truth Chest", function() 
    return All(
        Has("SmallKey(BottomoftheWell)", 2),
        Has_explosives()
    )
end)
Adult_Bottom_of_the_Well_Middle:connect_one_way("Adult Bottom of the Well MQ Center Room Right Pot 1")
Adult_Bottom_of_the_Well_Middle:connect_one_way("Adult Bottom of the Well MQ Center Room Right Pot 2")
Adult_Bottom_of_the_Well_Middle:connect_one_way("Adult Bottom of the Well MQ Center Room Right Pot 3")
Adult_Bottom_of_the_Well_Middle:connect_one_way("Adult  of the Well MQ East Inner Room Pot 1")
Adult_Bottom_of_the_Well_Middle:connect_one_way("Adult Bottom of the Well MQ East Inner Room Pot 2")
Adult_Bottom_of_the_Well_Middle:connect_one_way("Adult Bottom of the Well MQ East Inner Room Pot 3")
Adult_Bottom_of_the_Well_Middle:connect_one_way("Adult Bottom of the Well MQ GS West Inner Room", function() 
    return All(
        Can_child_attack("adult"),
        Any(
            Has("logic_botw_mq_pits"),
            Has_explosives()
        )
    )
end)


-- Child_Bottom_of_the_Well_Middle:connect_one_way_entrance("Child ")
-- Adult_Bottom_of_the_Well_Middle:connect_one_way_entrance("Adult ")


-- Child_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way_entrance()
-- Adult_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way_entrance()



-- --MQ

--     {
--         "region_name": "Bottom of the Well",
--         "dungeon": "Bottom of the Well",
--         "exits": {
--             "Kakariko Village": "True",
--             "Bottom of the Well Perimeter": "is_child"
--         }
--     },
--     {
--         "region_name": "Bottom of the Well Perimeter",
--         "dungeon": "Bottom of the Well",
--         "locations": {
--             "Bottom of the Well MQ Compass Chest": "
--                 Kokiri_Sword or (Sticks and logic_child_deadhand)",
--             "Bottom of the Well MQ Dead Hand Freestanding Key": "
--                 has_explosives or (logic_botw_mq_dead_hand_key and Boomerang)",
--             "Bottom of the Well MQ Bombable Recovery Heart 1": "has_explosives",
--             "Bottom of the Well MQ Bombable Recovery Heart 2": "has_explosives",
--             "Bottom of the Well MQ Basement Recovery Heart 1": "True",
--             "Bottom of the Well MQ Basement Recovery Heart 2": "True",
--             "Bottom of the Well MQ Basement Recovery Heart 3": "True",
--             "Bottom of the Well MQ Coffin Recovery Heart 1": "
--                 (SmallKey(BottomoftheWell), 2) and (Sticks or can_use(Dins_Fire))",
--             "Bottom of the Well MQ Coffin Recovery Heart 2": "
--                 (SmallKey(BottomoftheWell), 2) and (Sticks or can_use(Dins_Fire))",
--             "Bottom of the Well MQ GS Basement": "can_child_attack",
--             "Bottom of the Well MQ GS Coffin Room": "
--                 (SmallKey(BottomoftheWell), 2) and can_child_attack",
--             "Wall Fairy": "has_bottle and Slingshot" # The fairy pot is obsolete
--         },
--         "exits": {
--             "Bottom of the Well Middle": "
--                 can_play(Zeldas_Lullaby) or (logic_botw_mq_pits and has_explosives)"
--         }
--     },
--     {
--         "region_name": "Bottom of the Well Middle",
--         "dungeon": "Bottom of the Well",
--         "locations": {
--             "Bottom of the Well MQ Map Chest": "True",
--             "Bottom of the Well MQ East Inner Room Freestanding Key": "True",
--             "Bottom of the Well MQ Lens of Truth Chest": "
--                 (SmallKey(BottomoftheWell), 2) and has_explosives",
--             "Bottom of the Well MQ Center Room Right Pot 1": "True",
--             "Bottom of the Well MQ Center Room Right Pot 2": "True",
--             "Bottom of the Well MQ Center Room Right Pot 3": "True",
--             "Bottom of the Well MQ East Inner Room Pot 1": "True",
--             "Bottom of the Well MQ East Inner Room Pot 2": "True",
--             "Bottom of the Well MQ East Inner Room Pot 3": "True",
--             "Bottom of the Well MQ GS West Inner Room": "
--                 can_child_attack and (logic_botw_mq_pits or has_explosives)"
--         }
--     }
