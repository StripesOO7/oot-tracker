-- Child_Deku_Tree_Boss_Door = OOTLocation.new("Child_Deku_Tree_Boss_Door")
-- Child_Queen_Gohma_Boss_Room = OOTLocation.new("Child_Queen_Gohma_Boss_Room")
-- Child_Dodongos_Cavern_Boss_Door = OOTLocation.new("Child_Dodongos_Cavern_Boss_Door")
-- Child_King_Dodongo_Boss_Room = OOTLocation.new("Child_King_Dodongo_Boss_Room")
-- Child_Jabu_Jabus_Belly_Boss_Door = OOTLocation.new("Child_Jabu_Jabus_Belly_Boss_Door")
-- Child_Barinade_Boss_Room = OOTLocation.new("Child_Barinade_Boss_Room")
-- Child_Forest_Temple_Boss_Door = OOTLocation.new("Child_Forest_Temple_Boss_Door")
-- Child_Phantom_Ganon_Boss_Room = OOTLocation.new("Child_Phantom_Ganon_Boss_Room")
-- Child_Fire_Temple_Boss_Door = OOTLocation.new("Child_Fire_Temple_Boss_Door")
-- Child_Volvagia_Boss_Room = OOTLocation.new("Child_Volvagia_Boss_Room")
-- Child_Water_Temple_Boss_Door = OOTLocation.new("Child_Water_Temple_Boss_Door")
-- Child_Morpha_Boss_Room = OOTLocation.new("Child_Morpha_Boss_Room")
-- Child_Shadow_Temple_Boss_Door = OOTLocation.new("Child_Shadow_Temple_Boss_Door")
-- Child_Bongo_Bongo_Boss_Room = OOTLocation.new("Child_Bongo_Bongo_Boss_Room")
-- Child_Spirit_Temple_Boss_Door = OOTLocation.new("Child_Spirit_Temple_Boss_Door")
-- Child_Twinrova_Boss_Room = OOTLocation.new("Child_Twinrova_Boss_Room")
-- Child_Ganons_Castle_Tower = OOTLocation.new("Child_Ganons_Castle_Tower")
-- Child_Ganons_Castle_Tower_Below_Boss = OOTLocation.new("Child_Ganons_Castle_Tower_Below_Boss")
-- Child_Ganondorf_Boss_Room = OOTLocation.new("Child_Ganondorf_Boss_Room")

-- Adult_Deku_Tree_Boss_Door = OOTLocation.new("Adult_Deku_Tree_Boss_Door")
-- Adult_Queen_Gohma_Boss_Room = OOTLocation.new("Adult_Queen_Gohma_Boss_Room")
-- Adult_Dodongos_Cavern_Boss_Door = OOTLocation.new("Adult_Dodongos_Cavern_Boss_Door")
-- Adult_King_Dodongo_Boss_Room = OOTLocation.new("Adult_King_Dodongo_Boss_Room")
-- Adult_Jabu_Jabus_Belly_Boss_Door = OOTLocation.new("Adult_Jabu_Jabus_Belly_Boss_Door")
-- Adult_Barinade_Boss_Room = OOTLocation.new("Adult_Barinade_Boss_Room")
-- Adult_Forest_Temple_Boss_Door = OOTLocation.new("Adult_Forest_Temple_Boss_Door")
-- Adult_Phantom_Ganon_Boss_Room = OOTLocation.new("Adult_Phantom_Ganon_Boss_Room")
-- Adult_Fire_Temple_Boss_Door = OOTLocation.new("Adult_Fire_Temple_Boss_Door")
-- Adult_Volvagia_Boss_Room = OOTLocation.new("Adult_Volvagia_Boss_Room")
-- Adult_Water_Temple_Boss_Door = OOTLocation.new("Adult_Water_Temple_Boss_Door")
-- Adult_Morpha_Boss_Room = OOTLocation.new("Adult_Morpha_Boss_Room")
-- Adult_Shadow_Temple_Boss_Door = OOTLocation.new("Adult_Shadow_Temple_Boss_Door")
-- Adult_Bongo_Bongo_Boss_Room = OOTLocation.new("Adult_Bongo_Bongo_Boss_Room")
-- Adult_Spirit_Temple_Boss_Door = OOTLocation.new("Adult_Spirit_Temple_Boss_Door")
-- Adult_Twinrova_Boss_Room = OOTLocation.new("Adult_Twinrova_Boss_Room")
-- Adult_Ganons_Castle_Tower = OOTLocation.new("Adult_Ganons_Castle_Tower")
-- Adult_Ganons_Castle_Tower_Below_Boss = OOTLocation.new("Adult_Ganons_Castle_Tower_Below_Boss")
-- Adult_Ganondorf_Boss_Room = OOTLocation.new("Adult_Ganondorf_Boss_Room")

-- Child_Deku_Tree_Boss_Door:connect_one_way()
-- Adult_Deku_Tree_Boss_Door:connect_one_way()

Child_Deku_Tree_Boss_Door:connect_one_way_entrance("Child Queen Gohma Boss Room", Child_Queen_Gohma_Boss_Room)
Adult_Deku_Tree_Boss_Door:connect_one_way_entrance("Adult Queen Gohma Boss Room", Adult_Queen_Gohma_Boss_Room)

Child_Queen_Gohma_Boss_Room:connect_one_way("Child Deku Tree Queen Gohma Heart", function() 
    return All(
        Any(
            Nuts(),
            Can_use("Slingshot", "child")
        ),
        Can_jumpslash("child")
    ) 
end)
Child_Queen_Gohma_Boss_Room:connect_one_way("Child Queen Gohma", function() 
    return All(
        Any(
            Nuts(),
            Can_use("Slingshot", "child")
        ),
        Can_jumpslash("child")
    ) 
end)

Adult_Queen_Gohma_Boss_Room:connect_one_way("Adult Deku Tree Queen Gohma Heart", function() 
    return All(
        Any(
            Nuts(),
            Can_use("Slingshot", "adult")
        ),
        Can_jumpslash("adult")
    ) 
end)
Adult_Queen_Gohma_Boss_Room:connect_one_way("Adult Queen Gohma", function() 
    return All(
        Any(
            Nuts(),
            Can_use("Slingshot", "adult")
        ),
        Can_jumpslash("adult")
    ) 
end)


Child_Queen_Gohma_Boss_Room:connect_one_way_entrance("Child Deku Tree Boss Door", Child_Deku_Tree_Boss_Door)
Adult_Queen_Gohma_Boss_Room:connect_one_way_entrance("Adult Deku Tree Boss Door", Adult_Deku_Tree_Boss_Door)

-- Child_Dodongos_Cavern_Boss_Door:connect_one_way("Child ")
-- Adult_Dodongos_Cavern_Boss_Door:connect_one_way("Adult ")

Child_Dodongos_Cavern_Boss_Door:connect_one_way_entrance("Child King Dodongo Boss Room", Child_King_Dodongo_Boss_Room)
Adult_Dodongos_Cavern_Boss_Door:connect_one_way_entrance("Adult King Dodongo Boss Room", Adult_King_Dodongo_Boss_Room)

Child_King_Dodongo_Boss_Room:connect_one_way("Child Dodongos Cavern Boss Room Chest")
Child_King_Dodongo_Boss_Room:connect_one_way("Child Dodongos Cavern King Dodongo Heart", function() 
    return All(
        Any(
            All(
                Can_use("MegatonHammer", "child"),
                Has("logic_dc_hammer_floor")
            ),
            Has_explosives(),
            Has("king_dodongo_shortcuts")
        ),
        Any(
            All(
                Any(
                    Bombs(),
                    Can_use("ProgressiveScale", "child")
                ),
                Can_jumpslash("child")
            ),
            Tracker:FindObjectForCode("deadly_bonks") == 'ohko'
        )
    )
end)
Child_King_Dodongo_Boss_Room:connect_one_way("Child King Dodongo", function() 
    return All(
        Any(
            All(
                Can_use("MegatonHammer", "child"),
                Has("logic_dc_hammer_floor")
            ),
            Has_explosives(),
            Has("king_dodongo_shortcuts")
        ),
        Any(
            All(
                Any(
                    Bombs(),
                    Can_use("ProgressiveScale", "child")
                ),
                Can_jumpslash("child")
            ),
            Tracker:FindObjectForCode("deadly_bonks") == 'ohko'
        )
    )
end)

Adult_King_Dodongo_Boss_Room:connect_one_way("Adult Dodongos Cavern Boss Room Chest")
Adult_King_Dodongo_Boss_Room:connect_one_way("Adult Dodongos Cavern King Dodongo Heart", function() 
    return All(
        Any(
            All(
                Can_use("MegatonHammer", "adult"),
                Has("logic_dc_hammer_floor")
            ),
            Has_explosives(),
            Has("king_dodongo_shortcuts")
        ),
        Any(
            All(
                Any(
                    Bombs(),
                    Can_use("ProgressiveScale", "adult")
                ),
                Can_jumpslash("adult")
            ),
            Tracker:FindObjectForCode("deadly_bonks") == 'ohko'
        )
    )
end)
Adult_King_Dodongo_Boss_Room:connect_one_way("Adult King Dodongo", function() 
    return All(
        Any(
            All(
                Can_use("MegatonHammer", "adult"),
                Has("logic_dc_hammer_floor")
            ),
            Has_explosives(),
            Has("king_dodongo_shortcuts")
        ),
        Any(
            All(
                Any(
                    Bombs(),
                    Can_use("ProgressiveScale", "adult")
                ),
                Can_jumpslash("adult")
            ),
            Tracker:FindObjectForCode("deadly_bonks") == 'ohko'
        )
    )
end)


Child_King_Dodongo_Boss_Room:connect_one_way_entrance("Child Dodongos Cavern Boss Door", Child_Dodongos_Cavern_Boss_Door)
Adult_King_Dodongo_Boss_Room:connect_one_way_entrance("Adult Dodongos Cavern Boss Door", Adult_Dodongos_Cavern_Boss_Door)

-- Child_Jabu_Jabus_Belly_Boss_Door:connect_one_way("Child ")
-- Adult_Jabu_Jabus_Belly_Boss_Door:connect_one_way("Adult ")

Child_Jabu_Jabus_Belly_Boss_Door:connect_one_way_entrance("Child Barinade Boss Room", Child_Barinade_Boss_Room)
Adult_Jabu_Jabus_Belly_Boss_Door:connect_one_way_entrance("Adult Barinade Boss Room", Adult_Barinade_Boss_Room)

Child_Barinade_Boss_Room:connect_one_way("Child Jabu Jabus Belly Barinade Heart", function() 
    return All(
        Can_use("Boomerang", "child"),
        Any(
            Can_use("DekuStick", "child"),
            Can_use("KokiriSword", "child")
        )
    ) 
end)
Child_Barinade_Boss_Room:connect_one_way("Child Barinade", function() 
    return All(
        Can_use("Boomerang", "child"),
        Any(
            Can_use("DekuStick", "child"),
            Can_use("KokiriSword", "child")
        )
    ) 
end)
Child_Barinade_Boss_Room:connect_one_way("Child Jabu Jabus Belly Barinade Pot 1")
Child_Barinade_Boss_Room:connect_one_way("Child Jabu Jabus Belly Barinade Pot 2")
Child_Barinade_Boss_Room:connect_one_way("Child Jabu Jabus Belly Barinade Pot 3")
Child_Barinade_Boss_Room:connect_one_way("Child Jabu Jabus Belly Barinade Pot 4")
Child_Barinade_Boss_Room:connect_one_way("Child Jabu Jabus Belly Barinade Pot 5")
Child_Barinade_Boss_Room:connect_one_way("Child Jabu Jabus Belly Barinade Pot 6")

Adult_Barinade_Boss_Room:connect_one_way("Adult Jabu Jabus Belly Barinade Heart", function() 
    return All(
        Can_use("Boomerang", "adult"),
        Any(
            Can_use("DekuStick", "adult"),
            Can_use("KokiriSword", "adult")
        )
    ) 
end)
Adult_Barinade_Boss_Room:connect_one_way("Adult Barinade", function() 
    return All(
        Can_use("Boomerang", "adult"),
        Any(
            Can_use("DekuStick", "adult"),
            Can_use("KokiriSword", "adult")
        )
    ) 
end)
Adult_Barinade_Boss_Room:connect_one_way("Adult Jabu Jabus Belly Barinade Pot 1")
Adult_Barinade_Boss_Room:connect_one_way("Adult Jabu Jabus Belly Barinade Pot 2")
Adult_Barinade_Boss_Room:connect_one_way("Adult Jabu Jabus Belly Barinade Pot 3")
Adult_Barinade_Boss_Room:connect_one_way("Adult Jabu Jabus Belly Barinade Pot 4")
Adult_Barinade_Boss_Room:connect_one_way("Adult Jabu Jabus Belly Barinade Pot 5")
Adult_Barinade_Boss_Room:connect_one_way("Adult Jabu Jabus Belly Barinade Pot 6")


-- Child_Barinade_Boss_Room:connect_one_way_entrance("Child Jabu Jabus Belly Boss Door", Child_Jabu_Jabus_Belly_Boss_Door, function() return false end)
-- Adult_Barinade_Boss_Room:connect_one_way_entrance("Adult Jabu Jabus Belly Boss Door", Adult_Jabu_Jabus_Belly_Boss_Door, function() return false end)

Child_Forest_Temple_Boss_Door:connect_one_way()
Adult_Forest_Temple_Boss_Door:connect_one_way()

Child_Forest_Temple_Boss_Door:connect_one_way_entrance("Child Phantom Ganon Boss Room", Child_Phantom_Ganon_Boss_Room, function() return Has("BossKey(ForestTemple)") end)
Adult_Forest_Temple_Boss_Door:connect_one_way_entrance("Adult Phantom Ganon Boss Room", Adult_Phantom_Ganon_Boss_Room, function() return Has("BossKey(ForestTemple)") end)

Child_Phantom_Ganon_Boss_Room:connect_one_way("Child Forest Temple Phantom Ganon Heart", function() 
    return Any(
        Can_use("Hookshot", "child"),
        Can_use("Bow", "child"),
        All(
            Can_use("Slingshot", "child"),
            Can_use("KokiriSword", "child")
        )
    ) 
end)
Child_Phantom_Ganon_Boss_Room:connect_one_way("Child Phantom Ganon", function() 
    return Any(
        Can_use("Hookshot", "child"),
        Can_use("Bow", "child"),
        All(
            Can_use("Slingshot", "child"),
            Can_use("KokiriSword", "child")
        )
    ) 
end)

Adult_Phantom_Ganon_Boss_Room:connect_one_way("Adult Forest Temple Phantom Ganon Heart", function() 
    return Any(
        Can_use("Hookshot", "adult"),
        Can_use("Bow", "adult"),
        All(
            Can_use("Slingshot", "adult"),
            Can_use("KokiriSword", "adult")
        )
    ) 
end)
Adult_Phantom_Ganon_Boss_Room:connect_one_way("Adult Phantom Ganon", function() 
    return Any(
        Can_use("Hookshot", "adult"),
        Can_use("Bow", "adult"),
        All(
            Can_use("Slingshot", "adult"),
            Can_use("KokiriSword", "adult")
        )
    ) 
end)

-- Child_Phantom_Ganon_Boss_Room:connect_one_way_entrance("Child Forest Temple Boss Door", Child_Forest_Temple_Boss_Door, function() return false end)
-- Adult_Phantom_Ganon_Boss_Room:connect_one_way_entrance("Adult Forest Temple Boss Door", Adult_Forest_Temple_Boss_Door, function() return false end)

-- Child_Fire_Temple_Boss_Door:connect_one_way("Child ")
-- Adult_Fire_Temple_Boss_Door:connect_one_way("Adult ")

Child_Fire_Temple_Boss_Door:connect_one_way_entrance("Child Volvagia Boss Room", Child_Volvagia_Boss_Room, function() return Has("BossKey(FireTemple)") end)
Adult_Fire_Temple_Boss_Door:connect_one_way_entrance("Adult Volvagia Boss Room", Adult_Volvagia_Boss_Room, function() return Has("BossKey(FireTemple)") end)

Child_Volvagia_Boss_Room:connect_one_way("Child Fire Temple Volvagia Heart", function() 
    return All(
        Can_use("GoronTunic"),
        Can_use("MegatonHammer")
    ) 
end)
Child_Volvagia_Boss_Room:connect_one_way("Child Volvagia", function() 
    return All(
        Can_use("GoronTunic"),
        Can_use("MegatonHammer")
    ) 
end)

Adult_Volvagia_Boss_Room:connect_one_way("Adult Fire Temple Volvagia Heart", function() 
    return All(
        Can_use("GoronTunic"),
        Can_use("MegatonHammer")
    ) 
end)
Adult_Volvagia_Boss_Room:connect_one_way("Adult Volvagia", function() 
    return All(
        Can_use("GoronTunic"),
        Can_use("MegatonHammer")
    ) 
end)


-- Child_Volvagia_Boss_Room:connect_one_way_entrance("Child Fire Temple Boss Door", function() return false end)
-- Adult_Volvagia_Boss_Room:connect_one_way_entrance("Adult Fire Temple Boss Door", function() return false end)

-- Child_Water_Temple_Boss_Door:connect_one_way()
-- Adult_Water_Temple_Boss_Door:connect_one_way()

Child_Water_Temple_Boss_Door:connect_one_way_entrance("Child Morpha Boss Room", Child_Morpha_Boss_Room, function() return Has("BossKey(WaterTemple)") end)

Adult_Water_Temple_Boss_Door:connect_one_way_entrance("Adult Morpha Boss Room", Adult_Morpha_Boss_Room, function() return Has("BossKey(WaterTemple)") end)


Child_Morpha_Boss_Room:connect_one_way("Child Morpha", function() return Can_use("Hookshot", "child") end)
Child_Morpha_Boss_Room:connect_one_way("Child Water Temple Morpha Heart", function() return Can_use("Hookshot", "child") end)

Adult_Morpha_Boss_Room:connect_one_way("Adult Morpha", function() return Can_use("Hookshot", "adult") end)
Adult_Morpha_Boss_Room:connect_one_way("Adult Water Temple Morpha Heart", function() return Can_use("Hookshot", "adult") end)


-- Child_Morpha_Boss_Room:connect_one_way_entrance("Child Water Temple Boss Door")
-- Adult_Morpha_Boss_Room:connect_one_way_entrance("Adult Water Temple Boss Door")

-- Child_Shadow_Temple_Boss_Door:connect_one_way("Child ")
-- Adult_Shadow_Temple_Boss_Door:connect_one_way("Adult ")

Child_Shadow_Temple_Boss_Door:connect_one_way_entrance("Child Bongo Bongo Boss Room", Child_Bongo_Bongo_Boss_Room, function() return Has("BossKey(ShadowTemple)") end)
Adult_Shadow_Temple_Boss_Door:connect_one_way_entrance("Adult Bongo Bongo Boss Room", Adult_Bongo_Bongo_Boss_Room, function() return Has("BossKey(ShadowTemple)") end)

Child_Bongo_Bongo_Boss_Room:connect_one_way("Child Shadow Temple Bongo Bongo Heart", function() 
    return All(
        Any(
            Can_use("KokiriSword", "child"),
            false
        ),
        Any(
            Can_use("Hookshot", "child"),
            Can_use("Bow"),
            Can_use("Slingshot"),
            Has("logic_shadow_bongo")
        ),
        Any(
            Can_use("LensofTruth"),
            Has("logic_lens_bongo")
        )
    )
end)
Child_Bongo_Bongo_Boss_Room:connect_one_way("Child Bongo Bongo", function() 
    return All(
        Any(
            Can_use("KokiriSword", "child"),
            false
        ),
        Any(
            Can_use("Hookshot", "child"),
            Can_use("Bow"),
            Can_use("Slingshot"),
            Has("logic_shadow_bongo")
        ),
        Any(
            Can_use("LensofTruth"),
            Has("logic_lens_bongo")
        )
    )
end)

Adult_Bongo_Bongo_Boss_Room:connect_one_way("Adult Shadow Temple Bongo Bongo Heart", function() 
    return All(
        Any(
            Can_use("KokiriSword", "adult"),
            true
        ),
        Any(
            Can_use("Hookshot"),
            Can_use("Bow"),
            Can_use("Slingshot"),
            Has("logic_shadow_bongo")
        ),
        Any(
            Can_use("LensofTruth"),
            Has("logic_lens_bongo")
        )
    )
end)
Adult_Bongo_Bongo_Boss_Room:connect_one_way("Adult Bongo Bongo", function() 
    return All(
        Any(
            Can_use("KokiriSword", "adult"),
            true
        ),
        Any(
            Can_use("Hookshot", "adult"),
            Can_use("Bow"),
            Can_use("Slingshot"),
            Has("logic_shadow_bongo")
        ),
        Any(
            Can_use("LensofTruth"),
            Has("logic_lens_bongo")
        )
    )
end)


-- Child_Bongo_Bongo_Boss_Room:connect_one_way_entrance("Child Shadow Temple Boss Door")
-- Adult_Bongo_Bongo_Boss_Room:connect_one_way_entrance("Adult Shadow Temple Boss Door")

-- Child_Spirit_Temple_Boss_Door:connect_one_way()
-- Adult_Spirit_Temple_Boss_Door:connect_one_way()

Child_Spirit_Temple_Boss_Door:connect_one_way_entrance("Child Twinrova Boss Room", Child_Twinrova_Boss_Room, function() return Has("BossKey(SpiritTemple)") end)
Adult_Spirit_Temple_Boss_Door:connect_one_way_entrance("Adult Twinrova Boss Room", Adult_Twinrova_Boss_Room, function() return Has("BossKey(SpiritTemple)") end)

Child_Twinrova_Boss_Room:connect_one_way("Child Spirit Temple Twinrova Heart", function() return Can_use("MirrorShield") end)
Child_Twinrova_Boss_Room:connect_one_way("Child Twinrova", function() return Can_use("MirrorShield") end)

Adult_Twinrova_Boss_Room:connect_one_way("Adult Spirit Temple Twinrova Heart", function() return Can_use("MirrorShield") end)
Adult_Twinrova_Boss_Room:connect_one_way("Adult Twinrova", function() return Can_use("MirrorShield") end)


-- Child_Twinrova_Boss_Room:connect_one_way_entrance("Child Spirit Temple Boss Door")
-- Adult_Twinrova_Boss_Room:connect_one_way_entrance("Adult Spirit Temple Boss Door")

Child_Ganons_Castle_Tower:connect_one_way("Child Ganons Tower Boss Key Chest", function() 
    return Any(
        false,
        Can_use("KokiriSword", "child")
    ) 
end)
Adult_Ganons_Castle_Tower:connect_one_way("Adult Ganons Tower Boss Key Chest", function() 
    return Any(
        true,
        Can_use("KokiriSword", "adult")
    ) 
end)

Child_Ganons_Castle_Tower:connect_one_way_entrance("Child Ganons Castle Tower Below Boss", function() 
    return All(
        Any(
            false,
            Can_use("KokiriSword", "child")
        ),
        Any(
            Has("BossKey(GanonsCastle)"),
            Tracker:FindObjectForCode("shuffle_pots").CurrentStage ~= 0--off
            )
        )
end)
Adult_Ganons_Castle_Tower:connect_one_way_entrance("Adult Ganons Castle Tower Below Boss", function() 
    return All(
        Any(
            true,
            Can_use("KokiriSword", "adult")
        ),
        Any(
            Has("BossKey(GanonsCastle)"),
            Tracker:FindObjectForCode("shuffle_pots").CurrentStage ~= 0--off
            )
        )
end)

Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 1")
Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 2")
Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 3")
Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 4")
Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 5")
Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 6")
Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 7")
Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 8")
Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 9")
Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 10")
Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 11")
Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 12")
Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 13")
Child_Ganons_Castle_Tower_Below_Boss:connect_one_way("Child Ganons Tower Pot 14")

Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 1")
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 2")
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 3")
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 4")
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 5")
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 6")
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 7")
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 8")
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 9")
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 10")
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 11")
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 12")
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 13")
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way("Adult Ganons Tower Pot 14")


Child_Ganons_Castle_Tower_Below_Boss:connect_one_way_entrance("Child Ganondorf Boss Room", Child_Ganondorf_Boss_Room, function() return Has("BossKey(GanonsCastle)") end)
Adult_Ganons_Castle_Tower_Below_Boss:connect_one_way_entrance("Adult Ganondorf Boss Room", Adult_Ganondorf_Boss_Room, function() return Has("BossKey(GanonsCastle)") end)

Child_Ganondorf_Boss_Room:connect_one_way("Child Ganon", function() return Can_use("LightArrows", "child") end)
Adult_Ganondorf_Boss_Room:connect_one_way("Adult Ganon", function() return Can_use("LightArrows", "adult") end)

-- Child_Ganondorf_Boss_Room:connect_one_way_entrance("Child ")
-- Adult_Ganondorf_Boss_Room:connect_one_way_entrance("Adult ")






    -- # Boss and boss door logic.
    -- # This is separated from individual dungeons because region names must match between normal/MQ
    -- # And there are no differences in boss rooms between normal/MQ as they are separate areas.
    -- #
    -- # Key requirements (i.e. the only requirements for actually opening the boss door)
    -- # belong on the door->boss connection.  Any other requirements for reaching the boss door
    -- # belong in the respective dungeon's logic json
    -- {
    --     "region_name": "Deku Tree Boss Door",
    --     "scene": "Deku Tree",
    --     "dungeon": "Deku Tree",
    --     "exits": {
    --         "Queen Gohma Boss Room": "True"
    --     }
    -- },
    -- {
    --     "region_name": "Queen Gohma Boss Room",
    --     "scene": "Deku Tree Boss",
    --     "is_boss_room": "True",
    --     "events": {
    --         "Deku Tree Clear": "(Nuts or Can_use("Slingshot")) and can_jumpslash"
    --     },
    --     "locations": {
    --         "Deku Tree Queen Gohma Heart": "'Deku Tree Clear'",
    --         "Queen Gohma": "'Deku Tree Clear'"
    --     },
    --     "exits": {
    --         "Deku Tree Boss Door": "True"
    --     }
    -- },

    -- {
    --     "region_name": "Dodongos Cavern Boss Door",
    --     "scene": "Dodongos Cavern",
    --     "dungeon": "Dodongos Cavern",
    --     "exits": {
    --         "King Dodongo Boss Room": "True"
    --     }
    -- },
    -- {
    --     "region_name": "King Dodongo Boss Room",
    --     "scene": "Dodongos Cavern Boss",
    --     "is_boss_room": "True",
    --     "locations": {
    --         "Dodongos Cavern Boss Room Chest": "True",
    --         "Dodongos Cavern King Dodongo Heart": "
    --             ((Can_use("MegatonHammer") and logic_dc_hammer_floor) or
    --                 has_explosives or king_dodongo_shortcuts) and
    --             (((Bombs or Can_use("ProgressiveScale", "")) and can_jumpslash) or deadly_bonks == 'ohko')",
    --         "King Dodongo": "
    --             ((Can_use("MegatonHammer") and logic_dc_hammer_floor) or
    --                 has_explosives or king_dodongo_shortcuts) and
    --             (((Bombs or Can_use("ProgressiveScale", "")) and can_jumpslash) or deadly_bonks == 'ohko')",
    --         "Fairy Pot": "has_bottle"
    --     },
    --     "exits": {
    --         "Dodongos Cavern Boss Door": "True"
    --     }
    -- },

    -- {
    --     "region_name": "Jabu Jabus Belly Boss Door",
    --     "scene": "Jabu Jabus Belly",
    --     "dungeon": "Jabu Jabus Belly",
    --     "exits": {
    --         "Barinade Boss Room": "True"
    --     }
    -- },
    -- {
    --     "region_name": "Barinade Boss Room",
    --     "scene": "Jabu Jabus Belly Boss",
    --     "is_boss_room": "True",
    --     "locations": {
    --         "Jabu Jabus Belly Barinade Heart": "Can_use("Boomerang") and (Sticks or Can_use("KokiriSword", ""))",
    --         "Barinade": "Can_use("Boomerang") and (Sticks or Can_use("KokiriSword", ""))",
    --         "Jabu Jabus Belly Barinade Pot 1": "True",
    --         "Jabu Jabus Belly Barinade Pot 2": "True",
    --         "Jabu Jabus Belly Barinade Pot 3": "True",
    --         "Jabu Jabus Belly Barinade Pot 4": "True",
    --         "Jabu Jabus Belly Barinade Pot 5": "True",
    --         "Jabu Jabus Belly Barinade Pot 6": "True"
    --     },
    --     "exits": {
    --         "Jabu Jabus Belly Boss Door": "False"
    --     }
    -- },

    -- {
    --     "region_name": "Forest Temple Boss Door",
    --     "scene": "Forest Temple",
    --     "dungeon": "Forest Temple",
    --     "exits": {
    --         "Phantom Ganon Boss Room": "Boss_Key_Forest_Temple"
    --     }
    -- },
    -- {
    --     "region_name": "Phantom Ganon Boss Room",
    --     "scene": "Forest Temple Boss",
    --     "is_boss_room": "True",
    --     "locations": {
    --         "Forest Temple Phantom Ganon Heart": "
    --             Can_use("Hookshot", "") or Can_use("Bow") or (Can_use("Slingshot") and Can_use("KokiriSword", ""))",
    --         "Phantom Ganon": "
    --             Can_use("Hookshot", "") or Can_use("Bow") or (Can_use("Slingshot") and Can_use("KokiriSword", ""))"
    --     },
    --     "exits": {
    --         "Forest Temple Boss Door": "False"
    --     }
    -- },

    -- {
    --     "region_name": "Fire Temple Boss Door",
    --     "scene": "Fire Temple",
    --     "dungeon": "Fire Temple",
    --     "exits": {
    --         "Volvagia Boss Room": "Boss_Key_Fire_Temple"
    --     }
    -- },
    -- {
    --     "region_name": "Volvagia Boss Room",
    --     "scene": "Fire Temple Boss",
    --     "is_boss_room": "True",
    --     "locations": {
    --         "Fire Temple Volvagia Heart": "Can_use("GoronTunic") and Can_use("MegatonHammer")",
    --         "Volvagia": "Can_use("GoronTunic") and Can_use("MegatonHammer")"
    --     },
    --     "exits": {
    --         "Fire Temple Boss Door": "False"
    --     }
    -- },
    -- {
    --     "region_name": "Water Temple Boss Door",
    --     "scene": "Water Temple",
    --     "dungeon": "Water Temple",
    --     "exits": {
    --         "Morpha Boss Room": "Boss_Key_Water_Temple"
    --     }
    -- },
    -- {
    --     "region_name": "Morpha Boss Room",
    --     "scene": "Water Temple Boss",
    --     "is_boss_room": "True",
    --     "events": {
    --         "Water Temple Clear": "Can_use("Hookshot", "")"
    --     },
    --     "locations": {
    --         "Morpha": "Can_use("Hookshot", "")",
    --         "Water Temple Morpha Heart": "Can_use("Hookshot", "")"
    --     },
    --     "exits": {
    --         "Water Temple Boss Door": "False"
    --     }
    -- },

    -- {
    --     "region_name": "Shadow Temple Boss Door",
    --     "scene": "Shadow Temple",
    --     "dungeon": "Shadow Temple",
    --     "exits": {
    --         "Bongo Bongo Boss Room": "Boss_Key_Shadow_Temple"
    --     }
    -- },
    -- {
    --     "region_name": "Bongo Bongo Boss Room",
    --     "scene": "Shadow Temple Boss",
    --     "is_boss_room": "True",
    --     "locations": {
    --         "Shadow Temple Bongo Bongo Heart": "
    --             (Can_use("KokiriSword", "") or is_adult) and
    --             (Can_use("Hookshot", "") or Can_use("Bow") or Can_use("Slingshot") or logic_shadow_bongo) and
    --             (Can_use("LensofTruth") or logic_lens_bongo)",
    --         "Bongo Bongo": "
    --             (Can_use("KokiriSword", "") or is_adult) and
    --             (Can_use("Hookshot", "") or Can_use("Bow") or Can_use("Slingshot") or logic_shadow_bongo) and
    --             (Can_use("LensofTruth") or logic_lens_bongo)"
    --     },
    --     "exits": {
    --         "Shadow Temple Boss Door": "False"
    --     }
    -- },

    -- {
    --     "region_name": "Spirit Temple Boss Door",
    --     "scene": "Spirit Temple",
    --     "dungeon": "Spirit Temple",
    --     "exits": {
    --         "Twinrova Boss Room": "Boss_Key_Spirit_Temple"
    --     }
    -- },
    -- {
    --     "region_name": "Twinrova Boss Room",
    --     "scene": "Spirit Temple Boss",
    --     "is_boss_room": "True",
    --     "locations": {
    --         "Spirit Temple Twinrova Heart": "Can_use("MirrorShield")",
    --         "Twinrova": "Can_use("MirrorShield")"
    --     },
    --     "exits": {
    --         "Spirit Temple Boss Door": "False"
    --     }
    -- },
    -- {
    --     "region_name": "Ganons Castle Tower",
    --     "dungeon": "Ganons Castle",
    --     "locations": {
    --         "Ganons Tower Boss Key Chest": "is_adult or Can_use("KokiriSword", "")"
    --     },
    --     "exits": {
    --         "Ganons Castle Tower Below Boss": "
    --             (is_adult or Can_use("KokiriSword", "")) and
    --             (Boss_Key_Ganons_Castle or (shuffle_pots != 'off'))"
    --     }
    -- },
    -- {
    --     "region_name": "Ganons Castle Tower Below Boss",
    --     "dungeon": "Ganons Castle",
    --     "hint": "INSIDE_GANONS_CASTLE",
    --     "alt_hint": "GANONDORFS_CHAMBER",
    --     "locations": {
    --         "Ganons Tower Pot 1": "True",
    --         "Ganons Tower Pot 2": "True",
    --         "Ganons Tower Pot 3": "True",
    --         "Ganons Tower Pot 4": "True",
    --         "Ganons Tower Pot 5": "True",
    --         "Ganons Tower Pot 6": "True",
    --         "Ganons Tower Pot 7": "True",
    --         "Ganons Tower Pot 8": "True",
    --         "Ganons Tower Pot 9": "True",
    --         "Ganons Tower Pot 10": "True",
    --         "Ganons Tower Pot 11": "True",
    --         "Ganons Tower Pot 12": "True",
    --         "Ganons Tower Pot 13": "True",
    --         "Ganons Tower Pot 14": "True"
    --     },
    --     "exits": {
    --         "Ganondorf Boss Room": "Boss_Key_Ganons_Castle"
    --     }
    -- },
    -- {
    --     "region_name": "Ganondorf Boss Room",
    --     "dungeon": "Ganons Castle",
    --     "hint": "INSIDE_GANONS_CASTLE",
    --     "alt_hint": "GANONDORFS_CHAMBER",
    --     "locations": {
    --         "Ganondorf Hint": "True",
    --         "Ganon": "Can_use(LightArrows)"
    --     }
    -- }