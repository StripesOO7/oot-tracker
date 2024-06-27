Child_Bottom_of_the_Well = OOTLocation.new("Child_Bottom_of_the_Well")
Child_Bottom_of_the_Well_Main_Area = OOTLocation.new("Child_Bottom_of_the_Well_Main_Area")
Child_Bottom_of_the_Well_Behind_Fake_Walls = OOTLocation.new("Child_Bottom_of_the_Well_Behind_Fake_Walls")
Child_Bottom_of_the_Well_Behind_Locked_Doors = OOTLocation.new("Child_Bottom_of_the_Well_Behind_Locked_Doors")

Adult_Bottom_of_the_Well = OOTLocation.new("Adult_Bottom_of_the_Well")
Adult_Bottom_of_the_Well_Main_Area = OOTLocation.new("Adult_Bottom_of_the_Well_Main_Area")
Adult_Bottom_of_the_Well_Behind_Fake_Walls = OOTLocation.new("Adult_Bottom_of_the_Well_Behind_Fake_Walls")
Adult_Bottom_of_the_Well_Behind_Locked_Doors = OOTLocation.new("Adult_Bottom_of_the_Well_Behind_Locked_Doors")

-- Child_Bottom_of_the_Well:connect_one_way()
-- Adult_Bottom_of_the_Well:connect_one_way()

Child_Bottom_of_the_Well:connect_one_way_entrance("Child Kakariko Village")
Child_Bottom_of_the_Well:connect_one_way_entrance("Child Bottom of the Well Main Area", function() 
    return All(
        true,
        Any(
            Can_child_attack("child"),
            Nuts()
        )
    ) 
end)

Adult_Bottom_of_the_Well:connect_one_way_entrance("Adult Kakariko Village")
Adult_Bottom_of_the_Well:connect_one_way_entrance("Adult Bottom of the Well Main Area", function() 
    return All(
        false,
        Any(
            Can_child_attack("adult"),
            Nuts()
        )
    ) 
end)


Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Front Center Bombable Chest", function() return Has_explosives() end)
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Freestanding Key", function() 
    return Any(
        Sticks,
        Can_use("DinsFire", "child")
    ) 
end)
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Underwater Left Chest", function() return Can_play("ZeldasLullaby") end)
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Underwater Front Chest", function() return Can_play("ZeldasLullaby") end)
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Map Chest", function() 
    return Any(
        Has_explosives(),
        All(
            Has("ProgressiveStrengthUpgrade"),
            Any(
                CanReach(Child_Bottom_of_the_Well_Behind_Locked_Doors).
                Can_use("DinsFire", "child"),
                All(
                    Has("logic_botw_basement"),
                    Sticks
                )
            )
        )
    ) 
end)
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Invisible Chest", function() 
    return All(
        Can_play("ZeldasLullaby"),
        Any(
            Has("logic_lens_botw"),
            Can_use("LensofTruth", "child")
        )
    ) 
end)
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Lens of Truth Chest", function() 
    return All(
        Can_play("ZeldasLullaby"),
        Any(
            Has("KokiriSword"),
            All(
                Sticks,
                Has("logic_child_deadhand")
            )
        )
    ) 
end)
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Coffin Recovery Heart 1", function() 
    return Any(
        Sticks(),
        Can_use("DinsFire", "child")
    ) 
end)
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Coffin Recovery Heart 2")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Near Entrance Pot 1")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Near Entrance Pot 2")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Underwater Pot", function() 
    return Any(
        Can_play("ZeldasLullaby"),
        Can_use("Slingshot", "child"),
        Can_use("Boomerang", "child"),
        Has_bombchus()
    ) 
end)
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Basement Pot 1")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Basement Pot 2")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Basement Pot 3")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Basement Pot 4")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Basement Pot 5")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Basement Pot 6")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Basement Pot 7")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Basement Pot 8")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Basement Pot 9")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Basement Pot 10")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Basement Pot 11")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Basement Pot 12")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Left Side Pot 1")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Left Side Pot 2")
Child_Bottom_of_the_Well_Main_Area:connect_one_way("Child Bottom of the Well Left Side Pot 3")

Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Front Center Bombable Chest", function() return Has_explosives() end)
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Freestanding Key", function() 
    return Any(
        Sticks,
        Can_use("DinsFire", "adult")
    ) 
end)
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Underwater Left Chest", function() return Can_play("ZeldasLullaby") end)
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Underwater Front Chest", function() return Can_play("ZeldasLullaby") end)
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Map Chest", function() 
    return Any(
        Has_explosives(),
        All(
            Has("ProgressiveStrengthUpgrade"),
            Any(
                CanReach(Adult_Bottom_of_the_Well_Behind_Locked_Doors).
                Can_use("DinsFire", "adult"),
                All(
                    Has("logic_botw_basement"),
                    Sticks
                )
            )
        )
    ) 
end)
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Invisible Chest", function() 
    return All(
        Can_play("ZeldasLullaby"),
        Any(
            Has("logic_lens_botw"),
            Can_use("LensofTruth", "adult")
        )
    ) 
end)
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Lens of Truth Chest", function() 
    return All(
        Can_play("ZeldasLullaby"),
        Any(
            Has("KokiriSword"),
            All(
                Sticks,
                Has("logic_child_deadhand")
            )
        )
    ) 
end)
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Coffin Recovery Heart 1", function() 
    return Any(
        Sticks(),
        Can_use("DinsFire", "adult")
    ) 
end)
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Coffin Recovery Heart 2")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Near Entrance Pot 1")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Near Entrance Pot 2")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Underwater Pot", function() 
    return Any(
        Can_play("ZeldasLullaby"),
        Can_use("Slingshot", "adult"),
        Can_use("Boomerang", "adult"),
        Has_bombchus()
    ) 
end)
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Basement Pot 1")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Basement Pot 2")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Basement Pot 3")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Basement Pot 4")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Basement Pot 5")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Basement Pot 6")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Basement Pot 7")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Basement Pot 8")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Basement Pot 9")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Basement Pot 10")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Basement Pot 11")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Basement Pot 12")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Left Side Pot 1")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Left Side Pot 2")
Adult_Bottom_of_the_Well_Main_Area:connect_one_way("Adult Bottom of the Well Left Side Pot 3")

Child_Bottom_of_the_Well_Main_Area:connect_one_way_entrance("Child Bottom of the Well Behind Fake Walls", function() 
    return Any(
        Has("logic_lens_botw"),
        Can_use("LensofTruth", "child")
    )
end)
Adult_Bottom_of_the_Well_Main_Area:connect_one_way_entrance("Adult Bottom of the Well Behind Fake Walls", function() 
    return Any(
        Has("logic_lens_botw"),
        Can_use("LensofTruth", "adult")
    )
end)

Child_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Child Bottom of the Well Front Left Fake Wall Chest")
Child_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Child Bottom of the Well Right Bottom Fake Wall Chest")
Child_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Child Bottom of the Well Compass Chest")
Child_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Child Bottom of the Well Center Skulltula Chest")
Child_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Child Bottom of the Well Back Left Bombable Chest", function() return Has_explosives() end)
Child_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Child Bottom of the Well Center Room Pit Fall Blue Rupee 1")
Child_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Child Bottom of the Well Center Room Pit Fall Blue Rupee 2")
Child_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Child Bottom of the Well Center Room Pit Fall Blue Rupee 3")
Child_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Child Bottom of the Well Center Room Pit Fall Blue Rupee 4")
Child_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Child Bottom of the Well Center Room Pit Fall Blue Rupee 5")

Adult_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Adult Bottom of the Well Front Left Fake Wall Chest")
Adult_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Adult Bottom of the Well Right Bottom Fake Wall Chest")
Adult_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Adult Bottom of the Well Compass Chest")
Adult_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Adult Bottom of the Well Center Skulltula Chest")
Adult_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Adult Bottom of the Well Back Left Bombable Chest", function() return Has_explosives() end)
Adult_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Adult Bottom of the Well Center Room Pit Fall Blue Rupee 1")
Adult_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Adult Bottom of the Well Center Room Pit Fall Blue Rupee 2")
Adult_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Adult Bottom of the Well Center Room Pit Fall Blue Rupee 3")
Adult_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Adult Bottom of the Well Center Room Pit Fall Blue Rupee 4")
Adult_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way("Adult Bottom of the Well Center Room Pit Fall Blue Rupee 5")


Child_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way_entrance("Child Bottom of the Well Behind Locked Doors", function() return Has("Small_Key_Bottom_of_the_Well", 3) end)
Adult_Bottom_of_the_Well_Behind_Fake_Walls:connect_one_way_entrance("Adult Bottom of the Well Behind Locked Doors", function() return Has("Small_Key_Bottom_of_the_Well", 3) end)

Child_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Child Bottom of the Well Fire Keese Chest")
Child_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Child Bottom of the Well Like Like Chest")
Child_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Child Bottom of the Well West Inner Room Flying Pot 1")
Child_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Child Bottom of the Well West Inner Room Flying Pot 2")
Child_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Child Bottom of the Well West Inner Room Flying Pot 3")
Child_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Child Bottom of the Well Fire Keese Pot")
Child_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Child Bottom of the Well GS West Inner Room", function() return Boomerang() end)
Child_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Child Bottom of the Well GS East Inner Room", function() return Boomerang() end)
Child_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Child Bottom of the Well GS Like Like Cage", function() return Boomerang() end)

Adult_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Adult Bottom of the Well Fire Keese Chest")
Adult_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Adult Bottom of the Well Like Like Chest")
Adult_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Adult Bottom of the Well West Inner Room Flying Pot 1")
Adult_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Adult Bottom of the Well West Inner Room Flying Pot 2")
Adult_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Adult Bottom of the Well West Inner Room Flying Pot 3")
Adult_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Adult Bottom of the Well Fire Keese Pot")
Adult_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Adult Bottom of the Well GS West Inner Room", function() return Boomerang() end)
Adult_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Adult Bottom of the Well GS East Inner Room", function() return Boomerang() end)
Adult_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way("Adult Bottom of the Well GS Like Like Cage", function() return Boomerang() end)


Child_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way_entrance()
Adult_Bottom_of_the_Well_Behind_Locked_Doors:connect_one_way_entrance()




    {
        "region_name": "Bottom of the Well",
        "dungeon": "Bottom of the Well",
        "exits": {
            "Kakariko Village": "True",
            "Bottom of the Well Main Area": "is_child and (can_child_attack or Nuts)"
        }
    },
    {
        "region_name": "Bottom of the Well Main Area",
        "dungeon": "Bottom of the Well",
        "locations": {
            "Bottom of the Well Front Center Bombable Chest": "has_explosives",
            "Bottom of the Well Freestanding Key": "Sticks or can_use(Dins_Fire)",
            "Bottom of the Well Underwater Left Chest": "can_play(Zeldas_Lullaby)",
            "Bottom of the Well Underwater Front Chest": "can_play(Zeldas_Lullaby)",
            "Bottom of the Well Map Chest": "
                has_explosives or
                (Progressive_Strength_Upgrade and
                    (at('Bottom of the Well Behind Locked Doors', True) or
                        can_use(Dins_Fire) or (logic_botw_basement and Sticks)))",
            "Bottom of the Well Invisible Chest": "
                can_play(Zeldas_Lullaby) and (logic_lens_botw or can_use(Lens_of_Truth))",
            # Sword not strictly necessary but being forced to do this with sticks isn't fair
            "Bottom of the Well Lens of Truth Chest": "
                can_play(Zeldas_Lullaby) and (Kokiri_Sword or (Sticks and logic_child_deadhand))",
            "Bottom of the Well Coffin Recovery Heart 1": "Sticks or can_use(Dins_Fire)",
            "Bottom of the Well Coffin Recovery Heart 2": "True",
            "Bottom of the Well Near Entrance Pot 1": "True",
            "Bottom of the Well Near Entrance Pot 2": "True",
            "Bottom of the Well Underwater Pot": "
                can_play(Zeldas_Lullaby) or can_use(Slingshot) or can_use(Boomerang) or has_bombchus",
            "Bottom of the Well Basement Pot 1": "True",
            "Bottom of the Well Basement Pot 2": "True",
            "Bottom of the Well Basement Pot 3": "True",
            "Bottom of the Well Basement Pot 4": "True",
            "Bottom of the Well Basement Pot 5": "True",
            "Bottom of the Well Basement Pot 6": "True",
            "Bottom of the Well Basement Pot 7": "True",
            "Bottom of the Well Basement Pot 8": "True",
            "Bottom of the Well Basement Pot 9": "True",
            "Bottom of the Well Basement Pot 10": "True",
            "Bottom of the Well Basement Pot 11": "True",
            "Bottom of the Well Basement Pot 12": "True",
            "Bottom of the Well Left Side Pot 1": "True",
            "Bottom of the Well Left Side Pot 2": "True",
            "Bottom of the Well Left Side Pot 3": "True",
            "Stick Pot": "True",
            "Nut Pot": "True"
        },
        "exits": {
            "Bottom of the Well Behind Fake Walls": "logic_lens_botw or can_use(Lens_of_Truth)"
        }
    },
    {
        "region_name": "Bottom of the Well Behind Fake Walls",
        "dungeon": "Bottom of the Well",
        "locations": {
            "Bottom of the Well Front Left Fake Wall Chest": "True",
            "Bottom of the Well Right Bottom Fake Wall Chest": "True",
            "Bottom of the Well Compass Chest": "True",
            "Bottom of the Well Center Skulltula Chest": "True",
            "Bottom of the Well Back Left Bombable Chest": "has_explosives",
            "Bottom of the Well Center Room Pit Fall Blue Rupee 1": "True",
            "Bottom of the Well Center Room Pit Fall Blue Rupee 2": "True",
            "Bottom of the Well Center Room Pit Fall Blue Rupee 3": "True",
            "Bottom of the Well Center Room Pit Fall Blue Rupee 4": "True",
            "Bottom of the Well Center Room Pit Fall Blue Rupee 5": "True"
        },
        "exits": {
            "Bottom of the Well Behind Locked Doors": "(Small_Key_Bottom_of_the_Well, 3)"
        }
    },
    {
        "region_name": "Bottom of the Well Behind Locked Doors",
        "dungeon": "Bottom of the Well",
        "locations": {
            # Lens required because these pits are really unfair.
            "Bottom of the Well Fire Keese Chest": "True",
            "Bottom of the Well Like Like Chest": "True",
            "Bottom of the Well West Inner Room Flying Pot 1": "True",
            "Bottom of the Well West Inner Room Flying Pot 2": "True",
            "Bottom of the Well West Inner Room Flying Pot 3": "True",
            "Bottom of the Well Fire Keese Pot": "True",
            "Bottom of the Well GS West Inner Room": "Boomerang",
            "Bottom of the Well GS East Inner Room": "Boomerang",
            "Bottom of the Well GS Like Like Cage": "Boomerang"
        }
    }

--MQ

    {
        "region_name": "Bottom of the Well",
        "dungeon": "Bottom of the Well",
        "exits": {
            "Kakariko Village": "True",
            "Bottom of the Well Perimeter": "is_child"
        }
    },
    {
        "region_name": "Bottom of the Well Perimeter",
        "dungeon": "Bottom of the Well",
        "locations": {
            "Bottom of the Well MQ Compass Chest": "
                Kokiri_Sword or (Sticks and logic_child_deadhand)",
            "Bottom of the Well MQ Dead Hand Freestanding Key": "
                has_explosives or (logic_botw_mq_dead_hand_key and Boomerang)",
            "Bottom of the Well MQ Bombable Recovery Heart 1": "has_explosives",
            "Bottom of the Well MQ Bombable Recovery Heart 2": "has_explosives",
            "Bottom of the Well MQ Basement Recovery Heart 1": "True",
            "Bottom of the Well MQ Basement Recovery Heart 2": "True",
            "Bottom of the Well MQ Basement Recovery Heart 3": "True",
            "Bottom of the Well MQ Coffin Recovery Heart 1": "
                (Small_Key_Bottom_of_the_Well, 2) and (Sticks or can_use(Dins_Fire))",
            "Bottom of the Well MQ Coffin Recovery Heart 2": "
                (Small_Key_Bottom_of_the_Well, 2) and (Sticks or can_use(Dins_Fire))",
            "Bottom of the Well MQ GS Basement": "can_child_attack",
            "Bottom of the Well MQ GS Coffin Room": "
                (Small_Key_Bottom_of_the_Well, 2) and can_child_attack",
            "Wall Fairy": "has_bottle and Slingshot" # The fairy pot is obsolete
        },
        "exits": {
            "Bottom of the Well Middle": "
                can_play(Zeldas_Lullaby) or (logic_botw_mq_pits and has_explosives)"
        }
    },
    {
        "region_name": "Bottom of the Well Middle",
        "dungeon": "Bottom of the Well",
        "locations": {
            "Bottom of the Well MQ Map Chest": "True",
            "Bottom of the Well MQ East Inner Room Freestanding Key": "True",
            "Bottom of the Well MQ Lens of Truth Chest": "
                (Small_Key_Bottom_of_the_Well, 2) and has_explosives",
            "Bottom of the Well MQ Center Room Right Pot 1": "True",
            "Bottom of the Well MQ Center Room Right Pot 2": "True",
            "Bottom of the Well MQ Center Room Right Pot 3": "True",
            "Bottom of the Well MQ East Inner Room Pot 1": "True",
            "Bottom of the Well MQ East Inner Room Pot 2": "True",
            "Bottom of the Well MQ East Inner Room Pot 3": "True",
            "Bottom of the Well MQ GS West Inner Room": "
                can_child_attack and (logic_botw_mq_pits or has_explosives)"
        }
    }
