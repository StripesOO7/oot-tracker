-- Child_Kakariko_Village = OOTLocation.new("Child_Kakariko_Village")
-- Child_Kak_Impas_Ledge = OOTLocation.new("Child_Kak_Impas_Ledge")
-- Child_Kak_Impas_Rooftop = OOTLocation.new("Child_Kak_Impas_Rooftop")
-- Child_Kak_Odd_Medicine_Rooftop = OOTLocation.new("Child_Kak_Odd_Medicine_Rooftop")
-- Child_Kak_Backyard = OOTLocation.new("Child_Kak_Backyard")
-- Child_Kak_Carpenter_Boss_House = OOTLocation.new("Child_Kak_Carpenter_Boss_House")
-- Child_Kak_House_of_Skulltula = OOTLocation.new("Child_Kak_House_of_Skulltula")
-- Child_Kak_Impas_House = OOTLocation.new("Child_Kak_Impas_House")
-- Child_Kak_Impas_House_Back = OOTLocation.new("Child_Kak_Impas_House_Back")
-- Child_Kak_Impas_House_Near_Cow = OOTLocation.new("Child_Kak_Impas_House_Near_Cow")
-- Child_Kak_Windmill = OOTLocation.new("Child_Kak_Windmill")
-- Child_Kak_Bazaar = OOTLocation.new("Child_Kak_Bazaar")
-- Child_Kak_Shooting_Gallery = OOTLocation.new("Child_Kak_Shooting_Gallery")
-- Child_Kak_Potion_Shop_Front = OOTLocation.new("Child_Kak_Potion_Shop_Front")
-- Child_Kak_Potion_Shop_Back = OOTLocation.new("Child_Kak_Potion_Shop_Back")
-- Child_Kak_Odd_Medicine_Building = OOTLocation.new("Child_Kak_Odd_Medicine_Building")
-- Child_Kak_Behind_Gate = OOTLocation.new("Child_Kak_Behind_Gate")
-- Child_Kak_Redead_Grotto = OOTLocation.new("Child_Kak_Redead_Grotto")
-- Child_Kak_Open_Grotto = OOTLocation.new("Child_Kak_Open_Grotto")
-- Child_Kak_Impas_House_Cow = OOTLocation.new("Child_Kak_Impas_House_Cow")

-- Adult_Kakariko_Village = OOTLocation.new("Adult_Kakariko_Village")
-- Adult_Kak_Impas_Ledge = OOTLocation.new("Adult_Kak_Impas_Ledge")
-- Adult_Kak_Impas_Rooftop = OOTLocation.new("Adult_Kak_Impas_Rooftop")
-- Adult_Kak_Odd_Medicine_Rooftop = OOTLocation.new("Adult_Kak_Odd_Medicine_Rooftop")
-- Adult_Kak_Backyard = OOTLocation.new("Adult_Kak_Backyard")
-- Adult_Kak_Carpenter_Boss_House = OOTLocation.new("Adult_Kak_Carpenter_Boss_House")
-- Adult_Kak_House_of_Skulltula = OOTLocation.new("Adult_Kak_House_of_Skulltula")
-- Adult_Kak_Impas_House = OOTLocation.new("Adult_Kak_Impas_House")
-- Adult_Kak_Impas_House_Back = OOTLocation.new("Adult_Kak_Impas_House_Back")
-- Adult_Kak_Impas_House_Near_Cow = OOTLocation.new("Adult_Kak_Impas_House_Near_Cow")
-- Adult_Kak_Windmill = OOTLocation.new("Adult_Kak_Windmill")
-- Adult_Kak_Bazaar = OOTLocation.new("Adult_Kak_Bazaar")
-- Adult_Kak_Shooting_Gallery = OOTLocation.new("Adult_Kak_Shooting_Gallery")
-- Adult_Kak_Potion_Shop_Front = OOTLocation.new("Adult_Kak_Potion_Shop_Front")
-- Adult_Kak_Potion_Shop_Back = OOTLocation.new("Adult_Kak_Potion_Shop_Back")
-- Adult_Kak_Odd_Medicine_Building = OOTLocation.new("Adult_Kak_Odd_Medicine_Building")
-- Adult_Kak_Behind_Gate = OOTLocation.new("Adult_Kak_Behind_Gate")
-- Adult_Kak_Redead_Grotto = OOTLocation.new("Adult_Kak_Redead_Grotto")
-- Adult_Kak_Open_Grotto = OOTLocation.new("Adult_Kak_Open_Grotto")
-- Adult_Kak_Impas_House_Cow = OOTLocation.new("Adult_Kak_Impas_House_Cow")

Child_Kakariko_Village:connect_one_way("Child Sheik in Kakariko", function() return false end)
Child_Kakariko_Village:connect_one_way("Child Kak Anju as Adult", function() return false end)
Child_Kakariko_Village:connect_one_way("Child Kak Anju as Child", function() 
    return Any(
        Can_break_crate("child"),
        Tracker:FindObjectForCode("chicken_count").AcquiredCount < 7
    )
end)--at_day
Child_Kakariko_Village:connect_one_way("Child Kak Near Guards House Pot 1")
Child_Kakariko_Village:connect_one_way("Child Kak Near Guards House Pot 2")
Child_Kakariko_Village:connect_one_way("Child Kak Near Guards House Pot 3")
Child_Kakariko_Village:connect_one_way("Child Kak Near Potion Shop Pot 1")
Child_Kakariko_Village:connect_one_way("Child Kak Near Potion Shop Pot 2")
Child_Kakariko_Village:connect_one_way("Child Kak Near Potion Shop Pot 3")
Child_Kakariko_Village:connect_one_way("Child Kak Near Impas House Pot 1")
Child_Kakariko_Village:connect_one_way("Child Kak Near Impas House Pot 2")
Child_Kakariko_Village:connect_one_way("Child Kak Near Impas House Pot 3")
Child_Kakariko_Village:connect_one_way("Child Kak Adult Arrows Crate", function() return false end)
Child_Kakariko_Village:connect_one_way("Child Kak GS House Under Construction")--at_night
Child_Kakariko_Village:connect_one_way("Child Kak GS Skulltula House")--at_night
Child_Kakariko_Village:connect_one_way("Child Kak GS Near Gate Guard")--at_night
Child_Kakariko_Village:connect_one_way("Child Kak GS Tree", function() return Can_bonk("child") end)
Child_Kakariko_Village:connect_one_way("Child Kak GS Watchtower", function() 
    return Any(
        Can_use("Slingshot", "child"),
        Has_bombchus(),
        All(
            Has("logic_kakariko_tower_gs"),
            Any(
                Can_use("DekuStick", "child"),
                Can_use("KokiriSword", "child")
            )
        )
    )
end)--at_night

Adult_Kakariko_Village:connect_one_way("Adult Sheik in Kakariko", function() 
    return All(
        Has("forest_medallion"),
        Has("fire_medallion"),
        Has("water_medallion")
    ) 
end)
Adult_Kakariko_Village:connect_one_way("Adult Kak Anju as Adult")--at_day
Adult_Kakariko_Village:connect_one_way("Adult Kak Anju as Child", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak Near Guards House Pot 1", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak Near Guards House Pot 2", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak Near Guards House Pot 3", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak Near Potion Shop Pot 1", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak Near Potion Shop Pot 2", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak Near Potion Shop Pot 3", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak Near Impas House Pot 1", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak Near Impas House Pot 2", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak Near Impas House Pot 3", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak Adult Arrows Crate", function() return Can_break_crate("adult") end)
Adult_Kakariko_Village:connect_one_way("Adult Kak GS House Under Construction", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak GS Skulltula House", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak GS Near Gate Guard", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak GS Tree", function() return false end)
Adult_Kakariko_Village:connect_one_way("Adult Kak GS Watchtower", function() return false end)

Child_Kakariko_Village:connect_one_way_entrance("Child Hyrule Field", Child_Hyrule_Fields)
Child_Kakariko_Village:connect_one_way_entrance("Child Kak Carpenter Boss House", Child_Kak_Carpenter_Boss_House)
Child_Kakariko_Village:connect_one_way_entrance("Child Kak House of Skulltula", Child_Kak_House_of_Skulltula)
Child_Kakariko_Village:connect_one_way_entrance("Child Kak Impas House", Child_Kak_Impas_House_Back)
Child_Kakariko_Village:connect_one_way_entrance("Child Kak Windmill", Child_Kak_Windmill)
Child_Kakariko_Village:connect_one_way_entrance("Child Kak Bazaar", Child_Kak_Bazaar, function() return false end)--at_day
Child_Kakariko_Village:connect_one_way_entrance("Child Kak Shooting Gallery", Child_Kak_Shooting_Gallery, function() return false end)--at_day
Child_Kakariko_Village:connect_one_way_entrance("Child Bottom of the Well", Child_Bottom_of_the_Well, function() 
    return All(
        All(
            true, --is child
            Can_play("SongofStorms")
        ),
        Any(
            true, -- child
            Has("shuffle_dungeon_entrances")
        )--child
    )
end)
Child_Kakariko_Village:connect_one_way_entrance("Child Kak Potion Shop Front", Child_Kak_Potion_Shop_Front)--at_day
Child_Kakariko_Village:connect_one_way_entrance("Child Kak Redead Grotto", Child_Kak_Redead_Grotto, function() return Can_open_bomb_grotto("child") end)
Child_Kakariko_Village:connect_one_way_entrance("Child Kak Impas Ledge", Child_Kak_Impas_Ledge, function() 
    return Any(
        All(
            --at_day,
            true
        ),
        All(
            false,
            Has("logic_visible_collisions")
        )
    )
end)--at_day
Child_Kakariko_Village:connect_one_way_entrance("Child Kak Impas Rooftop", Child_Kak_Impas_Rooftop, function() 
    return Any(
        Can_use("Hookshot", "child"),
        All(
            Has("logic_kakariko_rooftop_gs"),
            Can_use("HoverBoots", "child")
        )
    )
end)
Child_Kakariko_Village:connect_one_way_entrance("Child Kak Odd Medicine Rooftop", Child_Kak_Odd_Medicine_Rooftop, function() 
    return Any(
        Can_use("Hookshot", "child"),
        All(
            Has("logic_man_on_roof"),
            Any(
                false,
                true,-- at_day,
                Can_use("Slingshot", "child"),
                Has_bombchus(),
                All(
                    Has("logic_kakariko_tower_gs"),
                    Any(
                        Can_use("DekuStick", "child"),
                        Can_use("KokiriSword", "child")
                    )
                )
            )
        )
    )
end)--at_day
Child_Kakariko_Village:connect_one_way_entrance("Child Kak Backyard", Child_Kak_Backyard, function() return true end)--at_day
Child_Kakariko_Village:connect_one_way_entrance("Child Graveyard", Child_Graveyard)
Child_Kakariko_Village:connect_one_way_entrance("Child Kak Behind Gate", Child_Kak_Behind_Gate, function() 
    return All(
        Child_Kakariko_Village.accessibility_level >5, 
        All(
            true, 
            Any(
                Tracker:ProviderCountForCode("ZeldasLetter") > 0, 
                Tracker:FindObjectForCode("open_kakariko").CurrentStage == 0 
            )
        )
    )
end)

Adult_Kakariko_Village:connect_one_way_entrance("Adult Hyrule Field", Adult_Hyrule_Fields)
Adult_Kakariko_Village:connect_one_way_entrance("Adult Kak Carpenter Boss House", Adult_Kak_Carpenter_Boss_House)
Adult_Kakariko_Village:connect_one_way_entrance("Adult Kak House of Skulltula", Adult_Kak_House_of_Skulltula)
Adult_Kakariko_Village:connect_one_way_entrance("Adult Kak Impas House", Adult_Kak_Impas_House_Back)
Adult_Kakariko_Village:connect_one_way_entrance("Adult Kak Windmill", Adult_Kak_Windmill)
Adult_Kakariko_Village:connect_one_way_entrance("Adult Kak Bazaar", Adult_Kak_Bazaar)--at_day
Adult_Kakariko_Village:connect_one_way_entrance("Adult Kak Shooting Gallery", Adult_Kak_Shooting_Gallery, function() return true end)--at_day
Adult_Kakariko_Village:connect_one_way_entrance("Adult Bottom of the Well", Adult_Bottom_of_the_Well, function() 
    return All(
        Can_play("SongofStorms"),
        Any(
            false,
            Has("shuffle_dungeon_entrances")
        )--child
    )
end)
Adult_Kakariko_Village:connect_one_way_entrance("Adult Kak Potion Shop Front", Adult_Kak_Potion_Shop_Front, function() return false end)--at_day
Adult_Kakariko_Village:connect_one_way_entrance("Adult Kak Redead Grotto", Adult_Kak_Redead_Grotto, function() return Can_open_bomb_grotto("adult") end)
Adult_Kakariko_Village:connect_one_way_entrance("Adult Kak Impas Ledge", Adult_Kak_Impas_Ledge, function() 
    return Any(
        All(
            --at_day,
            false --child
        ),
        All(
            true, --adult
            Has("logic_visible_collisions")
        )
    )
end)--at_day
Adult_Kakariko_Village:connect_one_way_entrance("Adult Kak Impas Rooftop", Adult_Kak_Impas_Rooftop, function() 
    return Any(
        Can_use("Hookshot", "adult"),
        All(
            Has("logic_kakariko_rooftop_gs"),
            Can_use("HoverBoots", "adult")
        )
    )
end)
Adult_Kakariko_Village:connect_one_way_entrance("Adult Kak Odd Medicine Rooftop", Adult_Kak_Odd_Medicine_Rooftop, function() 
    return Any(
        Can_use("Hookshot", "adult"),
        All(
            Has("logic_man_on_roof"),
            Any(
                true,
                -- at_day,
                Can_use("Slingshot", "adult"),
                Has_bombchus(),
                All(
                    Has("logic_kakariko_tower_gs"),
                    Any(
                        Can_use("DekuStick", "adult"),
                        Can_use("KokiriSword", "adult")
                    )
                )
            )
        )
    )
end)--at_day
Adult_Kakariko_Village:connect_one_way_entrance("Adult Kak Backyard", Adult_Kak_Backyard)--at_day
Adult_Kakariko_Village:connect_one_way_entrance("Adult Graveyard", Adult_Graveyard)
Adult_Kakariko_Village:connect_one_way_entrance("Adult Kak Behind Gate", Adult_Kak_Behind_Gate)--'Kakariko Village Gate Open'

-- Child_Kak_Impas_Ledge:connect_one_way()
-- Adult_Kak_Impas_Ledge:connect_one_way()

Child_Kak_Impas_Ledge:connect_one_way_entrance("Child Kak Impas House Back", Child_Kak_Impas_House_Back)
Child_Kak_Impas_Ledge:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)

Adult_Kak_Impas_Ledge:connect_one_way_entrance("Adult Kak Impas House Back", Adult_Kak_Impas_House_Back)
Adult_Kak_Impas_Ledge:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)

Child_Kak_Impas_Rooftop:connect_one_way("Child Kak GS Above Impas House", function() return false end)
Adult_Kak_Impas_Rooftop:connect_one_way("Adult Kak GS Above Impas House")

Child_Kak_Impas_Rooftop:connect_one_way_entrance("Child Kak Impas Ledge", Child_Kak_Impas_Ledge)
Child_Kak_Impas_Rooftop:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)

Adult_Kak_Impas_Rooftop:connect_one_way_entrance("Adult Kak Impas Ledge", Adult_Kak_Impas_Ledge)
Adult_Kak_Impas_Rooftop:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)

Child_Kak_Odd_Medicine_Rooftop:connect_one_way("Child Kak Man on Roof")
Adult_Kak_Odd_Medicine_Rooftop:connect_one_way("Adult Kak Man on Roof")

Child_Kak_Odd_Medicine_Rooftop:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)
Child_Kak_Odd_Medicine_Rooftop:connect_one_way_entrance("Child Kak Backyard", Child_Kak_Backyard)

Adult_Kak_Odd_Medicine_Rooftop:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)
Adult_Kak_Odd_Medicine_Rooftop:connect_one_way_entrance("Adult Kak Backyard", Adult_Kak_Backyard)

Child_Kak_Backyard:connect_one_way("Child Kak Near Odd Medicine Building Pot 1")
Child_Kak_Backyard:connect_one_way("Child Kak Near Odd Medicine Building Pot 2")
Child_Kak_Backyard:connect_one_way("Child Kak Adult Red Rupee Crate", function() 
    return All(
        false, 
        Can_break_crate("child")
    ) 
end)

Adult_Kak_Backyard:connect_one_way("Adult Kak Near Odd Medicine Building Pot 1", function() return false end)
Adult_Kak_Backyard:connect_one_way("Adult Kak Near Odd Medicine Building Pot 2", function() return false end)
Adult_Kak_Backyard:connect_one_way("Adult Kak Adult Red Rupee Crate", function() 
    return All(
        true, 
        Can_break_crate("adult")
    ) 
end)


Child_Kak_Backyard:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)
Child_Kak_Backyard:connect_one_way_entrance("Child Kak Open Grotto", Child_Kak_Open_Grotto)
Child_Kak_Backyard:connect_one_way_entrance("Child Kak Odd Medicine Building", Child_Kak_Odd_Medicine_Building, function() return false end)
Child_Kak_Backyard:connect_one_way_entrance("Child Kak Potion Shop Back", Child_Kak_Potion_Shop_Back, function() return false end)

Adult_Kak_Backyard:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)
Adult_Kak_Backyard:connect_one_way_entrance("Adult Kak Open Grotto", Adult_Kak_Open_Grotto)
Adult_Kak_Backyard:connect_one_way_entrance("Adult Kak Odd Medicine Building", Adult_Kak_Odd_Medicine_Building)
Adult_Kak_Backyard:connect_one_way_entrance("Adult Kak Potion Shop Back", Adult_Kak_Potion_Shop_Back)--at_day


Child_Kak_Carpenter_Boss_House:connect_one_way("Child Wake Up Adult Talon", function() return false end)
Adult_Kak_Carpenter_Boss_House:connect_one_way("Adult Wake Up Adult Talon", function() 
    return Any(
        Has("PocketEgg"),
        Has("PocketCucco")
    )
end)

Child_Kak_Carpenter_Boss_House:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)
Adult_Kak_Carpenter_Boss_House:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)

Child_Kak_House_of_Skulltula:connect_one_way("Child Kak 10 Gold Skulltula Reward", function() return Has("GoldSkulltulaToken", 10, 10) end)
Child_Kak_House_of_Skulltula:connect_one_way("Child Kak 20 Gold Skulltula Reward", function() return Has("GoldSkulltulaToken", 20, 20) end)
Child_Kak_House_of_Skulltula:connect_one_way("Child Kak 30 Gold Skulltula Reward", function() return Has("GoldSkulltulaToken", 30, 30) end)
Child_Kak_House_of_Skulltula:connect_one_way("Child Kak 40 Gold Skulltula Reward", function() return Has("GoldSkulltulaToken", 40, 40) end)
Child_Kak_House_of_Skulltula:connect_one_way("Child Kak 50 Gold Skulltula Reward", function() return Has("GoldSkulltulaToken", 50, 50) end)
Child_Kak_House_of_Skulltula:connect_one_way("Child 10 Skulltulas Reward Hint")
Child_Kak_House_of_Skulltula:connect_one_way("Child 20 Skulltulas Reward Hint")
Child_Kak_House_of_Skulltula:connect_one_way("Child 30 Skulltulas Reward Hint")
Child_Kak_House_of_Skulltula:connect_one_way("Child 40 Skulltulas Reward Hint")
Child_Kak_House_of_Skulltula:connect_one_way("Child 50 Skulltulas Reward Hint")

Adult_Kak_House_of_Skulltula:connect_one_way("Adult Kak 10 Gold Skulltula Reward", function() return Has("GoldSkulltulaToken", 10, 10) end)
Adult_Kak_House_of_Skulltula:connect_one_way("Adult Kak 20 Gold Skulltula Reward", function() return Has("GoldSkulltulaToken", 20, 20) end)
Adult_Kak_House_of_Skulltula:connect_one_way("Adult Kak 30 Gold Skulltula Reward", function() return Has("GoldSkulltulaToken", 30, 30) end)
Adult_Kak_House_of_Skulltula:connect_one_way("Adult Kak 40 Gold Skulltula Reward", function() return Has("GoldSkulltulaToken", 40, 40) end)
Adult_Kak_House_of_Skulltula:connect_one_way("Adult Kak 50 Gold Skulltula Reward", function() return Has("GoldSkulltulaToken", 50, 50) end)
Adult_Kak_House_of_Skulltula:connect_one_way("Adult 10 Skulltulas Reward Hint")
Adult_Kak_House_of_Skulltula:connect_one_way("Adult 20 Skulltulas Reward Hint")
Adult_Kak_House_of_Skulltula:connect_one_way("Adult 30 Skulltulas Reward Hint")
Adult_Kak_House_of_Skulltula:connect_one_way("Adult 40 Skulltulas Reward Hint")
Adult_Kak_House_of_Skulltula:connect_one_way("Adult 50 Skulltulas Reward Hint")

Child_Kak_House_of_Skulltula:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)
Adult_Kak_House_of_Skulltula:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)

-- Child_Kak_Impas_House:connect_one_way()
-- Adult_Kak_Impas_House:connect_one_way()

Child_Kak_Impas_House:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)
Child_Kak_Impas_House:connect_one_way_entrance("Child Kak Impas House Near Cow", Child_Kak_Impas_House_Near_Cow)

Adult_Kak_Impas_House:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)
Adult_Kak_Impas_House:connect_one_way_entrance("Adult Kak Impas House Near Cow", Adult_Kak_Impas_House_Near_Cow)


Child_Kak_Impas_House_Back:connect_one_way("Child Kak Impas House Freestanding PoH")
Adult_Kak_Impas_House_Back:connect_one_way("Adult Kak Impas House Freestanding PoH")

Child_Kak_Impas_House_Back:connect_one_way_entrance("Child Kak Impas Ledge", Child_Kak_Impas_Ledge)
Child_Kak_Impas_House_Back:connect_one_way_entrance("Child Kak Impas House Near Cow", Child_Kak_Impas_House_Near_Cow)

Adult_Kak_Impas_House_Back:connect_one_way_entrance("Adult Kak Impas Ledge", Adult_Kak_Impas_Ledge)
Adult_Kak_Impas_House_Back:connect_one_way_entrance("Adult Kak Impas House Near Cow", Adult_Kak_Impas_House_Near_Cow)


Child_Kak_Impas_House_Near_Cow:connect_one_way("Child Kak Impas House Cow", function() return Can_play("EponasSong") end)
Adult_Kak_Impas_House_Near_Cow:connect_one_way("Adult Kak Impas House Cow", function() return Can_play("EponasSong") end)

-- Child_Kak_Impas_House_Near_Cow:connect_one_way_entrance()
-- Adult_Kak_Impas_House_Near_Cow:connect_one_way_entrance()

Child_Kak_Windmill:connect_one_way("Child Kak Windmill Freestanding PoH", function() 
    return Any(
        Can_use("Boomerang", "child"),
        All(
            Has("logic_windmill_poh"),
            false
        ),
        false
    )
end)
Child_Kak_Windmill:connect_one_way("Child Song from Windmill", function() return false end)

Adult_Kak_Windmill:connect_one_way("Adult Kak Windmill Freestanding PoH", function() 
    return Any(
        Can_use("Boomerang", "adult"),
        All(
            Has("logic_windmill_poh"),
            true
        ),
        All(
            true,
            Can_play("SongofTime")
        )
    )
end)--is_adult and can_play(Song_of_Time)
Adult_Kak_Windmill:connect_one_way("Adult Song from Windmill", function() return Tracker:FindObjectForCode("Ocarina").Active end)


Child_Kak_Windmill:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)
Adult_Kak_Windmill:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)

Child_Kak_Bazaar:connect_one_way("Child Kak Bazaar Item 1")
Child_Kak_Bazaar:connect_one_way("Child Kak Bazaar Item 2")
Child_Kak_Bazaar:connect_one_way("Child Kak Bazaar Item 3")
Child_Kak_Bazaar:connect_one_way("Child Kak Bazaar Item 4")
Child_Kak_Bazaar:connect_one_way("Child Kak Bazaar Item 5")
Child_Kak_Bazaar:connect_one_way("Child Kak Bazaar Item 6")
Child_Kak_Bazaar:connect_one_way("Child Kak Bazaar Item 7")
Child_Kak_Bazaar:connect_one_way("Child Kak Bazaar Item 8")

Adult_Kak_Bazaar:connect_one_way("Adult Kak Bazaar Item 1")
Adult_Kak_Bazaar:connect_one_way("Adult Kak Bazaar Item 2")
Adult_Kak_Bazaar:connect_one_way("Adult Kak Bazaar Item 3")
Adult_Kak_Bazaar:connect_one_way("Adult Kak Bazaar Item 4")
Adult_Kak_Bazaar:connect_one_way("Adult Kak Bazaar Item 5")
Adult_Kak_Bazaar:connect_one_way("Adult Kak Bazaar Item 6")
Adult_Kak_Bazaar:connect_one_way("Adult Kak Bazaar Item 7")
Adult_Kak_Bazaar:connect_one_way("Adult Kak Bazaar Item 8")


Child_Kak_Bazaar:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)
Adult_Kak_Bazaar:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)

Child_Kak_Shooting_Gallery:connect_one_way("Child Kak Shooting Gallery Reward", function() return false end)
Adult_Kak_Shooting_Gallery:connect_one_way("Adult Kak Shooting Gallery Reward", function() return Can_use("Bow", "adult") end)

Child_Kak_Shooting_Gallery:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)
Adult_Kak_Shooting_Gallery:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)

Child_Kak_Potion_Shop_Front:connect_one_way("Child Kak Potion Shop Item 1", function() return false end)
Child_Kak_Potion_Shop_Front:connect_one_way("Child Kak Potion Shop Item 2", function() return false end)
Child_Kak_Potion_Shop_Front:connect_one_way("Child Kak Potion Shop Item 3", function() return false end)
Child_Kak_Potion_Shop_Front:connect_one_way("Child Kak Potion Shop Item 4", function() return false end)
Child_Kak_Potion_Shop_Front:connect_one_way("Child Kak Potion Shop Item 5", function() return false end)
Child_Kak_Potion_Shop_Front:connect_one_way("Child Kak Potion Shop Item 6", function() return false end)
Child_Kak_Potion_Shop_Front:connect_one_way("Child Kak Potion Shop Item 7", function() return false end)
Child_Kak_Potion_Shop_Front:connect_one_way("Child Kak Potion Shop Item 8", function() return false end)

Adult_Kak_Potion_Shop_Front:connect_one_way("Adult Kak Potion Shop Item 1")
Adult_Kak_Potion_Shop_Front:connect_one_way("Adult Kak Potion Shop Item 2")
Adult_Kak_Potion_Shop_Front:connect_one_way("Adult Kak Potion Shop Item 3")
Adult_Kak_Potion_Shop_Front:connect_one_way("Adult Kak Potion Shop Item 4")
Adult_Kak_Potion_Shop_Front:connect_one_way("Adult Kak Potion Shop Item 5")
Adult_Kak_Potion_Shop_Front:connect_one_way("Adult Kak Potion Shop Item 6")
Adult_Kak_Potion_Shop_Front:connect_one_way("Adult Kak Potion Shop Item 7")
Adult_Kak_Potion_Shop_Front:connect_one_way("Adult Kak Potion Shop Item 8")


Child_Kak_Potion_Shop_Front:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)
Child_Kak_Potion_Shop_Front:connect_one_way_entrance("Child Kak Potion Shop Back", Child_Kak_Potion_Shop_Back, function() return false end)

Adult_Kak_Potion_Shop_Front:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)
Adult_Kak_Potion_Shop_Front:connect_one_way_entrance("Adult Kak Potion Shop Back", Adult_Kak_Potion_Shop_Back)


-- Child_Kak_Potion_Shop_Back:connect_one_way()
-- Adult_Kak_Potion_Shop_Back:connect_one_way()

Child_Kak_Potion_Shop_Back:connect_one_way_entrance("Child Kak Backyard", Child_Kak_Backyard, function() return false end)
Child_Kak_Potion_Shop_Back:connect_one_way_entrance("Child Kak Potion Shop Front", Child_Kak_Potion_Shop_Front)

Adult_Kak_Potion_Shop_Back:connect_one_way_entrance("Adult Kak Backyard", Adult_Kak_Backyard)
Adult_Kak_Potion_Shop_Back:connect_one_way_entrance("Adult Kak Potion Shop Front", Adult_Kak_Potion_Shop_Front)

Child_Kak_Odd_Medicine_Building:connect_one_way("Child Odd Potion Access", function() return false end)
Adult_Kak_Odd_Medicine_Building:connect_one_way("Adult Odd Potion Access", function() 
    return Any(
        All(
            true,
            Any(
                Has("PocketEgg"),
                Has("PocketCucco")
            ),
            Has("Cojiro")
        ), --is_adult and 'Wake Up Adult Talon'
        All(
            Has("OddMushroom")--,
            -- Has("disable_trade_revert")
        )
    )
end)

Child_Kak_Odd_Medicine_Building:connect_one_way_entrance("Child Kak Backyard", Child_Kak_Backyard)
Adult_Kak_Odd_Medicine_Building:connect_one_way_entrance("Adult Kak Backyard", Adult_Kak_Backyard)

-- Child_Kak_Behind_Gate:connect_one_way()
-- Adult_Kak_Behind_Gate:connect_one_way()

Child_Kak_Behind_Gate:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village, function() 
    return Any(
        false,
        Has("logic_visible_collisions"),
        All(
            true,
            Any(
                Tracker:ProviderCountForCode("ZeldasLetter") > 0,
                Tracker:FindObjectForCode("open_kakariko").CurrentStage == 0
            )
        ),
        Tracker:FindObjectForCode("open_kakariko").CurrentStage == 0
    )
end)
Child_Kak_Behind_Gate:connect_one_way_entrance("Child Death Mountain", Child_Death_Mountain)

Adult_Kak_Behind_Gate:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village, function() 
    return Any(
        true,
        Has("logic_visible_collisions"),
        All(
            false,
            Any(
                Tracker:ProviderCountForCode("ZeldasLetter") > 0,
                Tracker:FindObjectForCode("open_kakariko").CurrentStage == 0
            )
        ),
        Tracker:FindObjectForCode("open_kakariko").CurrentStage == 0
    )
end)
Adult_Kak_Behind_Gate:connect_one_way_entrance("Adult Death Mountain", Adult_Death_Mountain)


Child_Kak_Redead_Grotto:connect_one_way("Child Kak Redead Grotto Chest", function() 
    return Any(
        false,
        Can_use("DekuStick", "child"),
        Can_use("KokiriSword", "child"),
        Can_use("DinsFire", "child")
    )
end)
Adult_Kak_Redead_Grotto:connect_one_way("Adult Kak Redead Grotto Chest", function() 
    return Any(
        true,
        Can_use("DekuStick", "adult"),
        Can_use("KokiriSword", "adult"),
        Can_use("DinsFire", "adult")
    )
end)

Child_Kak_Redead_Grotto:connect_one_way_entrance("Child Kakariko Village", Child_Kakariko_Village)
Adult_Kak_Redead_Grotto:connect_one_way_entrance("Adult Kakariko Village", Adult_Kakariko_Village)

Child_Kak_Open_Grotto:connect_one_way("Child Kak Open Grotto Chest")
Child_Kak_Open_Grotto:connect_one_way("Child Kak Open Grotto Gossip Stone")
Child_Kak_Open_Grotto:connect_one_way("Child Kak Open Grotto Beehive 1", function() return Can_break_lower_beehive("child") end)
Child_Kak_Open_Grotto:connect_one_way("Child Kak Open Grotto Beehive 2", function() return Can_break_lower_beehive("child") end)

Adult_Kak_Open_Grotto:connect_one_way("Adult Kak Open Grotto Chest")
Adult_Kak_Open_Grotto:connect_one_way("Adult Kak Open Grotto Gossip Stone")
Adult_Kak_Open_Grotto:connect_one_way("Adult Kak Open Grotto Beehive 1", function() return Can_break_lower_beehive("adult") end)
Adult_Kak_Open_Grotto:connect_one_way("Adult Kak Open Grotto Beehive 2", function() return Can_break_lower_beehive("adult") end)


Child_Kak_Open_Grotto:connect_one_way_entrance("Child Kak Backyard", Child_Kak_Backyard)
Adult_Kak_Open_Grotto:connect_one_way_entrance("Adult Kak Backyard", Adult_Kak_Backyard)


-- -- {
--     "region_name": "Kakariko Village",
--     "scene": "Kakariko Village",
--     "hint": "KAKARIKO_VILLAGE",
--     "events": {
--         "Cojiro Access": "is_adult and 'Wake Up Adult Talon'",
--         "Kakariko Village Gate Open": "is_child and (Zeldas_Letter or open_kakariko == 'open')"
--     },
--     "locations": {
--         "Sheik in Kakariko": "
--             is_adult and Forest_Medallion and Fire_Medallion and Water_Medallion",
--         "Kak Anju as Adult": "is_adult and at_day",
--         "Kak Anju as Child": "is_child and at_day and (can_break_crate or chicken_count < 7)",
--         "Kak Near Guards House Pot 1": "is_child",
--         "Kak Near Guards House Pot 2": "is_child",
--         "Kak Near Guards House Pot 3": "is_child",
--         "Kak Near Potion Shop Pot 1": "is_child",
--         "Kak Near Potion Shop Pot 2": "is_child",
--         "Kak Near Potion Shop Pot 3": "is_child",
--         "Kak Near Impas House Pot 1": "is_child",
--         "Kak Near Impas House Pot 2": "is_child",
--         "Kak Near Impas House Pot 3": "is_child",
--         "Kak Adult Arrows Crate": "is_adult and can_break_crate",
--         "Kak GS House Under Construction": "is_child and at_night",
--         "Kak GS Skulltula House": "is_child and at_night",
--         "Kak GS Near Gate Guard": "is_child and at_night",
--         "Kak GS Tree": "is_child and at_night and can_bonk",
--         "Kak GS Watchtower": "
--             is_child and at_night and
--             (Slingshot or has_bombchus or (logic_kakariko_tower_gs and (Sticks or Kokiri_Sword)))",
--         "Bug Rock": "has_bottle"
--     },
--     "exits": {
--         "Hyrule Field": "True",
--         "Kak Carpenter Boss House": "True",
--         "Kak House of Skulltula": "True",
--         "Kak Impas House": "True",
--         "Kak Windmill": "True",
--         "Kak Bazaar": "is_adult and at_day",
--         "Kak Shooting Gallery": "is_adult and at_day",
--         "Bottom of the Well": "'Drain Well' and (is_child or shuffle_dungeon_entrances)",
--         "Kak Potion Shop Front": "is_child or at_day",
--         "Kak Redead Grotto": "can_open_bomb_grotto",
--         "Kak Impas Ledge": "(is_child and at_day) or (is_adult and logic_visible_collisions)",
--         "Kak Impas Rooftop": "
--             can_use(Hookshot) or (logic_kakariko_rooftop_gs and can_use(Hover_Boots))",
--         "Kak Odd Medicine Rooftop": "
--             can_use(Hookshot) or
--             (logic_man_on_roof and
--                 (is_adult or at_day or Slingshot or has_bombchus or
--                     (logic_kakariko_tower_gs and (Sticks or Kokiri_Sword))))",
--         "Kak Backyard": "is_adult or at_day",
--         "Graveyard": "True",
--         "Kak Behind Gate": "is_adult or 'Kakariko Village Gate Open'"
--     }
-- },
-- {
--     "region_name": "Kak Impas Ledge",
--     "scene": "Kakariko Village",
--     "hint": "KAKARIKO_VILLAGE",
--     "exits": {
--         "Kak Impas House Back": "True",
--         "Kakariko Village": "True"
--     }
-- },
-- {
--     "region_name": "Kak Impas Rooftop",
--     "scene": "Kakariko Village",
--     "hint": "KAKARIKO_VILLAGE",
--     "locations": {
--         "Kak GS Above Impas House": "is_adult and at_night"
--     },
--     "exits": {
--         "Kak Impas Ledge": "True",
--         "Kakariko Village": "True"
--     }
-- },
-- {
--     "region_name": "Kak Odd Medicine Rooftop",
--     "scene": "Kakariko Village",
--     "hint": "KAKARIKO_VILLAGE",
--     "locations": {
--         "Kak Man on Roof": "True"
--     },
--     "exits": {
--         "Kakariko Village": "True",
--         "Kak Backyard": "True"
--     }
-- },
-- {
--     "region_name": "Kak Backyard",
--     "scene": "Kakariko Village",
--     "hint": "KAKARIKO_VILLAGE",
--     "locations": {
--         "Kak Near Odd Medicine Building Pot 1": "is_child",
--         "Kak Near Odd Medicine Building Pot 2": "is_child",
--         "Kak Adult Red Rupee Crate": "is_adult and can_break_crate"
--     },
--     "exits": {
--         "Kakariko Village": "True",
--         "Kak Open Grotto": "True",
--         "Kak Odd Medicine Building": "is_adult",
--         "Kak Potion Shop Back": "is_adult and at_day"
--     }
-- },
-- {
--     "region_name": "Kak Carpenter Boss House",
--     "scene": "Kak Carpenter Boss House",
--     "events": {
--         "Wake Up Adult Talon": "is_adult and (Pocket_Egg or Pocket_Cucco)"
--     },
--     "exits": {
--         "Kakariko Village": "True"
--     }
-- },
-- {
--     "region_name": "Kak House of Skulltula",
--     "scene": "Kak House of Skulltula",
--     "locations": {
--         "Kak 10 Gold Skulltula Reward": "(Gold_Skulltula_Token, 10)",
--         "Kak 20 Gold Skulltula Reward": "(Gold_Skulltula_Token, 20)",
--         "Kak 30 Gold Skulltula Reward": "(Gold_Skulltula_Token, 30)",
--         "Kak 40 Gold Skulltula Reward": "(Gold_Skulltula_Token, 40)",
--         "Kak 50 Gold Skulltula Reward": "(Gold_Skulltula_Token, 50)",
--         "10 Skulltulas Reward Hint": "True",
--         "20 Skulltulas Reward Hint": "True",
--         "30 Skulltulas Reward Hint": "True",
--         "40 Skulltulas Reward Hint": "True",
--         "50 Skulltulas Reward Hint": "True"
--     },
--     "exits": {
--         "Kakariko Village": "True"
--     }
-- },
-- {
--     "region_name": "Kak Impas House",
--     "scene": "Kak Impas House",
--     "exits": {
--         "Kakariko Village": "True",
--         "Kak Impas House Near Cow": "True"
--     }
-- },
-- {
--     "region_name": "Kak Impas House Back",
--     "scene": "Kak Impas House",
--     "locations": {
--         "Kak Impas House Freestanding PoH": "True"
--     },
--     "exits": {
--         "Kak Impas Ledge": "True",
--         "Kak Impas House Near Cow": "True"
--     }
-- },
-- {
--     "region_name": "Kak Impas House Near Cow",
--     "scene": "Kak Impas House",
--     "locations": {
--         "Kak Impas House Cow": "can_play(Eponas_Song)"
--     }
-- },
-- {
--     "region_name": "Kak Windmill",
--     "scene": "Windmill and Dampes Grave",
--     "events": {
--         "Drain Well": "is_child and can_play(Song_of_Storms)"
--     },
--     "locations": {
--         "Kak Windmill Freestanding PoH": "
--             can_use(Boomerang) or
--             (logic_windmill_poh and is_adult) or 'Dampes Windmill Access'",
--         "Song from Windmill": "is_adult and Ocarina"
--     },
--     "exits": {
--         "Kakariko Village": "True"
--     }
-- },
-- {
--     "region_name": "Kak Bazaar",
--     "scene": "Kak Bazaar",
--     "locations": {
--         "Kak Bazaar Item 1": "True",
--         "Kak Bazaar Item 2": "True",
--         "Kak Bazaar Item 3": "True",
--         "Kak Bazaar Item 4": "True",
--         "Kak Bazaar Item 5": "True",
--         "Kak Bazaar Item 6": "True",
--         "Kak Bazaar Item 7": "True",
--         "Kak Bazaar Item 8": "True"
--     },
--     "exits": {
--         "Kakariko Village": "True"
--     }
-- },
-- {
--     "region_name": "Kak Shooting Gallery",
--     "scene": "Kak Shooting Gallery",
--     "locations": {
--         "Kak Shooting Gallery Reward": "is_adult and Bow"
--     },
--     "exits": {
--         "Kakariko Village": "True"
--     }
-- },
-- {
--     "region_name": "Kak Potion Shop Front",
--     "scene": "Kak Potion Shop",
--     "locations": {
--         "Kak Potion Shop Item 1": "is_adult",
--         "Kak Potion Shop Item 2": "is_adult",
--         "Kak Potion Shop Item 3": "is_adult",
--         "Kak Potion Shop Item 4": "is_adult",
--         "Kak Potion Shop Item 5": "is_adult",
--         "Kak Potion Shop Item 6": "is_adult",
--         "Kak Potion Shop Item 7": "is_adult",
--         "Kak Potion Shop Item 8": "is_adult"
--     },
--     "exits": {
--         "Kakariko Village": "True",
--         "Kak Potion Shop Back": "is_adult"
--     }
-- },
-- {
--     "region_name": "Kak Potion Shop Back",
--     "scene": "Kak Potion Shop",
--     "exits": {
--         "Kak Backyard": "is_adult",
--         "Kak Potion Shop Front": "True"
--     }
-- },
-- {
--     "region_name": "Kak Odd Medicine Building",
--     "scene": "Kak Odd Medicine Building",
--     "events": {
--         "Odd Potion Access": "
--             is_adult and
--             ('Odd Mushroom Access' or (Odd_Mushroom and disable_trade_revert))"
--     },
--     "exits": {
--         "Kak Backyard": "True"
--     }
-- },
-- {
--     "region_name": "Kak Behind Gate",
--     "scene": "Kakariko Village",
--     "hint": "KAKARIKO_VILLAGE",
--     "exits": {
--         "Kakariko Village": "
--             is_adult or logic_visible_collisions or 'Kakariko Village Gate Open' or open_kakariko == 'open'",
--         "Death Mountain": "True"
--     }
-- },
-- {
--     "region_name": "Kak Redead Grotto",
--     "scene": "Kak Redead Grotto",
--     "locations": {
--         "Kak Redead Grotto Chest": "is_adult or Sticks or Kokiri_Sword or can_use(Dins_Fire)"
--     },
--     "exits": {
--         "Kakariko Village": "True"
--     }
-- },
-- {
--     "region_name": "Kak Open Grotto",
--     "scene": "Kak Open Grotto",
--     "locations": {
--         "Kak Open Grotto Chest": "True",
--         "Kak Open Grotto Gossip Stone": "True",
--         "Kak Open Grotto Beehive 1": "can_break_lower_beehive",
--         "Kak Open Grotto Beehive 2": "can_break_lower_beehive",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy and has_bottle",
--         "Butterfly Fairy": "can_use(Sticks) and has_bottle",
--         "Bug Shrub": "can_cut_shrubs and has_bottle",
--         "Lone Fish": "has_bottle"
--     },
--     "exits": {
--         "Kak Backyard": "True"
--     }
-- },