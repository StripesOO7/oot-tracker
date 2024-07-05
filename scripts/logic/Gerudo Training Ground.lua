-- Child_Gerudo_Training_Ground_Lobby = OOTLocation.new("Child_Gerudo_Training_Ground_Lobby")
-- Child_Gerudo_Training_Ground_Lava_Room = OOTLocation.new("Child_Gerudo_Training_Ground_Lava_Room")
-- Child_Gerudo_Training_Ground_Central_Maze_Right = OOTLocation.new("Child_Gerudo_Training_Ground_Central_Maze_Right")
-- Child_Gerudo_Training_Ground_Heavy_Block_Room = OOTLocation.new("Child_Gerudo_Training_Ground_Heavy_Block_Room")
-- Child_Gerudo_Training_Ground_Eye_Statue_Upper = OOTLocation.new("Child_Gerudo_Training_Ground_Eye_Statue_Upper")
-- Child_Gerudo_Training_Ground_Like_Like_Room = OOTLocation.new("Child_Gerudo_Training_Ground_Like_Like_Room")
-- Child_Gerudo_Training_Ground_Eye_Statue_Lower = OOTLocation.new("Child_Gerudo_Training_Ground_Eye_Statue_Lower")
-- Child_Gerudo_Training_Ground_Hammer_Room = OOTLocation.new("Child_Gerudo_Training_Ground_Hammer_Room")

-- Adult_Gerudo_Training_Ground_Lobby = OOTLocation.new("Adult_Gerudo_Training_Ground_Lobby")
-- Adult_Gerudo_Training_Ground_Lava_Room = OOTLocation.new("Adult_Gerudo_Training_Ground_Lava_Room")
-- Adult_Gerudo_Training_Ground_Central_Maze_Right = OOTLocation.new("Adult_Gerudo_Training_Ground_Central_Maze_Right")
-- Adult_Gerudo_Training_Ground_Heavy_Block_Room = OOTLocation.new("Adult_Gerudo_Training_Ground_Heavy_Block_Room")
-- Adult_Gerudo_Training_Ground_Eye_Statue_Upper = OOTLocation.new("Adult_Gerudo_Training_Ground_Eye_Statue_Upper")
-- Adult_Gerudo_Training_Ground_Like_Like_Room = OOTLocation.new("Adult_Gerudo_Training_Ground_Like_Like_Room")
-- Adult_Gerudo_Training_Ground_Eye_Statue_Lower = OOTLocation.new("Adult_Gerudo_Training_Ground_Eye_Statue_Lower")
-- Adult_Gerudo_Training_Ground_Hammer_Room = OOTLocation.new("Adult_Gerudo_Training_Ground_Hammer_Room")

Child_Gerudo_Training_Ground_Lobby:connect_one_way("Child Gerudo Training Ground Lobby Left Chest", function() 
    return Any(
        Can_use("Bow", "child"),
        Can_use("Slingshot", "child")
    ) 
end)
Child_Gerudo_Training_Ground_Lobby:connect_one_way("Child Gerudo Training Ground Lobby Right Chest", function() 
    return Any(
        Can_use("Bow", "child"), 
        Can_use("Slingshot", "child")
    ) 
end)
Child_Gerudo_Training_Ground_Lobby:connect_one_way("Child Gerudo Training Ground Stalfos Chest", function() 
    return Any(
        false,
        Can_use("KokiriSword", "child")
    ) 
end)
Child_Gerudo_Training_Ground_Lobby:connect_one_way("Child Gerudo Training Ground Beamos Chest", function() 
    return All(
        Has_explosives() ,
        Any(
            false,
            Can_use("KokiriSword", "child")
        )
    ) 
end)
Child_Gerudo_Training_Ground_Lobby:connect_one_way("Child Gerudo Training Ground Hidden Ceiling Chest", function() 
    return All(
        Has("SmallKey(GerudoTrainingGround)", 3),
        Any(
            Has("logic_lens_gtg"),
            Can_use("LensofTruth", "child")
        )
    ) 
end)
Child_Gerudo_Training_Ground_Lobby:connect_one_way("Child Gerudo Training Ground Maze Path First Chest", function() return Has("SmallKey(GerudoTrainingGround)", 4) end)
Child_Gerudo_Training_Ground_Lobby:connect_one_way("Child Gerudo Training Ground Maze Path Second Chest", function() return Has("SmallKey(GerudoTrainingGround)", 6)  end)
Child_Gerudo_Training_Ground_Lobby:connect_one_way("Child Gerudo Training Ground Maze Path Third Chest", function() return Has("SmallKey(GerudoTrainingGround)", 7) end)
Child_Gerudo_Training_Ground_Lobby:connect_one_way("Child Gerudo Training Ground Maze Path Final Chest", function() return Has("SmallKey(GerudoTrainingGround)", 9) end)
Child_Gerudo_Training_Ground_Lobby:connect_one_way("Child Gerudo Training Ground Beamos Recovery Heart 1")
Child_Gerudo_Training_Ground_Lobby:connect_one_way("Child Gerudo Training Ground Beamos Recovery Heart 2")

Adult_Gerudo_Training_Ground_Lobby:connect_one_way("Adult Gerudo Training Ground Lobby Left Chest", function() 
    return Any(
        Can_use("Bow", "adult"),
        Can_use("Slingshot", "adult")
    ) 
end)
Adult_Gerudo_Training_Ground_Lobby:connect_one_way("Adult Gerudo Training Ground Lobby Right Chest", function() 
    return Any(
        Can_use("Bow", "adult"), 
        Can_use("Slingshot", "adult")
    ) 
end)
Adult_Gerudo_Training_Ground_Lobby:connect_one_way("Adult Gerudo Training Ground Stalfos Chest", function() 
    return Any(
        true,
        Can_use("KokiriSword", "adult")
    ) 
end)
Adult_Gerudo_Training_Ground_Lobby:connect_one_way("Adult Gerudo Training Ground Beamos Chest", function() 
    return All(
        Has_explosives() ,
        Any(
            true,
            Can_use("KokiriSword", "adult")
        )
    ) 
end)
Adult_Gerudo_Training_Ground_Lobby:connect_one_way("Adult Gerudo Training Ground Hidden Ceiling Chest", function() 
    return All(
        Has("SmallKey(GerudoTrainingGround)", 3),
        Any(
            Has("logic_lens_gtg"),
            Can_use("LensofTruth", "adult")
        )
    ) 
end)
Adult_Gerudo_Training_Ground_Lobby:connect_one_way("Adult Gerudo Training Ground Maze Path First Chest", function() return Has("SmallKey(GerudoTrainingGround)", 4) end)
Adult_Gerudo_Training_Ground_Lobby:connect_one_way("Adult Gerudo Training Ground Maze Path Second Chest", function() return Has("SmallKey(GerudoTrainingGround)", 6) end)
Adult_Gerudo_Training_Ground_Lobby:connect_one_way("Adult Gerudo Training Ground Maze Path Third Chest", function() return Has("SmallKey(GerudoTrainingGround)", 7) end)
Adult_Gerudo_Training_Ground_Lobby:connect_one_way("Adult Gerudo Training Ground Maze Path Final Chest", function() return Has("SmallKey(GerudoTrainingGround)", 9) end)
Adult_Gerudo_Training_Ground_Lobby:connect_one_way("Adult Gerudo Training Ground Beamos Recovery Heart 1")
Adult_Gerudo_Training_Ground_Lobby:connect_one_way("Adult Gerudo Training Ground Beamos Recovery Heart 2")


Child_Gerudo_Training_Ground_Lobby:connect_one_way_entrance("Child Gerudo Fortress", Child_Gerudo_Fortress)
Child_Gerudo_Training_Ground_Lobby:connect_one_way_entrance("Child Gerudo Training Ground Lava Room", Child_Gerudo_Training_Ground_Lava_Room, function() 
    return All(
        Has_explosives(),
        Any(
            false,
            Can_use("KokiriSword", "child")
        )
    ) 
end)
Child_Gerudo_Training_Ground_Lobby:connect_one_way_entrance("Child Gerudo Training Ground Central Maze Right", Child_Gerudo_Training_Ground_Central_Maze_Right, function() return Has("SmallKey(GerudoTrainingGround)", 9) end)
Child_Gerudo_Training_Ground_Lobby:connect_one_way_entrance("Child Gerudo Training Ground Heavy Block Room", Child_Gerudo_Training_Ground_Heavy_Block_Room, function() 
    return All(
        Any(
            false,
            Can_use("KokiriSword", "child")
        ),
        Any(
            Can_use("Hookshot", "child"),
            Has("logic_gtg_without_hookshot")
        )
    ) 
end)

Adult_Gerudo_Training_Ground_Lobby:connect_one_way_entrance("Adult Gerudo Fortress", Adult_Gerudo_Fortress)
Adult_Gerudo_Training_Ground_Lobby:connect_one_way_entrance("Adult Gerudo Training Ground Lava Room", Adult_Gerudo_Training_Ground_Lava_Room, function() 
    return All(
        Has_explosives(),
        Any(
            true,
            Can_use("KokiriSword", "adult")
        )
    ) 
end)
Adult_Gerudo_Training_Ground_Lobby:connect_one_way_entrance("Adult Gerudo Training Ground Central Maze Right", Adult_Gerudo_Training_Ground_Central_Maze_Right, function() return Has("SmallKey(GerudoTrainingGround)", 9) end)
Adult_Gerudo_Training_Ground_Lobby:connect_one_way_entrance("Adult Gerudo Training Ground Heavy Block Room", Adult_Gerudo_Training_Ground_Heavy_Block_Room, function() 
    return All(
        Any(
            true,
            Can_use("KokiriSword", "adult")
        ),
        Any(
            Can_use("Hookshot", "adult"),
            Has("logic_gtg_without_hookshot")
        )
    ) 
end)


Child_Gerudo_Training_Ground_Lava_Room:connect_one_way("Child Gerudo Training Ground Underwater Silver Rupee Chest", function() 
    return All(
        false,
        Can_use("Hookshot", "child"),
        Can_use("Hookshot", "child"),
        Can_play("SongofTime"),
        Can_use("IronBoots", "child"),
        Can_use("IronBoots", "child"),
        Any(
            Has("logic_fewer_tunic_requirements"),
            Can_use("ZoraTunic", "child")
        )
    )
end)
Adult_Gerudo_Training_Ground_Lava_Room:connect_one_way("Adult Gerudo Training Ground Underwater Silver Rupee Chest", function() 
    return All(
        true,
        Can_use("Hookshot", "adult"),
        Can_use("Hookshot", "adult"),
        Can_play("SongofTime"),
        Can_use("IronBoots", "adult"),
        Can_use("IronBoots", "adult"),
        Any(
            Has("logic_fewer_tunic_requirements"),
            Can_use("ZoraTunic", "adult")
        )
    )
end)

Child_Gerudo_Training_Ground_Lava_Room:connect_one_way_entrance("Child Gerudo Training Ground Central Maze Right", Child_Gerudo_Training_Ground_Central_Maze_Right, function() 
    return Any(
        Can_play("SongofTime"),
        true
    )
end)
Child_Gerudo_Training_Ground_Lava_Room:connect_one_way_entrance("Child Gerudo Training Ground Hammer Room", Child_Gerudo_Training_Ground_Hammer_Room, function() 
    return All(
        false,
        Any(
            Can_use("Longshot", "child"),
            Can_use("Longshot", "child"),
            All(
                Can_use("Hookshot", "child"),
                Can_use("HoverBoots", "child")
            )
        )
    ) 
end)

Adult_Gerudo_Training_Ground_Lava_Room:connect_one_way_entrance("Adult Gerudo Training Ground Central Maze Right", Adult_Gerudo_Training_Ground_Central_Maze_Right, function() 
    return Any(
        Can_play("SongofTime"),
        false
    )
end)
Adult_Gerudo_Training_Ground_Lava_Room:connect_one_way_entrance("Adult Gerudo Training Ground Hammer Room", Adult_Gerudo_Training_Ground_Hammer_Room, function() 
    return All(
        true,
        Any(
            Can_use("Longshot", "adult"),
            Can_use("Longshot", "adult"),
            All(
                Can_use("Hookshot", "adult"),
                Can_use("HoverBoots", "adult")
            )
        )
    ) 
end)


Child_Gerudo_Training_Ground_Central_Maze_Right:connect_one_way("Child Gerudo Training Ground Maze Right Central Chest")
Child_Gerudo_Training_Ground_Central_Maze_Right:connect_one_way("Child Gerudo Training Ground Maze Right Side Chest")
Child_Gerudo_Training_Ground_Central_Maze_Right:connect_one_way("Child Gerudo Training Ground Freestanding Key")

Adult_Gerudo_Training_Ground_Central_Maze_Right:connect_one_way("Adult Gerudo Training Ground Maze Right Central Chest")
Adult_Gerudo_Training_Ground_Central_Maze_Right:connect_one_way("Adult Gerudo Training Ground Maze Right Side Chest")
Adult_Gerudo_Training_Ground_Central_Maze_Right:connect_one_way("Adult Gerudo Training Ground Freestanding Key")


Child_Gerudo_Training_Ground_Central_Maze_Right:connect_one_way_entrance("Child Gerudo Training Ground Lava Room", Child_Gerudo_Training_Ground_Lava_Room)
Child_Gerudo_Training_Ground_Central_Maze_Right:connect_one_way_entrance("Child Gerudo Training Ground Hammer Room", Child_Gerudo_Training_Ground_Hammer_Room, function() return Can_use("Hookshot", "child") end)

Adult_Gerudo_Training_Ground_Central_Maze_Right:connect_one_way_entrance("Adult Gerudo Training Ground Lava Room", Adult_Gerudo_Training_Ground_Lava_Room)
Adult_Gerudo_Training_Ground_Central_Maze_Right:connect_one_way_entrance("Adult Gerudo Training Ground Hammer Room", Adult_Gerudo_Training_Ground_Hammer_Room, function() return Can_use("Hookshot", "adult") end)


Child_Gerudo_Training_Ground_Heavy_Block_Room:connect_one_way("Child Gerudo Training Ground Before Heavy Block Chest")
Adult_Gerudo_Training_Ground_Heavy_Block_Room:connect_one_way("Adult Gerudo Training Ground Before Heavy Block Chest")

Child_Gerudo_Training_Ground_Heavy_Block_Room:connect_one_way_entrance("Child Gerudo Training Ground Eye Statue Upper", Child_Gerudo_Training_Ground_Eye_Statue_Upper, function() 
    return All(
        false,
        Any(
            Has("logic_lens_gtg"),
            Can_use("LensofTruth", "child")
        ),
        Any(
            Can_use("Hookshot", "child"),
            Can_use("Hookshot", "child"),
            All(
                Has("logic_gtg_fake_wall"),
                Can_use("HoverBoots", "child")
            )
        )
    )
end)
Adult_Gerudo_Training_Ground_Heavy_Block_Room:connect_one_way_entrance("Adult Gerudo Training Ground Eye Statue Upper", Adult_Gerudo_Training_Ground_Eye_Statue_Upper, function() 
    return All(
        true,
        Any(
            Has("logic_lens_gtg"),
            Can_use("LensofTruth", "adult")
        ),
        Any(
            Can_use("Hookshot", "adult"),
            Can_use("Hookshot", "adult"),
            All(
                Has("logic_gtg_fake_wall"),
                Can_use("HoverBoots", "adult")
            )
        )
    )
end)

Child_Gerudo_Training_Ground_Eye_Statue_Upper:connect_one_way("Child Gerudo Training Ground Near Scarecrow Chest", function() return Can_use("Bow", "child") end)
Adult_Gerudo_Training_Ground_Eye_Statue_Upper:connect_one_way("Adult Gerudo Training Ground Near Scarecrow Chest", function() return Can_use("Bow", "adult") end)

Child_Gerudo_Training_Ground_Eye_Statue_Upper:connect_one_way_entrance("Child Gerudo Training Ground Like Like Room", Child_Gerudo_Training_Ground_Like_Like_Room, function() return Can_use("SilverGauntlets", "child") end)
Child_Gerudo_Training_Ground_Eye_Statue_Upper:connect_one_way_entrance("Child Gerudo Training Ground Eye Statue Lower", Child_Gerudo_Training_Ground_Eye_Statue_Lower)

Adult_Gerudo_Training_Ground_Eye_Statue_Upper:connect_one_way_entrance("Adult Gerudo Training Ground Like Like Room", Adult_Gerudo_Training_Ground_Like_Like_Room, function() return Can_use("SilverGauntlets", "adult") end)
Adult_Gerudo_Training_Ground_Eye_Statue_Upper:connect_one_way_entrance("Adult Gerudo Training Ground Eye Statue Lower", Adult_Gerudo_Training_Ground_Eye_Statue_Lower)


Child_Gerudo_Training_Ground_Like_Like_Room:connect_one_way("Child Gerudo Training Ground Heavy Block First Chest")
Child_Gerudo_Training_Ground_Like_Like_Room:connect_one_way("Child Gerudo Training Ground Heavy Block Second Chest")
Child_Gerudo_Training_Ground_Like_Like_Room:connect_one_way("Child Gerudo Training Ground Heavy Block Third Chest")
Child_Gerudo_Training_Ground_Like_Like_Room:connect_one_way("Child Gerudo Training Ground Heavy Block Fourth Chest")

Adult_Gerudo_Training_Ground_Like_Like_Room:connect_one_way("Adult Gerudo Training Ground Heavy Block First Chest")
Adult_Gerudo_Training_Ground_Like_Like_Room:connect_one_way("Adult Gerudo Training Ground Heavy Block Second Chest")
Adult_Gerudo_Training_Ground_Like_Like_Room:connect_one_way("Adult Gerudo Training Ground Heavy Block Third Chest")
Adult_Gerudo_Training_Ground_Like_Like_Room:connect_one_way("Adult Gerudo Training Ground Heavy Block Fourth Chest")


-- Child_Gerudo_Training_Ground_Like_Like_Room:connect_one_way_entrance()
-- Adult_Gerudo_Training_Ground_Like_Like_Room:connect_one_way_entrance()

Child_Gerudo_Training_Ground_Eye_Statue_Lower:connect_one_way("Child Gerudo Training Ground Eye Statue Chest", function() return Can_use("Bow", "child") end)
Adult_Gerudo_Training_Ground_Eye_Statue_Lower:connect_one_way("Adult Gerudo Training Ground Eye Statue Chest", function() return Can_use("Bow", "adult") end)

Child_Gerudo_Training_Ground_Eye_Statue_Lower:connect_one_way_entrance("Child Gerudo Training Ground Hammer Room", Child_Gerudo_Training_Ground_Hammer_Room)
Adult_Gerudo_Training_Ground_Eye_Statue_Lower:connect_one_way_entrance("Adult Gerudo Training Ground Hammer Room", Adult_Gerudo_Training_Ground_Hammer_Room)

Child_Gerudo_Training_Ground_Hammer_Room:connect_one_way("Child Gerudo Training Ground Hammer Room Clear Chest")
Child_Gerudo_Training_Ground_Hammer_Room:connect_one_way("Child Gerudo Training Ground Hammer Room Switch Chest", function() return Can_use("MegatonHammer", "child") end)

Adult_Gerudo_Training_Ground_Hammer_Room:connect_one_way("Adult Gerudo Training Ground Hammer Room Clear Chest")
Adult_Gerudo_Training_Ground_Hammer_Room:connect_one_way("Adult Gerudo Training Ground Hammer Room Switch Chest", function() return Can_use("MegatonHammer", "adult") end)


Child_Gerudo_Training_Ground_Hammer_Room:connect_one_way_entrance("Child Gerudo Training Ground Lava Room", Child_Gerudo_Training_Ground_Lava_Room)
Child_Gerudo_Training_Ground_Hammer_Room:connect_one_way_entrance("Child Gerudo Training Ground Eye Statue Lower", Child_Gerudo_Training_Ground_Eye_Statue_Lower, function() 
    return All(
        Can_use("MegatonHammer", "child"),
        Can_use("Bow", "child")
    ) 
end)

Adult_Gerudo_Training_Ground_Hammer_Room:connect_one_way_entrance("Adult Gerudo Training Ground Lava Room", Adult_Gerudo_Training_Ground_Lava_Room)
Adult_Gerudo_Training_Ground_Hammer_Room:connect_one_way_entrance("Adult Gerudo Training Ground Eye Statue Lower", Adult_Gerudo_Training_Ground_Eye_Statue_Lower, function() 
    return All(
        Can_use("MegatonHammer", "adult"),
        Can_use("Bow", "adult")
    ) 
end)

Child_Gerudo_Training_Ground_Lava_Room:connect_one_way("Child Gerudo Training Ground Underwater Silver Rupee Chest")
Adult_Gerudo_Training_Ground_Lava_Room:connect_one_way("ADult Gerudo Training Ground Underwater Silver Rupee Chest")

Child_Gerudo_Training_Ground_Lava_Room:connect_one_way_entrance("child Gerudo Training Ground Central Maze Right", Child_Gerudo_Training_Ground_Central_Maze_Right, function() 
    return Any(
        Can_play("SongofTime"),
        true
    ) 
end)
Child_Gerudo_Training_Ground_Lava_Room:connect_one_way_entrance("child Gerudo Training Ground Hammer Room", Child_Gerudo_Training_Ground_Hammer_Room, function() 
    return All(
        false,
        Any(
            Can_use("Longshot", "child"),
            All(
                Can_use("Hookshot", "child"),
                Can_use("HoverBoots", "child")
            )
        )
    ) 
end )

Adult_Gerudo_Training_Ground_Lava_Room:connect_one_way_entrance("Adult Gerudo Training Ground Central Maze Right", Child_Gerudo_Training_Ground_Central_Maze_Right, function() 
    return Any(
        Can_play("SongofTime"),
        false
    ) 
end )
Adult_Gerudo_Training_Ground_Lava_Room:connect_one_way_entrance("Adult Gerudo Training Ground Hammer Room", Child_Gerudo_Training_Ground_Hammer_Room, function() 
    return All(
        true,
        Any(
            Can_use("Longshot", "adult"),
            All(
                Can_use("Hookshot", "adult"),
                Can_use("HoverBoots", "adult")
            )
        )
    ) 
end )


--     {
--         "region_name": "Gerudo Training Ground Lobby",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             "Gerudo Training Ground Lobby Left Chest": "can_use(Bow) or can_use(Slingshot)",
--             "Gerudo Training Ground Lobby Right Chest": "can_use(Bow) or can_use(Slingshot)",
--             "Gerudo Training Ground Stalfos Chest": "is_adult or Kokiri_Sword",
--             "Gerudo Training Ground Beamos Chest": "has_explosives and (is_adult or Kokiri_Sword)",
--             "Gerudo Training Ground Hidden Ceiling Chest": "
--                 (SmallKey(GerudoTrainingGround), 3) and (logic_lens_gtg or Can_use("LensofTruth"))",
--             "Gerudo Training Ground Maze Path First Chest": "(SmallKey(GerudoTrainingGround), 4)",
--             "Gerudo Training Ground Maze Path Second Chest": "(SmallKey(GerudoTrainingGround), 6)",
--             "Gerudo Training Ground Maze Path Third Chest": "(SmallKey(GerudoTrainingGround), 7)",
--             "Gerudo Training Ground Maze Path Final Chest": "(SmallKey(GerudoTrainingGround), 9)",
--             "Gerudo Training Ground Beamos Recovery Heart 1": "True",
--             "Gerudo Training Ground Beamos Recovery Heart 2": "True",
--             # In the Beamos room, shoot the Gerudo symbol above the door to the lava room.
--             "Wall Fairy": "has_bottle and can_use(Bow)"
--         },
--         "exits": {
--             "Gerudo Fortress": "True",
--             "Gerudo Training Ground Lava Room": "
--                 here(has_explosives and (is_adult or Kokiri_Sword))",
--             "Gerudo Training Ground Central Maze Right": "(SmallKey(GerudoTrainingGround), 9)",
--             "Gerudo Training Ground Heavy Block Room": "
--                 (is_adult or Kokiri_Sword) and
--                 (can_use(Hookshot) or logic_gtg_without_hookshot)"
--         }
--     },
--     {
--         "region_name": "Gerudo Training Ground Lava Room",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             "Gerudo Training Ground Underwater Silver Rupee Chest": "
--                 is_adult and Hookshot and Can_play("SongofTime") and
--                 Can_use("IronBoots", "") and (logic_fewer_tunic_requirements or Zora_Tunic)"
--         },
--         "exits": {
--             "Gerudo Training Ground Central Maze Right": "canCplay("SongofTime") or is_child",
--             "Gerudo Training Ground Hammer Room": "
--                 is_adult and (Longshot or (Hookshot and Can_use("HoverBoots", "")))"
--         }
--     },
--     {
--         "region_name": "Gerudo Training Ground Central Maze Right",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             "Gerudo Training Ground Maze Right Central Chest": "True",
--             "Gerudo Training Ground Maze Right Side Chest": "True",
--             "Gerudo Training Ground Freestanding Key": "True"
--         },
--         "exits": {
--             "Gerudo Training Ground Lava Room": "True",
--             "Gerudo Training Ground Hammer Room": "can_use(Hookshot)"
--         }
--     },
--     {
--         "region_name": "Gerudo Training Ground Heavy Block Room",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             "Gerudo Training Ground Before Heavy Block Chest": "True"
--         },
--         "exits": {
--             "Gerudo Training Ground Eye Statue Upper": "
--                 is_adult and (logic_lens_gtg or Can_use("LensofTruth")) and
--                 (Hookshot or (logic_gtg_fake_wall and Can_use("HoverBoots", "")))"
--         }
--     },
--     {
--         "region_name": "Gerudo Training Ground Eye Statue Upper",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             "Gerudo Training Ground Near Scarecrow Chest": "Bow"
--         },
--         "exits": {
--             "Gerudo Training Ground Like Like Room": "Silver_Gauntlets",
--             "Gerudo Training Ground Eye Statue Lower": "True"
--         }
--     },
--     {
--         "region_name": "Gerudo Training Ground Like Like Room",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             "Gerudo Training Ground Heavy Block First Chest": "True",
--             "Gerudo Training Ground Heavy Block Second Chest": "True",
--             "Gerudo Training Ground Heavy Block Third Chest": "True",
--             "Gerudo Training Ground Heavy Block Fourth Chest": "True"
--         }
--     },
--     {
--         "region_name": "Gerudo Training Ground Eye Statue Lower",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             "Gerudo Training Ground Eye Statue Chest": "Bow"
--         },
--         "exits": {
--             "Gerudo Training Ground Hammer Room": "True"
--         }
--     },
--     {
--         "region_name": "Gerudo Training Ground Hammer Room",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             "Gerudo Training Ground Hammer Room Clear Chest": "True",
--             "Gerudo Training Ground Hammer Room Switch Chest": "Megaton_Hammer"
--         },
--         "exits": {
--             "Gerudo Training Ground Lava Room": "True",
--             "Gerudo Training Ground Eye Statue Lower": "Megaton_Hammer and Bow"
--         }
--     }

-- --MQ

--     {
--         "region_name": "Gerudo Training Ground Lobby",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             "Gerudo Training Ground MQ Lobby Left Chest": "True",
--             "Gerudo Training Ground MQ Lobby Right Chest": "True",
--             "Gerudo Training Ground MQ Hidden Ceiling Chest": "logic_lens_gtg_mq or Can_use("LensofTruth")",
--             "Gerudo Training Ground MQ Maze Path First Chest": "True",
--             "Gerudo Training Ground MQ Maze Path Second Chest": "True",
--             "Gerudo Training Ground MQ Maze Path Third Chest": "(SmallKey(GerudoTrainingGround), 1)",
--             "Gerudo Training Ground MQ Lobby Left Pot 1": "True",
--             "Gerudo Training Ground MQ Lobby Left Pot 2": "True",
--             "Gerudo Training Ground MQ Lobby Right Pot 1": "True",
--             "Gerudo Training Ground MQ Lobby Right Pot 2": "True",
--             "Gerudo Training Ground MQ Maze Crate": "(SmallKey(GerudoTrainingGround), 3) and can_break_crate"
--         },
--         "exits": {
--             "Gerudo Fortress": "True",
--             "Gerudo Training Ground Right Side": "here(can_use(Bow) or can_use(Slingshot))",
--             "Gerudo Training Ground Left Side": "here(has_fire_source)"
--         }
--     },
--     {
--         "region_name": "Gerudo Training Ground Right Side",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             "Gerudo Training Ground MQ Dinolfos Chest": "is_adult",
--             # In the Dinalfos room, shoot the Gerudo symbol above the door to the lava room.
--             "Wall Fairy": "has_bottle and can_use(Bow)"
--         },
--         "exits": {
--             # Fire source is checked in the water room itself.
--             "Gerudo Training Ground Underwater": "is_adult and (Bow or Longshot) and Can_use("HoverBoots", "")"
--         }
--     },
--     {
--         "region_name": "Gerudo Training Ground Underwater",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             "Gerudo Training Ground MQ Underwater Silver Rupee Chest": "
--                 has_fire_source and Can_use("IronBoots", "") and
--                 (logic_fewer_tunic_requirements or Zora_Tunic) and can_take_damage"
--         }
--     },
--     {
--         "region_name": "Gerudo Training Ground Left Side",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             "Gerudo Training Ground MQ First Iron Knuckle Chest": "is_adult or Kokiri_Sword or has_explosives"
--         },
--         "exits": {
--             "Gerudo Training Ground Stalfos Room": "
--                 can_use(Longshot) or logic_gtg_mq_without_hookshot or
--                 (logic_gtg_mq_with_hookshot and can_use(Hookshot))"
--         }
--     },
--     {
--         "region_name": "Gerudo Training Ground Stalfos Room",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             # Very difficult to fight the Stalfos and Stulltulas under the time limit as child.
--             "Gerudo Training Ground MQ Before Heavy Block Chest": "is_adult",
--             "Gerudo Training Ground MQ Heavy Block Chest": "can_use(Silver_Gauntlets)",
--             "Blue Fire": "has_bottle"
--         },
--         "exits": {
--             "Gerudo Training Ground Back Areas": "
--                 is_adult and (logic_lens_gtg_mq or Can_use("LensofTruth")) and Blue_Fire and
--                 (canCplay("SongofTime") or (logic_gtg_fake_wall and Can_use("HoverBoots", "")))"
--         }
--     },
--     {
--         "region_name": "Gerudo Training Ground Back Areas",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             # The switch that opens the door to the Ice Arrows chest can be hit with a precise jumpslash.
--             "Gerudo Training Ground MQ Ice Arrows Chest": "
--                 (SmallKey(GerudoTrainingGround), 3) and Megaton_Hammer",
--             "Gerudo Training Ground MQ Eye Statue Chest": "Bow",
--             "Gerudo Training Ground MQ Second Iron Knuckle Chest": "True",
--             "Gerudo Training Ground MQ Flame Circle Chest": "Hookshot or Bow or has_explosives"
--         },
--         "exits": {
--             "Gerudo Training Ground Central Maze Right": "Megaton_Hammer",
--             "Gerudo Training Ground Right Side": "Longshot"
--         }
--     },
--     {
--         "region_name": "Gerudo Training Ground Central Maze Right",
--         "dungeon": "Gerudo Training Ground",
--         "locations": {
--             "Gerudo Training Ground MQ Maze Right Central Chest": "True",
--             "Gerudo Training Ground MQ Maze Right Side Chest": "True"
--         },
--         "exits": {
--             "Gerudo Training Ground Underwater": "Longshot or (Hookshot and Bow)",
--             "Gerudo Training Ground Right Side": "Hookshot"
--         }
--     }
