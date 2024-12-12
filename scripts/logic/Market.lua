-- Child_Market_Entrance = OOTLocation.new("Child_Market_Entrance")
-- Child_Market = OOTLocation.new("Child_Market")
-- Child_Market_Back_Alley = OOTLocation.new("Child_Market_Back_Alley")
-- Child_Market_Guard_House = OOTLocation.new("Child_Market_Guard_House")
-- Child_Market_Bazaar = OOTLocation.new("Child_Market_Bazaar")
-- Child_Market_Mask_Shop = OOTLocation.new("Child_Market_Mask_Shop")
-- Child_Market_Shooting_Gallery = OOTLocation.new("Child_Market_Shooting_Gallery")
-- Child_Market_Bombchu_Bowling = OOTLocation.new("Child_Market_Bombchu_Bowling")
-- Child_Market_Potion_Shop = OOTLocation.new("Child_Market_Potion_Shop")
-- Child_Market_Treasure_Chest_Game = OOTLocation.new("Child_Market_Treasure_Chest_Game")
-- Child_Market_Bombchu_Shop = OOTLocation.new("Child_Market_Bombchu_Shop")
-- Child_Market_Dog_Lady_House = OOTLocation.new("Child_Market_Dog_Lady_House")
-- Child_Market_Man_in_Green_House = OOTLocation.new("Child_Market_Man_in_Green_House")

-- Adult_Market_Entrance = OOTLocation.new("Adult_Market_Entrance")
-- Adult_Market = OOTLocation.new("Adult_Market")
-- Adult_Market_Back_Alley = OOTLocation.new("Adult_Market_Back_Alley")
-- Adult_Market_Guard_House = OOTLocation.new("Adult_Market_Guard_House")
-- Adult_Market_Bazaar = OOTLocation.new("Adult_Market_Bazaar")
-- Adult_Market_Mask_Shop = OOTLocation.new("Adult_Market_Mask_Shop")
-- Adult_Market_Shooting_Gallery = OOTLocation.new("Adult_Market_Shooting_Gallery")
-- Adult_Market_Bombchu_Bowling = OOTLocation.new("Adult_Market_Bombchu_Bowling")
-- Adult_Market_Potion_Shop = OOTLocation.new("Adult_Market_Potion_Shop")
-- Adult_Market_Treasure_Chest_Game = OOTLocation.new("Adult_Market_Treasure_Chest_Game")
-- Adult_Market_Bombchu_Shop = OOTLocation.new("Adult_Market_Bombchu_Shop")
-- Adult_Market_Dog_Lady_House = OOTLocation.new("Adult_Market_Dog_Lady_House")
-- Adult_Market_Man_in_Green_House = OOTLocation.new("Adult_Market_Man_in_Green_House")

Child_Market_Entrance:connect_one_way_entrance("Child Hyrule Field", Child_Hyrule_Fields, function() return true end)
Child_Market_Entrance:connect_one_way_entrance("Child Market", Child_Market)
Child_Market_Entrance:connect_one_way_entrance("Child Market Guard House", Child_Market_Guard_House)

Adult_Market_Entrance:connect_one_way_entrance("Adult Hyrule Field", Adult_Hyrule_Fields)
Adult_Market_Entrance:connect_one_way_entrance("Adult Market", Adult_Market)
Adult_Market_Entrance:connect_one_way_entrance("Adult Market Guard House", Adult_Market_Guard_House)

Child_Market:connect_one_way("Child Market Night Red Rupee Crate", function()
    return All(
        true,
        Any(
            Tracker:FindObjectForCode("deadly_bonks").CurrentStage ~= 4,
            -- Fairy(),
            All(
                Can_use("NayrusLove"),
                Tracker:FindObjectForCode("shuffle_overworld_entrances").Active == false
            )
        )
    )
end)
Child_Market:connect_one_way("Child Market Night Green Rupee Crate 1", function()
    return All(
        true,
        Any(
            Tracker:FindObjectForCode("deadly_bonks").CurrentStage ~= 4,
            -- Fairy(),
            All(
                Can_use("NayrusLove"),
                Tracker:FindObjectForCode("shuffle_overworld_entrances").Active == false
            )
        )
    )
end)
Child_Market:connect_one_way("Child Market Night Green Rupee Crate 2", function()
    return All(
        true,
        Any(
            Tracker:FindObjectForCode("deadly_bonks").CurrentStage ~= 4,
            -- Fairy(),
            All(
                Can_use("NayrusLove"),
                Tracker:FindObjectForCode("shuffle_overworld_entrances").Active == false
            )
        )
    )
end)
Child_Market:connect_one_way("Child Market Night Green Rupee Crate 3", function()
    return All(
        true,
        Any(
            Tracker:FindObjectForCode("deadly_bonks").CurrentStage ~= 4,
            -- Fairy(),
            All(
                Can_use("NayrusLove"),
                Tracker:FindObjectForCode("shuffle_overworld_entrances").Active == false
            )
        )
    )
end)

Adult_Market:connect_one_way("Adult Market Night Red Rupee Crate", function()
    return All(
        false,
        Any(
            Tracker:FindObjectForCode("deadly_bonks").CurrentStage ~= 4,
            -- Fairy(),
            All(
                Can_use("NayrusLove"),
                Tracker:FindObjectForCode("shuffle_overworld_entrances").Active == false
            )
        )
    )
end)
Adult_Market:connect_one_way("Adult Market Night Green Rupee Crate 1", function()
    return All(
        false,
        Any(
            Tracker:FindObjectForCode("deadly_bonks").CurrentStage ~= 4,
            -- Fairy(),
            All(
                Can_use("NayrusLove"),
                Tracker:FindObjectForCode("shuffle_overworld_entrances").Active == false
            )
        )
    )
end)
Adult_Market:connect_one_way("Adult Market Night Green Rupee Crate 2", function()
    return All(
        false,
        Any(
            Tracker:FindObjectForCode("deadly_bonks").CurrentStage ~= 4,
            -- Fairy(),
            All(
                Can_use("NayrusLove"),
                Tracker:FindObjectForCode("shuffle_overworld_entrances").Active == false
            )
        )
    )
end)
Adult_Market:connect_one_way("Adult Market Night Green Rupee Crate 3", function()
    return All(
        false,
        Any(
            Tracker:FindObjectForCode("deadly_bonks").CurrentStage ~= 4,
            -- Fairy(),
            All(
                Can_use("NayrusLove"),
                Tracker:FindObjectForCode("shuffle_overworld_entrances").Active == false
            )
        )
    )
end)

Child_Market:connect_one_way_entrance("Child Market Entrance", Child_Market_Entrance)
Child_Market:connect_one_way_entrance("Child ToT Entrance", Child_ToT_Entrance)
Child_Market:connect_one_way_entrance("Child Castle Grounds", Child_Castle_Grounds)
Child_Market:connect_one_way_entrance("Child Market Bazaar", Child_Market_Bazaar, function() return true end)
Child_Market:connect_one_way_entrance("Child Market Mask Shop", Child_Market_Mask_Shop, function() return true end)
Child_Market:connect_one_way_entrance("Child Market Shooting Gallery", Child_Market_Shooting_Gallery, function() return true end)
Child_Market:connect_one_way_entrance("Child Market Bombchu Bowling", Child_Market_Bombchu_Bowling, function() return true end)
Child_Market:connect_one_way_entrance("Child Market Potion Shop", Child_Market_Potion_Shop, function() return true end)
Child_Market:connect_one_way_entrance("Child Market Treasure Chest Game", Child_Market_Treasure_Chest_Game, function() return true end)
Child_Market:connect_one_way_entrance("Child Market Back Alley", Child_Market_Back_Alley)

Adult_Market:connect_one_way_entrance("Adult Market Entrance", Adult_Market_Entrance)
Adult_Market:connect_one_way_entrance("Adult ToT Entrance", Adult_ToT_Entrance)
Adult_Market:connect_one_way_entrance("Adult Castle Grounds", Adult_Castle_Grounds)
Adult_Market:connect_one_way_entrance("Adult Market Bazaar", Adult_Market_Bazaar, function() return false end)
Adult_Market:connect_one_way_entrance("Adult Market Mask Shop", Adult_Market_Mask_Shop, function() return false end)
Adult_Market:connect_one_way_entrance("Adult Market Shooting Gallery", Adult_Market_Shooting_Gallery, function() return false end)
Adult_Market:connect_one_way_entrance("Adult Market Bombchu Bowling", Adult_Market_Bombchu_Bowling, function() return false end)
Adult_Market:connect_one_way_entrance("Adult Market Potion Shop", Adult_Market_Potion_Shop, function() return false end)
Adult_Market:connect_one_way_entrance("Adult Market Treasure Chest Game", Adult_Market_Treasure_Chest_Game, function() return false end)
Adult_Market:connect_one_way_entrance("Adult Market Back Alley", Adult_Market_Back_Alley, function() return false end)

Child_Market_Back_Alley:connect_one_way_entrance("Child Market", Child_Market)
Child_Market_Back_Alley:connect_one_way_entrance("Child Market Bombchu Shop", Child_Market_Bombchu_Shop, function() return true end)
Child_Market_Back_Alley:connect_one_way_entrance("Child Market Dog Lady House", Child_Market_Dog_Lady_House)
Child_Market_Back_Alley:connect_one_way_entrance("Child Market Man in Green House", Child_Market_Man_in_Green_House, function() return true end)

Adult_Market_Back_Alley:connect_one_way_entrance("Adult Market", Adult_Market)
Adult_Market_Back_Alley:connect_one_way_entrance("Adult Market Bombchu Shop", Adult_Market_Bombchu_Shop, function() return true end)
Adult_Market_Back_Alley:connect_one_way_entrance("Adult Market Dog Lady House", Adult_Market_Dog_Lady_House)
Adult_Market_Back_Alley:connect_one_way_entrance("Adult Market Man in Green House", Adult_Market_Man_in_Green_House, function() return true end)

Child_Market_Guard_House:connect_one_way("Child Market 10 Big Poes", function() return false end)
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Crate", function() return Can_break_crate("child") end)
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 1")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 2")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 3")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 4")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 5")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 6")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 7")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 8")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 9")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 10")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 11")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 12")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 13")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 14")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 15")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 16")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 17")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 18")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 19")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 20")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 21")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 22")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 23")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 24")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 25")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 26")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 27")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 28")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 29")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 30")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 31")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 32")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 33")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 34")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 35")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 36")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 37")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 38")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 39")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 40")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 41")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 42")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 43")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Child Pot 44")
Child_Market_Guard_House:connect_one_way("Child Market Guard House Adult Pot 1", function() return false end)
Child_Market_Guard_House:connect_one_way("Child Market Guard House Adult Pot 2", function() return false end)
Child_Market_Guard_House:connect_one_way("Child Market Guard House Adult Pot 3", function() return false end)
Child_Market_Guard_House:connect_one_way("Child Market Guard House Adult Pot 4", function() return false end)
Child_Market_Guard_House:connect_one_way("Child Market Guard House Adult Pot 5", function() return false end)
Child_Market_Guard_House:connect_one_way("Child Market Guard House Adult Pot 6", function() return false end)
Child_Market_Guard_House:connect_one_way("Child Market Guard House Adult Pot 7", function() return false end)
Child_Market_Guard_House:connect_one_way("Child Market GS Guard House", function() return Can_break_crate("child") end)

Adult_Market_Guard_House:connect_one_way("Adult Market 10 Big Poes", function() 
    return Any(
        Big_Poe("adult")--, 
        -- Has_bottle()--, 
        -- Tracker:FindObjectForCode("big_poe_count").AcquiredCount
    ) 
end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Crate", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 1", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 2", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 3", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 4", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 5", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 6", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 7", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 8", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 9", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 10", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 11", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 12", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 13", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 14", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 15", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 16", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 17", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 18", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 19", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 20", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 21", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 22", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 23", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 24", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 25", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 26", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 27", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 28", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 29", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 30", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 31", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 32", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 33", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 34", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 35", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 36", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 37", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 38", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 39", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 40", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 41", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 42", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 43", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Child Pot 44", function() return false end)
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Adult Pot 1")
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Adult Pot 2")
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Adult Pot 3")
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Adult Pot 4")
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Adult Pot 5")
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Adult Pot 6")
Adult_Market_Guard_House:connect_one_way("Adult Market Guard House Adult Pot 7")
Adult_Market_Guard_House:connect_one_way("Adult Market GS Guard House", function() return false end)

Child_Market_Guard_House:connect_one_way_entrance("Child Market Entrance", Child_Market_Entrance)
Adult_Market_Guard_House:connect_one_way_entrance("Adult Market Entrance", Adult_Market_Entrance)

Child_Market_Bazaar:connect_one_way("Child Market Bazaar Item 1")
Child_Market_Bazaar:connect_one_way("Child Market Bazaar Item 2")
Child_Market_Bazaar:connect_one_way("Child Market Bazaar Item 3")
Child_Market_Bazaar:connect_one_way("Child Market Bazaar Item 4")
Child_Market_Bazaar:connect_one_way("Child Market Bazaar Item 5")
Child_Market_Bazaar:connect_one_way("Child Market Bazaar Item 6")
Child_Market_Bazaar:connect_one_way("Child Market Bazaar Item 7")
Child_Market_Bazaar:connect_one_way("Child Market Bazaar Item 8")

Adult_Market_Bazaar:connect_one_way("Adult Market Bazaar Item 1")
Adult_Market_Bazaar:connect_one_way("Adult Market Bazaar Item 2")
Adult_Market_Bazaar:connect_one_way("Adult Market Bazaar Item 3")
Adult_Market_Bazaar:connect_one_way("Adult Market Bazaar Item 4")
Adult_Market_Bazaar:connect_one_way("Adult Market Bazaar Item 5")
Adult_Market_Bazaar:connect_one_way("Adult Market Bazaar Item 6")
Adult_Market_Bazaar:connect_one_way("Adult Market Bazaar Item 7")
Adult_Market_Bazaar:connect_one_way("Adult Market Bazaar Item 8")


Child_Market_Bazaar:connect_one_way_entrance("Child Market", Child_Market)
Adult_Market_Bazaar:connect_one_way_entrance("Adult Market", Adult_Market)

Child_Market_Mask_Shop:connect_one_way("Child Skull Mask", function() 
    return All(
        Tracker:ProviderCountForCode("ZeldasLetter") > 0 ,
        Any(
            Has("complete_mask_quest"),
            CanReach("Child_Kakariko_Village") > 5
        )
    )
end)
Child_Market_Mask_Shop:connect_one_way("Child Mask of Truth", function()
    return Any(
        Has("complete_mask_quest"),
        All(
            CanReach("Child_Lost_Woods") > 5,
            Can_play("SariasSong"),
            CanReach("Child_Graveyard") > 5,
            CanReach("Child_Hyrule_Fields") > 5,
            Has_all_stones()
        )
    )
end)

Adult_Market_Mask_Shop:connect_one_way("Adult Skull Mask", function() 
    return All(
        Tracker:ProviderCountForCode("ZeldasLetter") > 0 ,
        Any(
            Has("complete_mask_quest"),
            CanReach("Child_Kakariko_Village") > 5
        )
    )
end)
Adult_Market_Mask_Shop:connect_one_way("Adult Mask of Truth", function()
    return Any(
        Has("complete_mask_quest"),
        All(
            CanReach("Child_Lost_Woods") > 5,
            Can_play("SariasSong"),
            CanReach("Child_Graveyard") > 5,
            CanReach("Child_Hyrule_Fields") > 5,
            Has_all_stones()
        )
    )
end)


Child_Market_Mask_Shop:connect_one_way_entrance("Child Markt", Child_Market)
Adult_Market_Mask_Shop:connect_one_way_entrance("Adult Market", Adult_Market)

Child_Market_Shooting_Gallery:connect_one_way("Child Market Shooting Gallery Reward")
Adult_Market_Shooting_Gallery:connect_one_way("Adult Market Shooting Gallery Reward")

Child_Market_Shooting_Gallery:connect_one_way_entrance("Child Markt", Child_Market)
Adult_Market_Shooting_Gallery:connect_one_way_entrance("Adult Market", Adult_Market)

Child_Market_Bombchu_Bowling:connect_one_way("Child Market Bombchu Bowling First Prize", function() return Has_bombchus() end)
Child_Market_Bombchu_Bowling:connect_one_way("Child Market Bombchu Bowling Second Prize", function() return Has_bombchus() end)
Child_Market_Bombchu_Bowling:connect_one_way("Child Market Bombchu Bowling Bombchus", function() return Has_bombchus() end)

Adult_Market_Bombchu_Bowling:connect_one_way("Adult Market Bombchu Bowling First Prize", function() return Has_bombchus() end)
Adult_Market_Bombchu_Bowling:connect_one_way("Adult Market Bombchu Bowling Second Prize", function() return Has_bombchus() end)
Adult_Market_Bombchu_Bowling:connect_one_way("Adult Market Bombchu Bowling Bombchus", function() return Has_bombchus() end)

Child_Market_Bombchu_Bowling:connect_one_way_entrance("Child Markt", Child_Market)
Adult_Market_Bombchu_Bowling:connect_one_way_entrance("Adult Market", Adult_Market)

Child_Market_Potion_Shop:connect_one_way("Child Market Potion Shop Item 1")
Child_Market_Potion_Shop:connect_one_way("Child Market Potion Shop Item 2")
Child_Market_Potion_Shop:connect_one_way("Child Market Potion Shop Item 3")
Child_Market_Potion_Shop:connect_one_way("Child Market Potion Shop Item 4")
Child_Market_Potion_Shop:connect_one_way("Child Market Potion Shop Item 5")
Child_Market_Potion_Shop:connect_one_way("Child Market Potion Shop Item 6")
Child_Market_Potion_Shop:connect_one_way("Child Market Potion Shop Item 7")
Child_Market_Potion_Shop:connect_one_way("Child Market Potion Shop Item 8")

Adult_Market_Potion_Shop:connect_one_way("Adult Market Potion Shop Item 1")
Adult_Market_Potion_Shop:connect_one_way("Adult Market Potion Shop Item 2")
Adult_Market_Potion_Shop:connect_one_way("Adult Market Potion Shop Item 3")
Adult_Market_Potion_Shop:connect_one_way("Adult Market Potion Shop Item 4")
Adult_Market_Potion_Shop:connect_one_way("Adult Market Potion Shop Item 5")
Adult_Market_Potion_Shop:connect_one_way("Adult Market Potion Shop Item 6")
Adult_Market_Potion_Shop:connect_one_way("Adult Market Potion Shop Item 7")
Adult_Market_Potion_Shop:connect_one_way("Adult Market Potion Shop Item 8")


Child_Market_Potion_Shop:connect_one_way_entrance("Child Markt", Child_Market)
Adult_Market_Potion_Shop:connect_one_way_entrance("Adult Market", Adult_Market)

Child_Market_Treasure_Chest_Game:connect_one_way("Child Market Treasure Chest Game Reward", function() return Can_use("LensofTruth", "child") end )
Adult_Market_Treasure_Chest_Game:connect_one_way("Adult Market Treasure Chest Game Reward", function() return Can_use("LensofTruth", "adult") end )

Child_Market_Treasure_Chest_Game:connect_one_way_entrance("Child Markt", Child_Market)
Adult_Market_Treasure_Chest_Game:connect_one_way_entrance("Adult Market", Adult_Market)

Child_Market_Bombchu_Shop:connect_one_way("Child Market Bombchu Shop Item 1")
Child_Market_Bombchu_Shop:connect_one_way("Child Market Bombchu Shop Item 2")
Child_Market_Bombchu_Shop:connect_one_way("Child Market Bombchu Shop Item 3")
Child_Market_Bombchu_Shop:connect_one_way("Child Market Bombchu Shop Item 4")
Child_Market_Bombchu_Shop:connect_one_way("Child Market Bombchu Shop Item 5")
Child_Market_Bombchu_Shop:connect_one_way("Child Market Bombchu Shop Item 6")
Child_Market_Bombchu_Shop:connect_one_way("Child Market Bombchu Shop Item 7")
Child_Market_Bombchu_Shop:connect_one_way("Child Market Bombchu Shop Item 8")

Adult_Market_Bombchu_Shop:connect_one_way("Adult Market Bombchu Shop Item 1")
Adult_Market_Bombchu_Shop:connect_one_way("Adult Market Bombchu Shop Item 2")
Adult_Market_Bombchu_Shop:connect_one_way("Adult Market Bombchu Shop Item 3")
Adult_Market_Bombchu_Shop:connect_one_way("Adult Market Bombchu Shop Item 4")
Adult_Market_Bombchu_Shop:connect_one_way("Adult Market Bombchu Shop Item 5")
Adult_Market_Bombchu_Shop:connect_one_way("Adult Market Bombchu Shop Item 6")
Adult_Market_Bombchu_Shop:connect_one_way("Adult Market Bombchu Shop Item 7")
Adult_Market_Bombchu_Shop:connect_one_way("Adult Market Bombchu Shop Item 8")

Child_Market_Bombchu_Shop:connect_one_way_entrance("Child Market Back Alley", Child_Market_Back_Alley)
Adult_Market_Bombchu_Shop:connect_one_way_entrance("Adult Market Back Alley", Adult_Market_Back_Alley)

Child_Market_Dog_Lady_House:connect_one_way("Child Market Lost Dog")
Child_Market_Dog_Lady_House:connect_one_way("Child Market Dog Lady House Crate", function() 
    return Any(
        Tracker:FindObjectForCode("deadly_bonks").CurrentStage ~= 5,
        -- Fairy(),
        All(
            Can_use("NayrusLove", "child"),
            Tracker:FindObjectForCode("shuffle_overworld_entrances").Active == false)
        )
end)
Adult_Market_Dog_Lady_House:connect_one_way("Adult Market Lost Dog", function() return false end)
Adult_Market_Dog_Lady_House:connect_one_way("Adult Market Dog Lady House Crate", function() 
    return Any(
        Tracker:FindObjectForCode("deadly_bonks").CurrentStage ~= 5,
        -- Fairy(),
        All(
            Can_use("NayrusLove", "adult"),
            Tracker:FindObjectForCode("shuffle_overworld_entrances").Active == false)
        )
end)

Child_Market_Dog_Lady_House:connect_one_way_entrance("Child Market Back Alley", Child_Market_Back_Alley)
Adult_Market_Dog_Lady_House:connect_one_way_entrance("Adult Market Back Alley", Adult_Market_Back_Alley)

Child_Market_Man_in_Green_House:connect_one_way("Child Market Man in Green House Pot 1")
Child_Market_Man_in_Green_House:connect_one_way("Child Market Man in Green House Pot 2")
Child_Market_Man_in_Green_House:connect_one_way("Child Market Man in Green House Pot 3")

Adult_Market_Man_in_Green_House:connect_one_way("Adult Market Man in Green House Pot 1")
Adult_Market_Man_in_Green_House:connect_one_way("Adult Market Man in Green House Pot 2")
Adult_Market_Man_in_Green_House:connect_one_way("Adult Market Man in Green House Pot 3")

Child_Market_Man_in_Green_House:connect_one_way_entrance("Child Market Back Alley", Child_Market_Back_Alley)
Adult_Market_Man_in_Green_House:connect_one_way_entrance("Adult Market Back Alley", Adult_Market_Back_Alley)





-- -- {
--     "region_name": "Market Entrance",
--     "scene": "Market Entrance",
--     "hint": "MARKET",
--     "exits": {
--         "Hyrule Field": "is_adult or at_day",
--         "Market": "True",
--         "Market Guard House": "True"
--     }
-- },
-- {
--     "region_name": "Market",
--     "scene": "Market",
--     "hint": "MARKET",
--     "locations": {
--         "Market Night Red Rupee Crate": "is_child and at_night and (deadly_bonks != 'ohko' or Fairy or (can_use(Nayrus_Love) and shuffle_overworld_entrances == 'off'))",
--         "Market Night Green Rupee Crate 1": "is_child and at_night and (deadly_bonks != 'ohko' or Fairy or (can_use(Nayrus_Love) and shuffle_overworld_entrances == 'off'))",
--         "Market Night Green Rupee Crate 2": "is_child and at_night and (deadly_bonks != 'ohko' or Fairy or (can_use(Nayrus_Love) and shuffle_overworld_entrances == 'off'))",
--         "Market Night Green Rupee Crate 3": "is_child and at_night (deadly_bonks != 'ohko' or Fairy or (can_use(Nayrus_Love) and shuffle_overworld_entrances == 'off'))"
--     },
--     "exits": {
--         "Market Entrance": "True",
--         "ToT Entrance": "True",
--         "Castle Grounds": "True",
--         "Market Bazaar": "is_child and at_day",
--         "Market Mask Shop": "is_child and at_day",
--         "Market Shooting Gallery": "is_child and at_day",
--         "Market Bombchu Bowling": "is_child",
--         "Market Potion Shop": "is_child and at_day",
--         "Market Treasure Chest Game": "is_child and at_night",
--         "Market Back Alley": "is_child"
--     }
-- },
-- {
--     "region_name": "Market Back Alley",
--     "scene": "Market",
--     "hint": "MARKET",
--     "exits": {
--         "Market": "True",
--         "Market Bombchu Shop": "at_night",
--         "Market Dog Lady House": "True",
--         "Market Man in Green House": "at_night"
--     }
-- },
-- {
--     "region_name": "Market Guard House",
--     "scene": "Market Guard House",
--     "events": {
--         "Sell Big Poe": "is_adult and Bottle_with_Big_Poe"
--     },
--     "locations": {
--         "Market 10 Big Poes": "
--             is_adult and (Big_Poe or (Bottle_with_Big_Poe, big_poe_count))",
--         "Market Guard House Child Crate": "is_child and can_break_crate",
--         "Market Guard House Child Pot 1": "is_child",
--         "Market Guard House Child Pot 2": "is_child",
--         "Market Guard House Child Pot 3": "is_child",
--         "Market Guard House Child Pot 4": "is_child",
--         "Market Guard House Child Pot 5": "is_child",
--         "Market Guard House Child Pot 6": "is_child",
--         "Market Guard House Child Pot 7": "is_child",
--         "Market Guard House Child Pot 8": "is_child",
--         "Market Guard House Child Pot 9": "is_child",
--         "Market Guard House Child Pot 10": "is_child",
--         "Market Guard House Child Pot 11": "is_child",
--         "Market Guard House Child Pot 12": "is_child",
--         "Market Guard House Child Pot 13": "is_child",
--         "Market Guard House Child Pot 14": "is_child",
--         "Market Guard House Child Pot 15": "is_child",
--         "Market Guard House Child Pot 16": "is_child",
--         "Market Guard House Child Pot 17": "is_child",
--         "Market Guard House Child Pot 18": "is_child",
--         "Market Guard House Child Pot 19": "is_child",
--         "Market Guard House Child Pot 20": "is_child",
--         "Market Guard House Child Pot 21": "is_child",
--         "Market Guard House Child Pot 22": "is_child",
--         "Market Guard House Child Pot 23": "is_child",
--         "Market Guard House Child Pot 24": "is_child",
--         "Market Guard House Child Pot 25": "is_child",
--         "Market Guard House Child Pot 26": "is_child",
--         "Market Guard House Child Pot 27": "is_child",
--         "Market Guard House Child Pot 28": "is_child",
--         "Market Guard House Child Pot 29": "is_child",
--         "Market Guard House Child Pot 30": "is_child",
--         "Market Guard House Child Pot 31": "is_child",
--         "Market Guard House Child Pot 32": "is_child",
--         "Market Guard House Child Pot 33": "is_child",
--         "Market Guard House Child Pot 34": "is_child",
--         "Market Guard House Child Pot 35": "is_child",
--         "Market Guard House Child Pot 36": "is_child",
--         "Market Guard House Child Pot 37": "is_child",
--         "Market Guard House Child Pot 38": "is_child",
--         "Market Guard House Child Pot 39": "is_child",
--         "Market Guard House Child Pot 40": "is_child",
--         "Market Guard House Child Pot 41": "is_child",
--         "Market Guard House Child Pot 42": "is_child",
--         "Market Guard House Child Pot 43": "is_child",
--         "Market Guard House Child Pot 44": "is_child",
--         "Market Guard House Adult Pot 1": "is_adult",
--         "Market Guard House Adult Pot 2": "is_adult",
--         "Market Guard House Adult Pot 3": "is_adult",
--         "Market Guard House Adult Pot 4": "is_adult",
--         "Market Guard House Adult Pot 5": "is_adult",
--         "Market Guard House Adult Pot 6": "is_adult",
--         "Market Guard House Adult Pot 7": "is_adult",
--         "Market GS Guard House": "is_child and can_break_crate"
--     },
--     "exits": {
--         "Market Entrance": "True"
--     }
-- },
-- {
--     "region_name": "Market Bazaar",
--     "scene": "Market Bazaar",
--     "locations": {
--         "Market Bazaar Item 1": "True",
--         "Market Bazaar Item 2": "True",
--         "Market Bazaar Item 3": "True",
--         "Market Bazaar Item 4": "True",
--         "Market Bazaar Item 5": "True",
--         "Market Bazaar Item 6": "True",
--         "Market Bazaar Item 7": "True",
--         "Market Bazaar Item 8": "True"
--     },
--     "exits": {
--         "Market": "True"
--     }
-- },
-- {
--     "region_name": "Market Mask Shop",
--     "scene": "Market Mask Shop",
--     "events": {
--         "Skull Mask": "Zeldas_Letter and (complete_mask_quest or at('Kakariko Village', is_child))",
--         "Mask of Truth": "'Skull Mask' and
--             (complete_mask_quest or
--             (at('Lost Woods', is_child and can_play(Sarias_Song)) and
--                 at('Graveyard', is_child and at_day) and
--                 at('Hyrule Field', is_child and has_all_stones)))"
--     },
--     "exits": {
--         "Market": "True"
--     }
-- },
-- {
--     "region_name": "Market Shooting Gallery",
--     "scene": "Market Shooting Gallery",
--     "locations": {
--         "Market Shooting Gallery Reward": "is_child"
--     },
--     "exits": {
--         "Market": "True"
--     }
-- },
-- {
--     "region_name": "Market Bombchu Bowling",
--     "scene": "Market Bombchu Bowling",
--     "locations": {
--         "Market Bombchu Bowling First Prize": "found_bombchus",
--         "Market Bombchu Bowling Second Prize": "found_bombchus",
--         "Market Bombchu Bowling Bombchus": "found_bombchus"
--     },
--     "exits": {
--         "Market": "True"
--     }
-- },
-- {
--     "region_name": "Market Potion Shop",
--     "scene": "Market Potion Shop",
--     "locations": {
--         "Market Potion Shop Item 1": "True",
--         "Market Potion Shop Item 2": "True",
--         "Market Potion Shop Item 3": "True",
--         "Market Potion Shop Item 4": "True",
--         "Market Potion Shop Item 5": "True",
--         "Market Potion Shop Item 6": "True",
--         "Market Potion Shop Item 7": "True",
--         "Market Potion Shop Item 8": "True"
--     },
--     "exits": {
--         "Market": "True"
--     }
-- },
-- {
--     "region_name": "Market Treasure Chest Game",
--     "scene": "Market Treasure Chest Game",
--     "locations": {
--         "Market Treasure Chest Game Reward": "can_use(Lens_of_Truth)"
--     },
--     "exits": {
--         "Market": "True"
--     }
-- },
-- {
--     "region_name": "Market Bombchu Shop",
--     "scene": "Market Bombchu Shop",
--     "locations": {
--         "Market Bombchu Shop Item 1": "True",
--         "Market Bombchu Shop Item 2": "True",
--         "Market Bombchu Shop Item 3": "True",
--         "Market Bombchu Shop Item 4": "True",
--         "Market Bombchu Shop Item 5": "True",
--         "Market Bombchu Shop Item 6": "True",
--         "Market Bombchu Shop Item 7": "True",
--         "Market Bombchu Shop Item 8": "True"
--     },
--     "exits": {
--         "Market Back Alley": "True"
--     }
-- },
-- {
--     "region_name": "Market Dog Lady House",
--     "scene": "Market Dog Lady House",
--     "locations": {
--         "Market Lost Dog": "is_child and at_night",
--         "Market Dog Lady House Crate": "(deadly_bonks != 'ohko' or Fairy or (can_use(Nayrus_Love) and shuffle_overworld_entrances == 'off'))"
--     },
--     "exits": {
--         "Market Back Alley": "True"
--     }
-- },
-- {
--     "region_name": "Market Man in Green House",
--     "scene": "Market Man in Green House",
--     "locations": {
--         "Market Man in Green House Pot 1": "True",
--         "Market Man in Green House Pot 2": "True",
--         "Market Man in Green House Pot 3": "True"
--     },
--     "exits": {
--         "Market Back Alley": "True"
--     }
-- },