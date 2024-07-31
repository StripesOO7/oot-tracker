-- Child_Graveyard = OOTLocation.new("Child_Graveyard")
-- Child_Graveyard_Shield_Grave = OOTLocation.new("Child_Graveyard_Shield_Grave")
-- Child_Graveyard_Heart_Piece_Grave = OOTLocation.new("Child_Graveyard_Heart_Piece_Grave")
-- Child_Graveyard_Royal_Familys_Tomb = OOTLocation.new("Child_Graveyard_Royal_Familys_Tomb")
-- Child_Graveyard_Dampes_Grave = OOTLocation.new("Child_Graveyard_Dampes_Grave")
-- Child_Graveyard_Dampes_House = OOTLocation.new("Child_Graveyard_Dampes_House")
-- Child_Graveyard_Warp_Pad_Region = OOTLocation.new("Child_Graveyard_Warp_Pad_Region")

-- Adult_Graveyard = OOTLocation.new("Adult_Graveyard")
-- Adult_Graveyard_Shield_Grave = OOTLocation.new("Adult_Graveyard_Shield_Grave")
-- Adult_Graveyard_Heart_Piece_Grave = OOTLocation.new("Adult_Graveyard_Heart_Piece_Grave")
-- Adult_Graveyard_Royal_Familys_Tomb = OOTLocation.new("Adult_Graveyard_Royal_Familys_Tomb")
-- Adult_Graveyard_Dampes_Grave = OOTLocation.new("Adult_Graveyard_Dampes_Grave")
-- Adult_Graveyard_Dampes_House = OOTLocation.new("Adult_Graveyard_Dampes_House")
-- Adult_Graveyard_Warp_Pad_Region = OOTLocation.new("Adult_Graveyard_Warp_Pad_Region")

Child_Graveyard:connect_one_way("Child Graveyard Freestanding PoH", function() 
    return Any(
        All(
            false,
            Can_break_crate("child"),
            Any(
                Can_use("Longshot", "child"),
                Can_plant_bean()
            )
        ),
        All(
            Has("logic_graveyard_poh"),
            Can_use("Boomerang", "child")
        )
    )
end)
Child_Graveyard:connect_one_way("Child Graveyard Dampe Gravedigging Tour")
Child_Graveyard:connect_one_way("Child Graveyard GS Wall", function()
    return All(
        Can_use("Boomerang", "child")
        -- at_night
    )
end)
Child_Graveyard:connect_one_way("Child Graveyard GS Bean Patch", function() 
    return All(
        Can_child_attack("child"),
        Can_plant_bugs("child")
    )
end)
-- Child_Graveyard:connect_one_way()

Adult_Graveyard:connect_one_way("Adult Graveyard Freestanding PoH", function() 
    return Any(
        All(
            true,
            Can_break_crate("adult"),
            Any(
                Can_use("Longshot", "adult"),
                Can_plant_bean(),
                CanReach(Child_Graveyard)
            )
        ),
        All(
            Has("logic_graveyard_poh"),
            Can_use("Boomerang", "adult")
        )
    )
end)
Adult_Graveyard:connect_one_way("Adult Graveyard Dampe Gravedigging Tour", function() return false end)
Adult_Graveyard:connect_one_way("Adult Graveyard GS Wall", function()
    return All(
        Can_use("Boomerang", "adult")
        -- at_night
    )
end)
Adult_Graveyard:connect_one_way("Adult Graveyard GS Bean Patch", function() 
    return All(
        Can_child_attack("adult"),
        Can_plant_bugs("adult")
    )
end)
-- Adult_Graveyard:connect_one_way()

Child_Graveyard:connect_one_way_entrance("Child_Graveyard_Shield_Grave", Child_Graveyard_Shield_Grave ,function() return true end)-- at night
Child_Graveyard:connect_one_way_entrance("Child_Graveyard_Royal_Familys_Tomb", Child_Graveyard_Royal_Familys_Tomb,function() return Can_play("ZeldasLullaby") end)
Child_Graveyard:connect_one_way_entrance("Child_Graveyard_Heart_Piece_Grave", Child_Graveyard_Heart_Piece_Grave,function() return true end) -- at night
Child_Graveyard:connect_one_way_entrance("Child_Graveyard_Dampes_Grave", Child_Graveyard_Dampes_Grave, function() return false end)
Child_Graveyard:connect_one_way_entrance("Child_Graveyard_Dampes_House", Child_Graveyard_Dampes_House, function() return true end)-- dampe time
Child_Graveyard:connect_one_way_entrance("Child_Kakariko_Village", Child_Kakariko_Village)

Adult_Graveyard:connect_one_way_entrance("Adult_Graveyard_Shield_Grave", Adult_Graveyard_Shield_Grave)
Adult_Graveyard:connect_one_way_entrance("Adult_Graveyard_Royal_Familys_Tomb", Adult_Graveyard_Royal_Familys_Tomb,function() return Can_play("ZeldasLullaby") end)
Adult_Graveyard:connect_one_way_entrance("Adult_Graveyard_Heart_Piece_Grave", Adult_Graveyard_Heart_Piece_Grave)
Adult_Graveyard:connect_one_way_entrance("Adult_Graveyard_Dampes_Grave", Adult_Graveyard_Dampes_Grave)
Adult_Graveyard:connect_one_way_entrance("Adult_Graveyard_Dampes_House", Adult_Graveyard_Dampes_House)
Adult_Graveyard:connect_one_way_entrance("Adult_Kakariko_Village", Adult_Kakariko_Village)


Child_Graveyard_Shield_Grave:connect_one_way("Child Graveyard Shield Grave Chest")
Adult_Graveyard_Shield_Grave:connect_one_way("Adult Graveyard Shield Grave Chest")


Child_Graveyard_Shield_Grave:connect_one_way_entrance("Child Graveyard", Child_Graveyard)
Adult_Graveyard_Shield_Grave:connect_one_way_entrance("Adult Graveyard", Adult_Graveyard)

Child_Graveyard_Heart_Piece_Grave:connect_one_way("Child Graveyard Heart Piece Grave Chest", function() return Can_play("SunsSong") end)
Adult_Graveyard_Heart_Piece_Grave:connect_one_way("Adult Graveyard Heart Piece Grave Chest", function() return Can_play("SunsSong") end)

Child_Graveyard_Heart_Piece_Grave:connect_one_way_entrance("Child Graveyard", Child_Graveyard)
Adult_Graveyard_Heart_Piece_Grave:connect_one_way_entrance("Adult Graveyard", Adult_Graveyard)

Child_Graveyard_Royal_Familys_Tomb:connect_one_way("Child Graveyard Royal Familys Tomb Chest", function() return Has_fire_source("child") end)
Child_Graveyard_Royal_Familys_Tomb:connect_one_way("Child Song from Royal Familys Tomb", function()
    return Any(
        Can_use("Boomerang", "child"),
        Has_explosives(),
        Can_use("DekuStick", "child"),
        Can_use("Slingshot", "child"),
        Can_use("KokiriSword", "child")
    )
end)

Adult_Graveyard_Royal_Familys_Tomb:connect_one_way("Adult Graveyard Royal Familys Tomb Chest", function() return Has_fire_source("adult") end)
Adult_Graveyard_Royal_Familys_Tomb:connect_one_way("Adult Song from Royal Familys Tomb", function() return true end)

Child_Graveyard_Royal_Familys_Tomb:connect_one_way_entrance("Child Graveyard", Child_Graveyard)
Adult_Graveyard_Royal_Familys_Tomb:connect_one_way_entrance("Adult Graveyard", Adult_Graveyard)

Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Race Hookshot Chest")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Race Freestanding PoH", function() return Has("logic_child_dampe_race_poh") end)
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Race Rupee 1")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Race Rupee 2")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Race Rupee 3")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Race Rupee 4")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Race Rupee 5")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Race Rupee 6")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Race Rupee 7")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Race Rupee 8")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Pot 1")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Pot 2")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Pot 3")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Pot 4")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Pot 5")
Child_Graveyard_Dampes_Grave:connect_one_way("Child Graveyard Dampe Pot 6")
-- Child_Graveyard_Dampes_Grave:connect_one_way("Child Nut Pot")

Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Race Hookshot Chest")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Race Freestanding PoH")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Race Rupee 1")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Race Rupee 2")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Race Rupee 3")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Race Rupee 4")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Race Rupee 5")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Race Rupee 6")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Race Rupee 7")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Race Rupee 8")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Pot 1")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Pot 2")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Pot 3")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Pot 4")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Pot 5")
Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Graveyard Dampe Pot 6")
-- Adult_Graveyard_Dampes_Grave:connect_one_way("Adult Nut Pot")

Child_Graveyard_Dampes_Grave:connect_one_way_entrance("Child Graveyard", Child_Graveyard)
Child_Graveyard_Dampes_Grave:connect_one_way_entrance("Child Kakariko Windmill", Child_Kak_Windmill, function() return false end)

Adult_Graveyard_Dampes_Grave:connect_one_way_entrance("Adult Graveyard", Adult_Graveyard)
Adult_Graveyard_Dampes_Grave:connect_one_way_entrance("Adult Kakariko Windmill", Adult_Kak_Windmill, function() return Can_play("SongofTime") end)

Child_Graveyard_Dampes_House:connect_one_way("Child Dampe Diary Hint", function() return false end)
Adult_Graveyard_Dampes_House:connect_one_way("Adult Dampe Diary Hint")

Child_Graveyard_Dampes_House:connect_one_way_entrance("Child Graveyard", Child_Graveyard)
Adult_Graveyard_Dampes_House:connect_one_way_entrance("Adult Graveyard", Adult_Graveyard)

-- Child_Graveyard_Warp_Pad_Region:connect_one_way("Child Graveyard Gossip Stone")
-- Child_Graveyard_Warp_Pad_Region:connect_one_way("Child Gossip Stone Fairy")

-- Adult_Graveyard_Warp_Pad_Region:connect_one_way("Adult Graveyard Gossip Stone")
-- Adult_Graveyard_Warp_Pad_Region:connect_one_way("Adult Gossip Stone Fairy")

Child_Graveyard_Warp_Pad_Region:connect_one_way_entrance("Child Graveyard", Child_Graveyard)
Child_Graveyard_Warp_Pad_Region:connect_one_way_entrance("Child Shadow Temple Entryway", Child_Shadow_Temple_Entryway, function()
    return Any(
        Can_use("DinsFire", "child"),
        All(
            Has("logic_shadow_fire_arrow_entry"),
            Can_use("FireArrows", "child")
        )
    )
end)

Adult_Graveyard_Warp_Pad_Region:connect_one_way_entrance("Adult Graveyard", Adult_Graveyard)
Adult_Graveyard_Warp_Pad_Region:connect_one_way_entrance("Adult Shadow Temple Entryway", Adult_Shadow_Temple_Entryway, function()
    return Any(
        Can_use("DinsFire", "adult"),
        All(
            Has("logic_shadow_fire_arrow_entry"),
            Can_use("FireArrows", "adult")
        )
    )
end)

-- -- {
--     "region_name": "Graveyard",
--     "scene": "Graveyard",
--     "hint": "GRAVEYARD",
--     "locations": {
--         "Graveyard Freestanding PoH": "
--             (is_adult and can_break_crate and (here(can_plant_bean) or Longshot)) or
--             (logic_graveyard_poh and can_use(Boomerang))",
--         "Graveyard Dampe Gravedigging Tour": "is_child and at_dampe_time",
--         "Graveyard GS Wall": "can_use(Boomerang) and at_night",
--         "Graveyard GS Bean Patch": "can_plant_bugs and can_child_attack",
--         "Butterfly Fairy": "can_use(Sticks) and at_day and has_bottle",
--         "Bean Plant Fairy": "is_child and can_plant_bean and can_play(Song_of_Storms) and has_bottle",
--         "Bug Rock": "has_bottle"
--     },
--     "exits": {
--         "Graveyard Shield Grave": "is_adult or at_night",
--         "Graveyard Royal Familys Tomb": "can_play(Zeldas_Lullaby)",
--         "Graveyard Heart Piece Grave": "is_adult or at_night",
--         "Graveyard Dampes Grave": "is_adult",
--         "Graveyard Dampes House": "is_adult or at_dampe_time",
--         "Kakariko Village": "True"
--     }
-- },
-- {
--     "region_name": "Graveyard Shield Grave",
--     "scene": "Graveyard Shield Grave",
--     "locations": {
--         "Graveyard Shield Grave Chest": "True",
--         "Free Fairies": "can_blast_or_smash and has_bottle"
--     },
--     "exits": {
--         "Graveyard": "True"
--     }
-- },
-- {
--     "region_name": "Graveyard Heart Piece Grave",
--     "scene": "Graveyard Heart Piece Grave",
--     "locations": {
--         "Graveyard Heart Piece Grave Chest": "can_play(Suns_Song)"
--     },
--     "exits": {
--         "Graveyard": "True"
--     }
-- },
-- {
--     "region_name": "Graveyard Royal Familys Tomb",
--     "scene": "Graveyard Royal Familys Tomb",
--     "locations": {
--         "Graveyard Royal Familys Tomb Chest": "has_fire_source",
--         "Song from Royal Familys Tomb": "
--             is_adult or Slingshot or Boomerang or Sticks or has_explosives or Kokiri_Sword"
--     },
--     "exits": {
--         "Graveyard": "True"
--     }
-- },
-- {
--     "region_name": "Graveyard Dampes Grave",
--     "scene": "Windmill and Dampes Grave",
--     "events": {
--         "Dampes Windmill Access": "is_adult and can_play(Song_of_Time)"
--     },
--     "locations": {
--         "Graveyard Dampe Race Hookshot Chest": "True",
--         "Graveyard Dampe Race Freestanding PoH": "is_adult or logic_child_dampe_race_poh",
--         "Graveyard Dampe Race Rupee 1": "True",
--         "Graveyard Dampe Race Rupee 2": "True",
--         "Graveyard Dampe Race Rupee 3": "True",
--         "Graveyard Dampe Race Rupee 4": "True",
--         "Graveyard Dampe Race Rupee 5": "True",
--         "Graveyard Dampe Race Rupee 6": "True",
--         "Graveyard Dampe Race Rupee 7": "True",
--         "Graveyard Dampe Race Rupee 8": "True",
--         "Graveyard Dampe Pot 1": "True",
--         "Graveyard Dampe Pot 2": "True",
--         "Graveyard Dampe Pot 3": "True",
--         "Graveyard Dampe Pot 4": "True",
--         "Graveyard Dampe Pot 5": "True",
--         "Graveyard Dampe Pot 6": "True",
--         "Nut Pot": "True"
--     },
--     "exits": {
--         "Graveyard": "True",
--         "Kak Windmill": "is_adult and can_play(Song_of_Time)"
--     }
-- },
-- {
--     "region_name": "Graveyard Dampes House",
--     "scene": "Graveyard Dampes House",
--     "locations": {
--         "Dampe Diary Hint": "is_adult"
--     },
--     "exits": {
--         "Graveyard": "True"
--     }
-- },
-- {
--     "region_name": "Graveyard Warp Pad Region",
--     "scene": "Graveyard",
--     "hint": "GRAVEYARD",
--     "locations": {
--         "Graveyard Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy_without_suns and has_bottle"
--     },
--     "exits": {
--         "Graveyard": "True",
--         "Shadow Temple Entryway": "
--             can_use(Dins_Fire) or (logic_shadow_fire_arrow_entry and can_use(Fire_Arrows))"
--     }
-- },