-- Child_Spirit_Temple_Lobby = OOTLocation.new("Child_Spirit_Temple_Lobby")
-- Child_Child_Spirit_Temple = OOTLocation.new("Child_Child_Spirit_Temple")
-- Child_Child_Spirit_Before_Locked_Door = OOTLocation.new("Child_Child_Spirit_Before_Locked_Door")
-- Child_Early_Adult_Spirit_Temple = OOTLocation.new("Child_Early_Adult_Spirit_Temple")
-- Child_Child_Spirit_Temple_Climb = OOTLocation.new("Child_Child_Spirit_Temple_Climb")
-- Child_Spirit_Temple_Central_Chamber = OOTLocation.new("Child_Spirit_Temple_Central_Chamber")
-- Child_Adult_Spirit_Temple_Climb = OOTLocation.new("Child_Adult_Spirit_Temple_Climb")
-- Child_Spirit_Temple_Anubis_Room = OOTLocation.new("Child_Spirit_Temple_Anubis_Room")
-- Child_Spirit_Temple_Beyond_Anubis_Room = OOTLocation.new("Child_Spirit_Temple_Beyond_Anubis_Room")
-- Child_Spirit_Temple_Big_Mirror_Room = OOTLocation.new("Child_Spirit_Temple_Big_Mirror_Room")

-- Adult_Spirit_Temple_Lobby = OOTLocation.new("Adult_Spirit_Temple_Lobby")
-- Adult_Child_Spirit_Temple = OOTLocation.new("Adult_Child_Spirit_Temple")
-- Adult_Child_Spirit_Before_Locked_Door = OOTLocation.new("Adult_Child_Spirit_Before_Locked_Door")
-- Adult_Early_Adult_Spirit_Temple = OOTLocation.new("Adult_Early_Adult_Spirit_Temple")
-- Adult_Child_Spirit_Temple_Climb = OOTLocation.new("Adult_Child_Spirit_Temple_Climb")
-- Adult_Spirit_Temple_Central_Chamber = OOTLocation.new("Adult_Spirit_Temple_Central_Chamber")
-- Adult_Adult_Spirit_Temple_Climb = OOTLocation.new("Adult_Adult_Spirit_Temple_Climb")
-- Adult_Spirit_Temple_Anubis_Room = OOTLocation.new("Adult_Spirit_Temple_Anubis_Room")
-- Adult_Spirit_Temple_Beyond_Anubis_Room = OOTLocation.new("Adult_Spirit_Temple_Beyond_Anubis_Room")
-- Adult_Spirit_Temple_Big_Mirror_Room = OOTLocation.new("Adult_Spirit_Temple_Big_Mirror_Room")



Child_Spirit_Temple_Lobby:connect_one_way("Child Spirit Temple Lobby Pot 1")
Child_Spirit_Temple_Lobby:connect_one_way("Child Spirit Temple Lobby Pot 2")
Child_Spirit_Temple_Lobby:connect_one_way("Child Spirit Temple Lobby Flying Pot 1")
Child_Spirit_Temple_Lobby:connect_one_way("Child Spirit Temple Lobby Flying Pot 2")

Adult_Spirit_Temple_Lobby:connect_one_way("Adult Spirit Temple Lobby Pot 1")
Adult_Spirit_Temple_Lobby:connect_one_way("Adult Spirit Temple Lobby Pot 2")
Adult_Spirit_Temple_Lobby:connect_one_way("Adult Spirit Temple Lobby Flying Pot 1")
Adult_Spirit_Temple_Lobby:connect_one_way("Adult Spirit Temple Lobby Flying Pot 2")


Child_Spirit_Temple_Lobby:connect_one_way_entrance("Child Desert Colossus From Spirit Lobby", Child_Desert_Colossus_From_Spirit_Lobby)
Child_Spirit_Temple_Lobby:connect_one_way_entrance("Child Child Spirit Temple", Child_Child_Spirit_Temple, function() 
    return All(
        Any(
            Can_use("DekuStick", "child"),
            Has_explosives(),
            All(
                Any(
                    Nuts(),
                    Can_use("Boomerang", "child")
                ),
                Any(
                    Can_use("KokiriSword", "child"),
                    Can_use("Slingshot", "child")
                )
            )
        ),
        Any(
            Can_use("Boomerang", "child"),
            Can_use("Slingshot", "child"),
            All(
                Has_bombchus(),
                Has("logic_spirit_child_bombchu")
            )
        )
    )
end)
Child_Spirit_Temple_Lobby:connect_one_way_entrance("Child Child Spirit Before Locked Door", Child_Child_Spirit_Before_Locked_Door)--child
Child_Spirit_Temple_Lobby:connect_one_way_entrance("Child Early Adult Spirit Temple", Child_Early_Adult_Spirit_Temple, function() return Can_use("SilverGauntlets", "child") end)
Child_Spirit_Temple_Lobby:connect_one_way_entrance("Child Spirit Temple Central Chamber", Child_Spirit_Temple_Central_Chamber, function() return false end)--adult

Adult_Spirit_Temple_Lobby:connect_one_way_entrance("Adult Desert Colossus From Spirit Lobby", Adult_Desert_Colossus_From_Spirit_Lobby)
Adult_Spirit_Temple_Lobby:connect_one_way_entrance("Adult Child Spirit Temple", Adult_Child_Spirit_Temple, function() return false end)
Adult_Spirit_Temple_Lobby:connect_one_way_entrance("Adult Child Spirit Before Locked Door", Adult_Child_Spirit_Before_Locked_Door, function() return false end)
Adult_Spirit_Temple_Lobby:connect_one_way_entrance("Adult Early Adult Spirit Temple", Adult_Early_Adult_Spirit_Temple, function() return Can_use("SilverGauntlets", "child") end)
Adult_Spirit_Temple_Lobby:connect_one_way_entrance("Adult Spirit Temple Central Chamber", Adult_Spirit_Temple_Central_Chamber, function() return Has("spirit_temple_shortcuts") end)


Child_Child_Spirit_Temple:connect_one_way("Child Spirit Temple Child Bridge Chest")
Child_Child_Spirit_Temple:connect_one_way("Child Spirit Temple Child Early Torches Chest", function() 
    return Any(
        Can_use("DekuStick", "child"),
        Can_use("DinsFire", "child")
    ) 
end)
Child_Child_Spirit_Temple:connect_one_way("Child Spirit Temple Child Bridge Flying Pot")
Child_Child_Spirit_Temple:connect_one_way("Child Spirit Temple Child Anubis Pot")
Child_Child_Spirit_Temple:connect_one_way("Child Spirit Temple GS Metal Fence")

Adult_Child_Spirit_Temple:connect_one_way("Adult Spirit Temple Child Bridge Chest")
Adult_Child_Spirit_Temple:connect_one_way("Adult Spirit Temple Child Early Torches Chest", function() 
    return Any(
        Can_use("DekuStick", "adult"),
        Can_use("DinsFire", "adult")
    ) 
end)
Adult_Child_Spirit_Temple:connect_one_way("Adult Spirit Temple Child Bridge Flying Pot")
Adult_Child_Spirit_Temple:connect_one_way("Adult Spirit Temple Child Anubis Pot")
Adult_Child_Spirit_Temple:connect_one_way("Adult Spirit Temple GS Metal Fence")


-- Child_Child_Spirit_Temple:connect_one_way_entrance()
-- Adult_Child_Spirit_Temple:connect_one_way_entrance()

Child_Child_Spirit_Before_Locked_Door:connect_one_way("Child Spirit Temple Before Child Climb Small Wooden Crate 1")
Child_Child_Spirit_Before_Locked_Door:connect_one_way("Child Spirit Temple Before Child Climb Small Wooden Crate 2")
Child_Child_Spirit_Before_Locked_Door:connect_one_way("Child Nut Crate")

Adult_Child_Spirit_Before_Locked_Door:connect_one_way("Adult Spirit Temple Before Child Climb Small Wooden Crate 1")
Adult_Child_Spirit_Before_Locked_Door:connect_one_way("Adult Spirit Temple Before Child Climb Small Wooden Crate 2")
Adult_Child_Spirit_Before_Locked_Door:connect_one_way("Adult Nut Crate")


Child_Child_Spirit_Before_Locked_Door:connect_one_way_entrance("Child Child Spirit Temple Climb", Child_Child_Spirit_Temple_Climb, function(keys) return Has("SmallKey(SpiritTemple)", 1, 1) end)
Adult_Child_Spirit_Before_Locked_Door:connect_one_way_entrance("Adult Child Spirit Temple Climb", Child_Adult_Spirit_Temple_Climb, function(keys) return Has("SmallKey(SpiritTemple)", 1, 1) end)

Child_Early_Adult_Spirit_Temple:connect_one_way("Child Spirit Temple Compass Chest", function() 
    return All(
        Can_use("Hookshot", "child"),
        Can_play("ZeldasLullaby")
    ) 
end)
Child_Early_Adult_Spirit_Temple:connect_one_way("Child Spirit Temple Early Adult Right Chest", function() 
    return Any(
        Can_use("Bow", "child"),
        Can_use("Hookshot", "child"),
        Has_bombchus(),
        All(
            Bombs(),
            Has("logic_spirit_lower_adult_switch")
        )
    ) 
end)
Child_Early_Adult_Spirit_Temple:connect_one_way("Child Spirit Temple GS Boulder Room", function() 
    return All(
        Can_play("SongofTime"),
        Any(
            Can_use("Bow", "child"),
            Can_use("Hookshot", "child"),
            Has_bombchus(),
            All(
                Bombs(),
                Has("logic_spirit_lower_adult_switch")
            )
        )
    )
end)

Adult_Early_Adult_Spirit_Temple:connect_one_way("Adult Spirit Temple Compass Chest", function() 
    return All(
        Can_use("Hookshot", "adult"),
        Can_play("ZeldasLullaby")
    ) 
end)
Adult_Early_Adult_Spirit_Temple:connect_one_way("Adult Spirit Temple Early Adult Right Chest", function() 
    return Any(
        Can_use("Bow", "adult"),
        Can_use("Hookshot", "adult"),
        Has_bombchus(),
        All(
            Bombs(),
            Has("logic_spirit_lower_adult_switch")
        )
    ) 
end)
Adult_Early_Adult_Spirit_Temple:connect_one_way("Adult Spirit Temple GS Boulder Room", function() 
    return All(
        Can_play("SongofTime"),
        Any(
            Can_use("Bow", "adult"),
            Can_use("Hookshot", "adult"),
            Has_bombchus(),
            All(
                Bombs(),
                Has("logic_spirit_lower_adult_switch")
            )
        )
    )
end)


Child_Early_Adult_Spirit_Temple:connect_one_way_entrance("Child Spirit Temple Central Chamber", Child_Spirit_Temple_Central_Chamber, function() return Has("SmallKey(SpiritTemple)", 1, 1) end)
Child_Early_Adult_Spirit_Temple:connect_one_way_entrance("Child Adult Spirit Temple Climb", Child_Adult_Spirit_Temple_Climb, function() return Has("SmallKey(SpiritTemple)", 3, 3) end)

Adult_Early_Adult_Spirit_Temple:connect_one_way_entrance("Adult Spirit Temple Central Chamber", Adult_Spirit_Temple_Central_Chamber, function() return Has("SmallKey(SpiritTemple)", 1, 1) end)
Adult_Early_Adult_Spirit_Temple:connect_one_way_entrance("Adult Adult Spirit Temple Climb", Adult_Adult_Spirit_Temple_Climb, function() return Has("SmallKey(SpiritTemple)", 3, 3) end)


Child_Child_Spirit_Temple_Climb:connect_one_way("Child Spirit Temple Child Climb North Chest", function() 
    return Any(
        All(
            Has_projectile("child"),
            Has("SmallKey(SpiritTemple)", 5)
        ),
        Has_projectile("both")
    )
end)
Child_Child_Spirit_Temple_Climb:connect_one_way("Child Spirit Temple Child Climb East Chest", function() 
    return Any(
        All(
            Has_projectile("child"),
            Has("SmallKey(SpiritTemple)", 5)
        ),
        Has_projectile("both")
    )
end)
Child_Child_Spirit_Temple_Climb:connect_one_way("Child Spirit Temple Child Climb Pot")
Child_Child_Spirit_Temple_Climb:connect_one_way("Child Spirit Temple GS Sun on Floor Room", function() 
    return Any(
        All(
            Has_projectile("child"),
            Has("SmallKey(SpiritTemple)", 5)
        ),
        Has_projectile("both"),
        Can_use("DinsFire", "child"),
        All(
            Can_take_damage("child"),
            Any(
                Can_use("DekuStick", "child"),
                Can_use("KokiriSword", "child"),
                Has_projectile("child")
            )
        )
    )
end)

Adult_Child_Spirit_Temple_Climb:connect_one_way("Adult Spirit Temple Child Climb North Chest", function() 
    return Any(
        All(
            true, -- adult
            Has_projectile("adult"),
            Any(
                Has("SmallKey(SpiritTemple)", 3),
                Has("spirit_temple_shortcuts"),
                All(
                    Has("SmallKey(SpiritTemple)", 2),
                    Has("bombchus_in_logic"),
                    not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage ~= 1) --no ER
                )
            ),
            Has_projectile("both")
        )
    end)
Adult_Child_Spirit_Temple_Climb:connect_one_way("Adult Spirit Temple Child Climb East Chest", function() 
    return Any(
        All(
            true, -- adult
            Has_projectile("adult"),
            Any(
                Has("SmallKey(SpiritTemple)", 3),
                Has("spirit_temple_shortcuts"),
                All(
                    Has("SmallKey(SpiritTemple)", 2),
                    Has("bombchus_in_logic"),
                    not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage ~= 1) --no ER
                )
            ),
            Has_projectile("both")
        )
    end)
Adult_Child_Spirit_Temple_Climb:connect_one_way("Adult Spirit Temple Child Climb Pot")
Adult_Child_Spirit_Temple_Climb:connect_one_way("Adult Spirit Temple GS Sun on Floor Room", function() 
    return Any(
        All(
            true, -- adult
            Any(
                Has_projectile("adult"),
                Can_take_damage("adult")
            ),
            Any(
                Has("SmallKey(SpiritTemple)", 3),
                Has("spirit_temple_shortcuts"),
                All(
                    Has("SmallKey(SpiritTemple)", 2),
                    Has("bombchus_in_logic"),
                    not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0 ))--not ER
        ),
        Has_projectile("both"),
        Can_use("DinsFire", "adult"),
        All(
            Can_take_damage("adult"),
            Any(
                Can_use("DekuStick", "adult"),
                Can_use("KokiriSword", "adult"),
                Has_projectile("child")
            )
        )
    )
end)


Child_Child_Spirit_Temple_Climb:connect_one_way_entrance("Child Spirit Temple Central Chamber", Child_Spirit_Temple_Central_Chamber)
Child_Child_Spirit_Temple_Climb:connect_one_way_entrance("Child Child Spirit Before Locked Door", Child_Child_Spirit_Before_Locked_Door)

Adult_Child_Spirit_Temple_Climb:connect_one_way_entrance("Adult Spirit Temple Central Chamber", Adult_Spirit_Temple_Central_Chamber)
Adult_Child_Spirit_Temple_Climb:connect_one_way_entrance("Adult Child Spirit Before Locked Door", Adult_Child_Spirit_Before_Locked_Door)


Child_Spirit_Temple_Central_Chamber:connect_one_way("Child Spirit Temple Map Chest", function(keys) 
    return Any(
        All(
            true,
            Can_use("DekuStick", "child"),
            Has("SmallKey(SpiritTemple)", 5)
        ),
        All(
            Any(
                Can_use("DinsFire", "child"),
                All(
                    Any(
                        All(
                            Tracker:FindObjectForCode("MagicMeter").Active,
                            Can_use("FireArrows", "child")
                        ),
                        Has("logic_spirit_map_chest")
                    ),
                    Can_use("Bow", "child"),
                    Can_use("DekuStick", "child")
                )
            ),
            Any(
                Has_explosives(),
                All(
                    Has("SmallKey(SpiritTemple)", 2),
                    Has("bombchus_in_logic"),
                    not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0)
                )
            )
        )
end)
Child_Spirit_Temple_Central_Chamber:connect_one_way("Child Spirit Temple Sun Block Room Chest", function(keys) 
    return Any(
        All(
            true,
            Can_use("DekuStick", "child"),
            Has("SmallKey(SpiritTemple)", 5)
        ),
        All(
            Any(
                Can_use("DinsFire", "child"),
                All(
                    Any(
                        All(
                            Tracker:FindObjectForCode("MagicMeter").Active,
                            Can_use("FireArrows", "adult")
                        ),
                        Has("logic_spirit_sun_chest")
                    ),
                    Can_use("Bow", "child"),
                    Can_use("DekuStick", "child")
                )
            ),
            Any(
                Has_explosives(),
                All(
                    Has("SmallKey(SpiritTemple)", 2),
                    Has("bombchus_in_logic"),
                    not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0)
                )
            )
        )
end)
Child_Spirit_Temple_Central_Chamber:connect_one_way("Child Spirit Temple Silver Gauntlets Chest", function(keys) 
    return Any(
        Has("SmallKey(SpiritTemple)", 5),
        All(
            Has_explosives(),
            Can_use("Longshot", "child"),
            Has("SmallKey(SpiritTemple)", 3)
        )
    )
end)
Child_Spirit_Temple_Central_Chamber:connect_one_way("Child Spirit Temple Central Chamber Flying Pot 1", function(keys) 
    return Any(
        Has("SmallKey(SpiritTemple)", 3),
        Has("spirit_temple_shortcuts"),
        Has_explosives(),
        All(
            Has("SmallKey(SpiritTemple)", 2),
            Has("bombchus_in_logic"),
            not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
        )
    )
end)
Child_Spirit_Temple_Central_Chamber:connect_one_way("Child Spirit Temple Central Chamber Flying Pot 2", function(keys) 
    return Any(
        Has("SmallKey(SpiritTemple)", 3),
        Has("spirit_temple_shortcuts"),
        Has_explosives(),
        All(
            Has("SmallKey(SpiritTemple)", 2),
            Has("bombchus_in_logic"),
            not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
        )
    )
end)
Child_Spirit_Temple_Central_Chamber:connect_one_way("Child Spirit Temple Hall After Sun Block Room Pot 1", function(keys) 
    return Any(
        Has("SmallKey(SpiritTemple)", 3),
        Has("spirit_temple_shortcuts"),
        Has_explosives(),
        All(
            Has("SmallKey(SpiritTemple)", 2),
            Has("bombchus_in_logic"),
            not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
        )
    )
end)
Child_Spirit_Temple_Central_Chamber:connect_one_way("Child Spirit Temple Hall After Sun Block Room Pot 2", function(keys) 
    return Any(
        Has("SmallKey(SpiritTemple)", 3),
        Has("spirit_temple_shortcuts"),
        Has_explosives(),
        All(
            Has("SmallKey(SpiritTemple)", 2),
            Has("bombchus_in_logic"),
            not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
        )
    )
end)
Child_Spirit_Temple_Central_Chamber:connect_one_way("Child Spirit Temple GS Lobby", function(keys) 
    return Any(
        All(
            true,
            Has("logic_spirit_lobby_gs"),
            Can_use("Boomerang", "child"),
            Has("SmallKey(SpiritTemple)", 5)
        ),
        All(
            Has("logic_spirit_lobby_gs"),
            Can_use("Boomerang", "child"),
            Any(
                Can_use("Hookshot", "child"),
                Can_use("HoverBoots", "child"),
                Has("logic_spirit_lobby_jump")
            ),
            Any(
                Has_explosives(),
                All(
                    Has("SmallKey(SpiritTemple)", 2),
                    Has("bombchus_in_logic"),
                    not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
                )
            )
        )
    )
end)
Child_Spirit_Temple_Central_Chamber:connect_one_way("Child Spirit Temple GS Hall After Sun Block Room", function(keys) 
    return Any(
        All(
            true,
            Can_use("Boomerang", "child"),
            Has("SmallKey(SpiritTemple)", 5)
        ),
        All(
            Can_use("Boomerang", "child"),
            Can_use("Hookshot", "child"),
            Any(
                Has_explosives(),
                All(
                    Has("SmallKey(SpiritTemple)", 2),
                    Has("bombchus_in_logic"),
                    not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
                )
            )
        )
    )
end)

Adult_Spirit_Temple_Central_Chamber:connect_one_way("Adult Spirit Temple Map Chest", function(keys) 
    return Any(
        All(
            true,
            Any(
                Has_fire_source("adult"),
                All(
                    Has("logic_spirit_map_chest"),
                    Can_use("Bow", "adult")
                )
            ),
            Any(
                Has("SmallKey(SpiritTemple)", 3),
                Has("spirit_temple_shortcuts")
            )
        ),
        All(
            Any(
                Can_use("DinsFire", "adult"),
                All(
                    Any(
                        All(
                            Tracker:FindObjectForCode("MagicMeter").Active,
                            Can_use("FireArrows", "adult")
                        ),
                        Has("logic_spirit_map_chest")
                    ),
                    Can_use("Bow", "adult"),
                    Can_use("DekuStick", "adult")
                )
            ),
            Any(
                Has_explosives(),
                All(
                    Has("SmallKey(SpiritTemple)", 2),
                    Has("bombchus_in_logic"),
                    not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
                )
            )
        )
    )
end)
Adult_Spirit_Temple_Central_Chamber:connect_one_way("Adult Spirit Temple Sun Block Room Chest", function(keys) 
    return Any(
        All(
            true,
            Any(
                Has_fire_source("adult"),
                All(
                    Has("logic_spirit_sun_chest"),
                    Can_use("Bow", "adult")
                )
            ),
            Any(
                Has("SmallKey(SpiritTemple)", 3),
                Has("spirit_temple_shortcuts")
            )
        ),
        All(
            Any(
                Can_use("DinsFire", "adult"),
                All(
                    Any(
                        All(
                            Tracker:FindObjectForCode("MagicMeter").Active,
                            Can_use("FireArrows", "adult")
                        ),
                        Has("logic_spirit_sun_chest")
                    ),
                    Can_use("Bow", "adult"),
                    Can_use("DekuStick", "adult")
                )
            ),
            Any(
                Has_explosives(),
                All(
                    Has("SmallKey(SpiritTemple)", 2),
                    Has("bombchus_in_logic"),
                    not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
                )
            )
        )
    )
end)
Adult_Spirit_Temple_Central_Chamber:connect_one_way("Adult Spirit Temple Silver Gauntlets Chest", function(keys) 
    return Any(
        Has("SmallKey(SpiritTemple)", 5),
        All(
            Has_explosives(),
            Can_use("Longshot", "adult"),
            Has("SmallKey(SpiritTemple)", 3)
        )
    )
end)
Adult_Spirit_Temple_Central_Chamber:connect_one_way("Adult Spirit Temple Central Chamber Flying Pot 1", function(keys) 
    return Any(
        Has("SmallKey(SpiritTemple)", 3),
        Has("spirit_temple_shortcuts"),
        Has_explosives(),
        All(
            Has("SmallKey(SpiritTemple)", 2),
            Has("bombchus_in_logic"),
            not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
        )
    )
end)
Adult_Spirit_Temple_Central_Chamber:connect_one_way("Adult Spirit Temple Central Chamber Flying Pot 2", function(keys) 
    return Any(
        Has("SmallKey(SpiritTemple)", 3),
        Has("spirit_temple_shortcuts"),
        Has_explosives(),
        All(
            Has("SmallKey(SpiritTemple)", 2),
            Has("bombchus_in_logic"),
            not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
        )
    )
end)
Adult_Spirit_Temple_Central_Chamber:connect_one_way("Adult Spirit Temple Hall After Sun Block Room Pot 1", function(keys) 
    return Any(
        Has("SmallKey(SpiritTemple)", 3),
        Has("spirit_temple_shortcuts"),
        Has_explosives(),
        All(
            Has("SmallKey(SpiritTemple)", 2),
            Has("bombchus_in_logic"),
            not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
        )
    )
end)
Adult_Spirit_Temple_Central_Chamber:connect_one_way("Adult Spirit Temple Hall After Sun Block Room Pot 2", function(keys) 
    return Any(
        Has("SmallKey(SpiritTemple)", 3),
        Has("spirit_temple_shortcuts"),
        Has_explosives(),
        All(
            Has("SmallKey(SpiritTemple)", 2),
            Has("bombchus_in_logic"),
            not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
        )
    )
end)
Adult_Spirit_Temple_Central_Chamber:connect_one_way("Adult Spirit Temple GS Lobby", function(keys) 
    return Any(
        All(
            true,
            Any(
                Can_use("Hookshot", "adult"),
                Can_use("HoverBoots", "adult"),
                Has("logic_spirit_lobby_jump")
            ),
            Any(
                Has("SmallKey(SpiritTemple)", 3),
                Has("spirit_temple_shortcuts")
            )
        ),
        All(
            Has("logic_spirit_lobby_gs"),
            Can_use("Boomerang", "adult"),
            Any(
                Can_use("Hookshot", "adult"),
                Can_use("HoverBoots", "adult"),
                Has("logic_spirit_lobby_jump")
            ),
            Any(
                Has_explosives(),
                All(
                    Has("SmallKey(SpiritTemple)", 2),
                    Has("bombchus_in_logic"),
                    not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
                )
            )
        )
    )
end)
Adult_Spirit_Temple_Central_Chamber:connect_one_way("Adult Spirit Temple GS Hall After Sun Block Room", function(keys) 
    return Any(
        All(
            true,
            Can_use("Hookshot", "adult"),
            Any(
                Has("SmallKey(SpiritTemple)", 3),
                Has("spirit_temple_shortcuts")
            )
        ),
        All(
            Can_use("Boomerang", "adult"),
            Can_use("Hookshot", "adult"),
            Any(
                Has_explosives(),
                All(
                    Has("SmallKey(SpiritTemple)", 2),
                    Has("bombchus_in_logic"),
                    not Tracker:FindObjectForCode("shuffle_dungeon_entrances").CurrentStage == 0
                )
            )
        )
    )
end)


Child_Spirit_Temple_Central_Chamber:connect_one_way_entrance("Child Child Spirit Temple Climb", Child_Child_Spirit_Temple_Climb)
Child_Spirit_Temple_Central_Chamber:connect_one_way_entrance("Child Adult Spirit Temple Climb", Child_Adult_Spirit_Temple_Climb, function() 
    return All(
        Has("spirit_temple_shortcuts"),
        Can_use("Hookshot", "child")
    )
end)
Child_Spirit_Temple_Central_Chamber:connect_one_way_entrance("Child Spirit Temple Boss Door", Child_Spirit_Temple_Boss_Door, function() return false end)
Child_Spirit_Temple_Central_Chamber:connect_one_way_entrance("Child Desert Colossus", Child_Desert_Colossus, function(keys) 
    return Any(
        Has("SmallKey(SpiritTemple)", 5),
        All(
            false, --adult
            Has_explosives(),
            Has("SmallKey(SpiritTemple)", 3)
        )
    ) 
end)

Adult_Spirit_Temple_Central_Chamber:connect_one_way_entrance("Adult Child Spirit Temple Climb", Adult_Child_Spirit_Temple_Climb)
Adult_Spirit_Temple_Central_Chamber:connect_one_way_entrance("Adult Adult Spirit Temple Climb", Adult_Adult_Spirit_Temple_Climb, function() 
    return All(
        Has("spirit_temple_shortcuts"),
        Can_use("Hookshot", "adult")
    )
end)
Adult_Spirit_Temple_Central_Chamber:connect_one_way_entrance("Adult Spirit Temple Boss Door", Adult_Spirit_Temple_Boss_Door, function() 
    return All(
        true, --adult
        Has("spirit_temple_shortcuts"),
        Any(
            Can_use("Longshot", "adult"),
            All(
                Has("logic_spirit_platform_hookshot"),
                Can_use("Hookshot", "adult")
            )
         ) 
    )
end)
Adult_Spirit_Temple_Central_Chamber:connect_one_way_entrance("Adult Desert Colossus", Adult_Desert_Colossus, function(keys) 
    return Any(
        Has("SmallKey(SpiritTemple)", 5),
        All(
            true, --adult
            Has_explosives(),
            Has("SmallKey(SpiritTemple)", 3)
        )
    ) 
end)


Child_Adult_Spirit_Temple_Climb:connect_one_way("Child Spirit Temple First Mirror Left Chest")
Child_Adult_Spirit_Temple_Climb:connect_one_way("Child Spirit Temple First Mirror Right Chest")
Child_Adult_Spirit_Temple_Climb:connect_one_way("Child Spirit Temple Statue Room Hand Chest", function() return Can_play("ZeldasLullaby") end)
Child_Adult_Spirit_Temple_Climb:connect_one_way("Child Spirit Temple Statue Room Northeast Chest", function()
    return All(
        Can_play("ZeldasLullaby"),
        Any(
            Can_use("Hookshot", "child"),
            Can_use("HoverBoots", "child"),
            Has("logic_spirit_lobby_jump")
        )
    )
end)
Child_Adult_Spirit_Temple_Climb:connect_one_way("Child Spirit Temple Adult Climb Flying Pot 1")
Child_Adult_Spirit_Temple_Climb:connect_one_way("Child Spirit Temple Adult Climb Flying Pot 2")

Adult_Adult_Spirit_Temple_Climb:connect_one_way("Adult Spirit Temple First Mirror Left Chest")
Adult_Adult_Spirit_Temple_Climb:connect_one_way("Adult Spirit Temple First Mirror Right Chest")
Adult_Adult_Spirit_Temple_Climb:connect_one_way("Adult Spirit Temple Statue Room Hand Chest", function() return Can_play("ZeldasLullaby") end)
Adult_Adult_Spirit_Temple_Climb:connect_one_way("Adult Spirit Temple Statue Room Northeast Chest", function()
    return All(
        Can_play("ZeldasLullaby"),
        Any(
            Can_use("Hookshot", "adult"),
            Can_use("HoverBoots", "adult"),
            Has("logic_spirit_lobby_jump")
        )
    )
end)
Adult_Adult_Spirit_Temple_Climb:connect_one_way("Adult Spirit Temple Adult Climb Flying Pot 1")
Adult_Adult_Spirit_Temple_Climb:connect_one_way("Adult Spirit Temple Adult Climb Flying Pot 2")


Child_Adult_Spirit_Temple_Climb:connect_one_way_entrance("Child Early Adult Spirit Temple", Child_Early_Adult_Spirit_Temple, function(keys) return Has("SmallKey(SpiritTemple)", 5) end)
Child_Adult_Spirit_Temple_Climb:connect_one_way_entrance("Child Spirit Temple Anubis Room", Child_Spirit_Temple_Anubis_Room, function(keys) return Has("SmallKey(SpiritTemple)", 4) end)

Adult_Adult_Spirit_Temple_Climb:connect_one_way_entrance("Adult Early Adult Spirit Temple", Adult_Early_Adult_Spirit_Temple, function(keys) return Has("SmallKey(SpiritTemple)", 5) end)
Adult_Adult_Spirit_Temple_Climb:connect_one_way_entrance("Adult Spirit Temple Anubis Room", Adult_Spirit_Temple_Anubis_Room, function(keys) return Has("SmallKey(SpiritTemple)", 4) end)


Child_Spirit_Temple_Anubis_Room:connect_one_way("Child Spirit Temple Beamos Hall Pot")
Adult_Spirit_Temple_Anubis_Room:connect_one_way("Adult Spirit Temple Beamos Hall Pot")

Child_Spirit_Temple_Anubis_Room:connect_one_way_entrance("Child Spirit Temple Beyond Anubis Room", Child_Spirit_Temple_Beyond_Anubis_Room, function() return Has_explosives() end)
Child_Spirit_Temple_Anubis_Room:connect_one_way_entrance("Child Spirit Temple Big Mirror Room", Child_Spirit_Temple_Big_Mirror_Room, function() 
    return All(
        Has("SmallKey(SpiritTemple)", 5),
        Any(
            Has"logic_spirit_wall",
            Can_use("Longshot", "child"),
            Has_bombchus(),
            All(
                Any(
                    Bombs(),
                    Nuts(),
                    Can_use("DinsFire", "child")
                ),
                Any(
                    Can_use("Bow", "child"),
                    Can_use("Hookshot", "child"),
                    Can_use("MegatonHammer", "child")
                )
            )
        )
    )
end)

Adult_Spirit_Temple_Anubis_Room:connect_one_way_entrance("Adult Spirit Temple Beyond Anubis Room", Adult_Spirit_Temple_Beyond_Anubis_Room, function() return Has_explosives() end)
Adult_Spirit_Temple_Anubis_Room:connect_one_way_entrance("Adult Spirit Temple Big Mirror Room", Adult_Spirit_Temple_Big_Mirror_Room, function() 
    return All(
        Has("SmallKey(SpiritTemple)", 5),
        Any(
            Has"logic_spirit_wall",
            Can_use("Longshot", "adult"),
            Has_bombchus(),
            All(
                Any(
                    Bombs(),
                    Nuts(),
                    Can_use("DinsFire", "adult")
                ),
                Any(
                    Can_use("Bow", "adult"),
                    Can_use("Hookshot", "adult"),
                    Can_use("MegatonHammer", "adult")
                )
            )
        )
    )
end)


Child_Spirit_Temple_Beyond_Anubis_Room:connect_one_way("Child Spirit Temple Near Four Armos Chest", function() return Can_use("MirrorShield", "child") end )
Child_Spirit_Temple_Beyond_Anubis_Room:connect_one_way("Child Spirit Temple Hallway Left Invisible Chest", function() 
    return Any(
        Has("logic_lens_spirit"),
        Can_use("LensofTruth", "child")
    ) 
end )
Child_Spirit_Temple_Beyond_Anubis_Room:connect_one_way("Child Spirit Temple Hallway Right Invisible Chest", function() 
    return Any(
        Has("logic_lens_spirit"),
        Can_use("LensofTruth", "child")
    ) 
end )
Child_Spirit_Temple_Beyond_Anubis_Room:connect_one_way("Child Spirit Temple Mirror Shield Chest")

Adult_Spirit_Temple_Beyond_Anubis_Room:connect_one_way("Adult Spirit Temple Near Four Armos Chest", function() return Can_use("MirrorShield", "adult") end )
Adult_Spirit_Temple_Beyond_Anubis_Room:connect_one_way("Adult Spirit Temple Hallway Left Invisible Chest", function() 
    return Any(
        Has("logic_lens_spirit"),
        Can_use("LensofTruth", "adult")
    ) 
end )
Adult_Spirit_Temple_Beyond_Anubis_Room:connect_one_way("Adult Spirit Temple Hallway Right Invisible Chest", function() 
    return Any(
        Has("logic_lens_spirit"),
        Can_use("LensofTruth", "adult")
    ) 
end )
Adult_Spirit_Temple_Beyond_Anubis_Room:connect_one_way("Adult Spirit Temple Mirror Shield Chest")


-- Child_Spirit_Temple_Beyond_Anubis_Room:connect_one_way_entrance()
-- Adult_Spirit_Temple_Beyond_Anubis_Room:connect_one_way_entrance()

Child_Spirit_Temple_Big_Mirror_Room:connect_one_way("Child Spirit Temple Boss Key Chest", function() 
    return All(
        Can_play("ZeldasLullaby"),
        Can_use("Bow", "child"),
        Can_use("Hookshot", "child")
    )
end )
Child_Spirit_Temple_Big_Mirror_Room:connect_one_way("Child Spirit Temple Topmost Chest", function() return Can_use("MirrorShield", "child") end )
Child_Spirit_Temple_Big_Mirror_Room:connect_one_way("Child Spirit Temple Shifting Wall Recovery Heart 1", function() return Can_use("Hookshot", "child") end )
Child_Spirit_Temple_Big_Mirror_Room:connect_one_way("Child Spirit Temple Shifting Wall Recovery Heart 2", function() return Can_use("Hookshot", "child") end )
Child_Spirit_Temple_Big_Mirror_Room:connect_one_way("Child Spirit Temple Big Mirror Flying Pot 1")
Child_Spirit_Temple_Big_Mirror_Room:connect_one_way("Child Spirit Temple Big Mirror Flying Pot 2")
Child_Spirit_Temple_Big_Mirror_Room:connect_one_way("Child Spirit Temple Big Mirror Flying Pot 3")
Child_Spirit_Temple_Big_Mirror_Room:connect_one_way("Child Spirit Temple Big Mirror Flying Pot 4")
Child_Spirit_Temple_Big_Mirror_Room:connect_one_way("Child Spirit Temple Big Mirror Flying Pot 5")
Child_Spirit_Temple_Big_Mirror_Room:connect_one_way("Child Spirit Temple Big Mirror Flying Pot 6")

Adult_Spirit_Temple_Big_Mirror_Room:connect_one_way("Adult Spirit Temple Boss Key Chest", function() 
    return All(
        Can_play("ZeldasLullaby"),
        Can_use("Bow", "adult"),
        Can_use("Hookshot", "adult")
    )
end)
Adult_Spirit_Temple_Big_Mirror_Room:connect_one_way("Adult Spirit Temple Topmost Chest", function() return Can_use("MirrorShield", "adult") end)
Adult_Spirit_Temple_Big_Mirror_Room:connect_one_way("Adult Spirit Temple Shifting Wall Recovery Heart 1", function() return Can_use("Hookshot", "adult") end)
Adult_Spirit_Temple_Big_Mirror_Room:connect_one_way("Adult Spirit Temple Shifting Wall Recovery Heart 2", function() return Can_use("Hookshot", "adult") end)
Adult_Spirit_Temple_Big_Mirror_Room:connect_one_way("Adult Spirit Temple Big Mirror Flying Pot 1")
Adult_Spirit_Temple_Big_Mirror_Room:connect_one_way("Adult Spirit Temple Big Mirror Flying Pot 2")
Adult_Spirit_Temple_Big_Mirror_Room:connect_one_way("Adult Spirit Temple Big Mirror Flying Pot 3")
Adult_Spirit_Temple_Big_Mirror_Room:connect_one_way("Adult Spirit Temple Big Mirror Flying Pot 4")
Adult_Spirit_Temple_Big_Mirror_Room:connect_one_way("Adult Spirit Temple Big Mirror Flying Pot 5")
Adult_Spirit_Temple_Big_Mirror_Room:connect_one_way("Adult Spirit Temple Big Mirror Flying Pot 6")


Child_Spirit_Temple_Big_Mirror_Room:connect_one_way_entrance("Child Spirit Temple Boss Door", Child_Spirit_Temple_Boss_Door, function()
return All(
    Any(
        Has("spirit_temple_shortcuts"),
        All(
            Has_explosives(),
            Can_use("MirrorShield", "child")
        )
    ),
    Can_use("Hookshot", "child")
)
end)
Adult_Spirit_Temple_Big_Mirror_Room:connect_one_way_entrance("Adult Spirit Temple Boss Door", Adult_Spirit_Temple_Boss_Door, function()
return All(
        Any(
            Has("spirit_temple_shortcuts"),
            All(
                Has_explosives(),
                Can_use("MirrorShield", "adult")
            )
        ),
        Can_use("Hookshot", "adult")
    )
end)






-- --
-- {
--     "region_name": "Spirit Temple Lobby",
--     "dungeon": "Spirit Temple",
--     "locations": {
--         "Spirit Temple MQ Entrance Front Left Chest": "True",
--         "Spirit Temple MQ Entrance Back Left Chest": "
--             here(can_blast_or_smash) and (can_use(Slingshot) or can_use(Bow))",
--         "Spirit Temple MQ Entrance Back Right Chest": "
--             has_bombchus or can_use(Bow) or can_use(Hookshot) or
--             can_use(Slingshot) or can_use(Boomerang)",
--         "Spirit Temple MQ Lobby Pot 1": "True",
--         "Spirit Temple MQ Lobby Pot 2": "True",
--         "Spirit Temple MQ Lobby Pot 3": "True",
--         "Spirit Temple MQ Lobby Pot 4": "True"
--     },
--     "exits": {
--         "Desert Colossus From Spirit Lobby": "True",
--         "Child Spirit Temple": "is_child",
--         "Adult Spirit Temple": "
--             can_use(Longshot) and
--             ((can_use(Silver_Gauntlets) and has_bombchus) or spirit_temple_shortcuts)"
--     }
-- },
-- {
--     "region_name": "Child Spirit Temple",
--     "dungeon": "Spirit Temple",
--     "locations": {
--         "Spirit Temple MQ Child Hammer Switch Chest": "
--             at('Adult Spirit Temple', (Small_Key_Spirit_Temple, 7) and Megaton_Hammer)",
--         "Spirit Temple MQ Map Chest": "Sticks or Kokiri_Sword or Bombs",
--         "Spirit Temple MQ Map Room Enemy Chest": "
--             (Sticks or Kokiri_Sword) and has_bombchus and Slingshot and can_use(Dins_Fire)",
--         "Spirit Temple MQ Silver Block Hallway Chest": "
--             has_bombchus and (Small_Key_Spirit_Temple, 7) and Slingshot and
--             (can_use(Dins_Fire) or
--                 at('Adult Spirit Temple', (can_use(Fire_Arrows) or
--                     (logic_spirit_mq_frozen_eye and can_use(Bow) and can_play(Song_of_Time)))))",
--         "Spirit Temple MQ Child Recovery Heart 1": "can_use(Slingshot) or can_use(Boomerang)",
--         "Spirit Temple MQ Child Recovery Heart 2": "can_use(Slingshot) or can_use(Boomerang)",
--         "Spirit Temple MQ Child Torch Slugs Room Pot": "True",
--         "Spirit Temple MQ Child 3 Gibdo Room Pot 1": "
--             (Sticks or Kokiri_Sword or (Bombs and can_use(Dins_Fire))) and has_bombchus and Slingshot",
--         "Spirit Temple MQ Child 3 Gibdo Room Pot 2": "
--             (Sticks or Kokiri_Sword or (Bombs and can_use(Dins_Fire))) and has_bombchus and Slingshot",
--         "Spirit Temple MQ Child Stalfos Fight Pot 1": "
--             (Sticks or Kokiri_Sword) and has_bombchus and Slingshot",
--         "Spirit Temple MQ Child Stalfos Fight Pot 2": "
--             (Sticks or Kokiri_Sword) and has_bombchus and Slingshot",
--         "Spirit Temple MQ Child Stalfos Fight Pot 3": "
--             (Sticks or Kokiri_Sword) and has_bombchus and Slingshot",
--         "Fairy Pot": "
--             has_bottle and (Sticks or Kokiri_Sword) and has_bombchus and Slingshot"
--     },
--     "exits": {
--         "Spirit Temple Shared": "has_bombchus and (Small_Key_Spirit_Temple, 2)"
--     }
-- },
-- {
--     "region_name": "Adult Spirit Temple",
--     "dungeon": "Spirit Temple",
--     "locations": {
--         "Spirit Temple MQ Child Climb South Chest": "(Small_Key_Spirit_Temple, 7) and has_explosives",
--         "Spirit Temple MQ Statue Room Lullaby Chest": "can_play(Zeldas_Lullaby) and can_break_crate",
--         "Spirit Temple MQ Statue Room Invisible Chest": "logic_lens_spirit_mq or can_use(Lens_of_Truth)"
--     },
--     "exits": {
--         "Spirit Temple Shared": "True",
--         "Lower Adult Spirit Temple": "
--             Mirror_Shield and
--             (can_use(Fire_Arrows) or (logic_spirit_mq_lower_adult and can_use(Dins_Fire)))",
--         "Spirit Temple Beamos Room": "(Small_Key_Spirit_Temple, 5)",
--         "Spirit Temple Boss Door": "spirit_temple_shortcuts"
--     }
-- },
-- {
--     # In this region, child reachability really means age-unknown, but with the caveat that child has
--     # as least entered the dungeon. is_adult means is_adult as usual. All child specific logic must be
--     # anded with 7 keys to convert child-as-unknown-age back to child.
--     "region_name": "Spirit Temple Shared",
--     "dungeon": "Spirit Temple",
--     "locations": {
--         "Spirit Temple MQ Child Climb North Chest": "(Small_Key_Spirit_Temple, 6) and has_explosives",
--         "Spirit Temple MQ Compass Chest": "
--             (can_use(Slingshot) and (Small_Key_Spirit_Temple, 7)) or
--             can_use(Bow) or
--             (Bow and Slingshot)",
--         "Spirit Temple MQ Sun Block Room Chest": "
--             can_play(Song_of_Time) or logic_spirit_mq_sun_block_sot or
--             is_adult",
--         "Spirit Temple Silver Gauntlets Chest": "
--             ((Small_Key_Spirit_Temple, 7) and
--                 (can_play(Song_of_Time) or logic_spirit_mq_sun_block_sot or is_adult)) or
--             ((Small_Key_Spirit_Temple, 4) and can_play(Song_of_Time) and (has_explosives or Nuts) and
--                 (logic_lens_spirit_mq or can_use(Lens_of_Truth)))",
--         "Spirit Temple MQ Child Climb Pot": "(Small_Key_Spirit_Temple, 6)",
--         "Spirit Temple MQ Central Chamber Floor Pot 1": "True",
--         "Spirit Temple MQ Central Chamber Floor Pot 2": "True",
--         "Spirit Temple MQ Central Chamber Floor Pot 3": "True",
--         "Spirit Temple MQ Central Chamber Top Left Pot (Left)": "
--             (is_adult and (Hover_Boots or logic_spirit_lobby_jump)) or
--             can_play(Song_of_Time)",
--         "Spirit Temple MQ Central Chamber Top Left Pot (Right)": "
--             (is_child and Boomerang and (Kokiri_Sword or Sticks) and (Small_Key_Spirit_Temple, 7)) or
--             (is_adult and (Hover_Boots or logic_spirit_lobby_jump)) or
--             can_play(Song_of_Time) or
--             (Boomerang and (Kokiri_Sword or Sticks) and (Hover_Boots or logic_spirit_lobby_jump))",
--         "Spirit Temple MQ Sun Block Room Pot 1": "
--             can_play(Song_of_Time) or logic_spirit_mq_sun_block_sot or
--             is_adult",
--         "Spirit Temple MQ Sun Block Room Pot 2": "
--             can_play(Song_of_Time) or logic_spirit_mq_sun_block_sot or
--             is_adult",
--         "Spirit Temple MQ Central Chamber Crate 1": "can_break_crate",
--         "Spirit Temple MQ Central Chamber Crate 2": "can_break_crate",
--         "Spirit Temple MQ GS Sun Block Room": "
--             (logic_spirit_mq_sun_block_gs and Boomerang and
--                 (can_play(Song_of_Time) or logic_spirit_mq_sun_block_sot)) or
--             is_adult"
--     },
--     "exits": {
--         "Desert Colossus": "
--             ((Small_Key_Spirit_Temple, 7) and
--                 (can_play(Song_of_Time) or logic_spirit_mq_sun_block_sot or is_adult)) or
--             ((Small_Key_Spirit_Temple, 4) and can_play(Song_of_Time) and (has_explosives or Nuts) and
--                 (logic_lens_spirit_mq or can_use(Lens_of_Truth)) and is_adult)"
--     }
-- },
-- {
--     "region_name": "Lower Adult Spirit Temple",
--     "dungeon": "Spirit Temple",
--     "locations": {
--         "Spirit Temple MQ Leever Room Chest": "True",
--         "Spirit Temple MQ Symphony Room Chest": "
--             (Small_Key_Spirit_Temple, 7) and Megaton_Hammer and Ocarina and
--             Song_of_Time and Eponas_Song and Suns_Song and Song_of_Storms and Zeldas_Lullaby",
--         "Spirit Temple MQ Entrance Front Right Chest": "Megaton_Hammer",
--         "Spirit Temple MQ Below 4 Wallmasters Pot 1": "True",
--         "Spirit Temple MQ Below 4 Wallmasters Pot 2": "True",
--         "Spirit Temple MQ GS Leever Room": "True",
--         "Spirit Temple MQ GS Symphony Room": "
--             (Small_Key_Spirit_Temple, 7) and Megaton_Hammer and Ocarina and
--             Song_of_Time and Eponas_Song and Suns_Song and Song_of_Storms and Zeldas_Lullaby"
--     }
-- },
-- {
--     "region_name": "Spirit Temple Beamos Room",
--     "dungeon": "Spirit Temple",
--     "locations": {
--         "Spirit Temple MQ Beamos Room Chest": "has_explosives"
--     },
--     "exits": {
--         "Spirit Temple Beyond Beamos Room": "can_play(Song_of_Time) and (has_explosives or Nuts)",
--         "Spirit Temple Shifting Wall": "(Small_Key_Spirit_Temple, 6)"
--     }
-- },
-- {
--     "region_name": "Spirit Temple Beyond Beamos Room",
--     "dungeon": "Spirit Temple",
--     "locations": {
--         "Spirit Temple MQ Chest Switch Chest": "True",
--         "Spirit Temple MQ Boss Key Chest": "Mirror_Shield",
--         "Spirit Temple Mirror Shield Chest": "logic_lens_spirit_mq or can_use(Lens_of_Truth)"
--     }
-- },
-- {
--     "region_name": "Spirit Temple Shifting Wall",
--     "dungeon": "Spirit Temple",
--     "locations": {
--         "Spirit Temple MQ Shifting Wall Pot 1": "True",
--         "Spirit Temple MQ Shifting Wall Pot 2": "True",
--         "Spirit Temple MQ After Shifting Wall Room Pot 1": "True",
--         "Spirit Temple MQ After Shifting Wall Room Pot 2": "True",
--         "Spirit Temple MQ GS Nine Thrones Room West": "(Small_Key_Spirit_Temple, 7)",
--         "Spirit Temple MQ GS Nine Thrones Room North": "(Small_Key_Spirit_Temple, 7)"
--     },
--     "exits": {
--         "Spirit Temple Big Mirror Room": "can_play(Zeldas_Lullaby)"
--     }
-- },
-- {
--     "region_name": "Spirit Temple Big Mirror Room",
--     "dungeon": "Spirit Temple",
--     "locations": {
--         "Spirit Temple MQ Big Mirror Pot 1": "True",
--         "Spirit Temple MQ Big Mirror Pot 2": "True",
--         "Spirit Temple MQ Big Mirror Pot 3": "True",
--         "Spirit Temple MQ Big Mirror Pot 4": "True",
--         "Spirit Temple MQ Big Mirror Crate 1": "can_break_crate",
--         "Spirit Temple MQ Big Mirror Crate 2": "can_break_crate",
--         "Spirit Temple MQ Big Mirror Crate 3": "can_break_crate",
--         "Spirit Temple MQ Big Mirror Crate 4": "can_break_crate"
--     },
--     "exits": {
--         "Spirit Temple Mirror Puzzle": "Megaton_Hammer"
--     }
-- },
-- {
--     "region_name": "Spirit Temple Mirror Puzzle",
--     "dungeon": "Spirit Temple",
--     "locations": {
--         "Spirit Temple MQ Mirror Puzzle Invisible Chest": "logic_lens_spirit_mq or can_use(Lens_of_Truth)"
--     },
--     "exits": {
--         "Spirit Temple Boss Door": "Mirror_Shield"
--     }
-- }