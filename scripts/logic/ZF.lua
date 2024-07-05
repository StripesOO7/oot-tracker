-- Child_Zoras_Fountain = OOTLocation.new("Child_Zoras_Fountain")
-- Child_ZF_Underwater = OOTLocation.new("Child_ZF_Underwater")
-- Child_ZF_Hidden_Cave = OOTLocation.new("Child_ZF_Hidden_Cave")
-- Child_ZF_Ice_Ledge = OOTLocation.new("Child_ZF_Ice_Ledge")
-- Child_ZF_Great_Fairy_Fountain = OOTLocation.new("Child_ZF_Great_Fairy_Fountain")

-- Adult_Zoras_Fountain = OOTLocation.new("Adult_Zoras_Fountain")
-- Adult_ZF_Underwater = OOTLocation.new("Adult_ZF_Underwater")
-- Adult_ZF_Hidden_Cave = OOTLocation.new("Adult_ZF_Hidden_Cave")
-- Adult_ZF_Ice_Ledge = OOTLocation.new("Adult_ZF_Ice_Ledge")
-- Adult_ZF_Great_Fairy_Fountain = OOTLocation.new("Adult_ZF_Great_Fairy_Fountain")


Child_Zoras_Fountain:connect_one_way("Child ZF Iceberg Freestanding PoH", function() return false end)
Child_Zoras_Fountain:connect_one_way("Child ZF Near Jabu Pot 1")
Child_Zoras_Fountain:connect_one_way("Child ZF Near Jabu Pot 2")
Child_Zoras_Fountain:connect_one_way("Child ZF Near Jabu Pot 3")
Child_Zoras_Fountain:connect_one_way("Child ZF Near Jabu Pot 4")
Child_Zoras_Fountain:connect_one_way("Child ZF GS Tree", function() return Can_bonk("child") end)
Child_Zoras_Fountain:connect_one_way("Child ZF GS Above the Log", function() return Can_use("Boomerang", "child") end)-- and at_night)

Adult_Zoras_Fountain:connect_one_way("Adult ZF Iceberg Freestanding PoH")
Adult_Zoras_Fountain:connect_one_way("Adult ZF Near Jabu Pot 1", function() return false end)
Adult_Zoras_Fountain:connect_one_way("Adult ZF Near Jabu Pot 2", function() return false end)
Adult_Zoras_Fountain:connect_one_way("Adult ZF Near Jabu Pot 3", function() return false end)
Adult_Zoras_Fountain:connect_one_way("Adult ZF Near Jabu Pot 4", function() return false end)
Adult_Zoras_Fountain:connect_one_way("Adult ZF GS Tree", function() return false end)
Adult_Zoras_Fountain:connect_one_way("Adult ZF GS Above the Log", function() return Can_use("Boomerang", "adult") end)-- and at_night)


Child_Zoras_Fountain:connect_one_way_entrance("Child ZD Behind King Zora", Child_ZD_Behind_King_Zora)
Child_Zoras_Fountain:connect_one_way_entrance("Child Jabu Jabus Belly Beginning", Child_Jabu_Jabus_Belly_Beginning, function() return Fish() end)
Child_Zoras_Fountain:connect_one_way_entrance("Child ZF Ice Ledge", Child_ZF_Ice_Ledge, function() return false end)
Child_Zoras_Fountain:connect_one_way_entrance("Child ZF Great Fairy Fountain", Child_ZF_Great_Fairy_Fountain, function() return Has_explosives() end)
Child_Zoras_Fountain:connect_one_way_entrance("Child ZF Underwater", Child_ZF_Underwater, function() return false end)
Child_Zoras_Fountain:connect_one_way_entrance("Child ZF Hidden Cave", Child_ZF_Hidden_Cave, function() 
    return All(
        Can_use("SilverGauntlets", "child"), 
        Can_blast_or_smash("child")
    ) 
end)

Adult_Zoras_Fountain:connect_one_way_entrance("Adult ZD Behind King Zora", Child_ZD_Behind_King_Zora)
Adult_Zoras_Fountain:connect_one_way_entrance("Adult Jabu Jabus Belly Beginning", Child_Jabu_Jabus_Belly_Beginning, function() return false end)
Adult_Zoras_Fountain:connect_one_way_entrance("Adult ZF Ice Ledge", Child_ZF_Ice_Ledge, function() return true end)
Adult_Zoras_Fountain:connect_one_way_entrance("Adult ZF Great Fairy Fountain", Child_ZF_Great_Fairy_Fountain, function() return Has_explosives() end)
Adult_Zoras_Fountain:connect_one_way_entrance("Adult ZF Underwater", Child_ZF_Underwater, function() 
    return All(
        Can_use("IronBoots", "adult"), 
        Any(
            Has("logic_fewer_tunic_requirements"), 
            Can_use("ZoraTunic", "adult")
        )
    ) 
end)
Adult_Zoras_Fountain:connect_one_way_entrance("Adult ZF Hidden Cave", Child_ZF_Hidden_Cave, function() 
    return All(
        Can_use("SilverGauntlets", "adult"), 
        Can_blast_or_smash("adult")
    )
end)


Child_ZF_Underwater:connect_one_way("Child ZF Bottom Freestanding PoH")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 1")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 2")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 3")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 4")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 5")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 6")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 7")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 8")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 9")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 10")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 11")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 12")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 13")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 14")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 15")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 16")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 17")
Child_ZF_Underwater:connect_one_way("Child ZF Bottom Green Rupee 18")

Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Freestanding PoH")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 1")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 2")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 3")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 4")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 5")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 6")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 7")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 8")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 9")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 10")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 11")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 12")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 13")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 14")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 15")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 16")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 17")
Adult_ZF_Underwater:connect_one_way("Adult ZF Bottom Green Rupee 18")

-- Child_ZF_Underwater:connect_one_way_entrance()
-- Adult_ZF_Underwater:connect_one_way_entrance()

Child_ZF_Hidden_Cave:connect_one_way("Child ZF Hidden Cave Pot 1")
Child_ZF_Hidden_Cave:connect_one_way("Child ZF Hidden Cave Pot 2")
Child_ZF_Hidden_Cave:connect_one_way("Child ZF Hidden Cave Pot 3")
Child_ZF_Hidden_Cave:connect_one_way("Child ZF GS Hidden Cave")

Adult_ZF_Hidden_Cave:connect_one_way("Adult ZF Hidden Cave Pot 1")
Adult_ZF_Hidden_Cave:connect_one_way("Adult ZF Hidden Cave Pot 2")
Adult_ZF_Hidden_Cave:connect_one_way("Adult ZF Hidden Cave Pot 3")
Adult_ZF_Hidden_Cave:connect_one_way("Adult ZF GS Hidden Cave")


-- Child_ZF_Hidden_Cave:connect_one_way_entrance()
-- Adult_ZF_Hidden_Cave:connect_one_way_entrance()

-- Child_ZF_Ice_Ledge:connect_one_way()
-- Adult_ZF_Ice_Ledge:connect_one_way()

Child_ZF_Ice_Ledge:connect_one_way_entrance("Child Zoras Fountain", Child_Zoras_Fountain)
Child_ZF_Ice_Ledge:connect_one_way_entrance("Child Ice Cavern Beginning", Child_Ice_Cavern_Beginning)

Adult_ZF_Ice_Ledge:connect_one_way_entrance("Adult Zoras Fountain", Adult_Zoras_Fountain)
Adult_ZF_Ice_Ledge:connect_one_way_entrance("Adult Ice Cavern Beginning", Adult_Ice_Cavern_Beginning)

Child_ZF_Great_Fairy_Fountain:connect_one_way("Child ZF Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)
Adult_ZF_Great_Fairy_Fountain:connect_one_way("Adult ZF Great Fairy Reward", function() return Can_play("ZeldasLullaby") end)

Child_ZF_Great_Fairy_Fountain:connect_one_way_entrance("Child Zoras Fountain", Child_Zoras_Fountain)
Adult_ZF_Great_Fairy_Fountain:connect_one_way_entrance("Adult Zoras Fountain", Adult_Zoras_Fountain)



-- {
--     "region_name": "Zoras Fountain",
--     "scene": "Zoras Fountain",
--     "hint": "ZORAS_FOUNTAIN",
--     "locations": {
--         "ZF Iceberg Freestanding PoH": "is_adult",
--         "ZF Near Jabu Pot 1": "is_child",
--         "ZF Near Jabu Pot 2": "is_child",
--         "ZF Near Jabu Pot 3": "is_child",
--         "ZF Near Jabu Pot 4": "is_child",
--         "ZF GS Tree": "is_child and Can_bonk",
--         "ZF GS Above the Log": "can_use(Boomerang) and at_night",
--         "ZF Fairy Gossip Stone": "True",
--         "ZF Jabu Gossip Stone": "True",
--         "Gossip Stone Fairy": "can_summon_gossip_fairy_without_suns and Has_bottle",
--         "Butterfly Fairy": "can_use(Sticks) and at_day and Has_bottle"
--     },
--     "exits": {
--         "ZD Behind King Zora": "True",
--         "Jabu Jabus Belly Beginning": "is_child and Fish()",
--         "ZF Ice Ledge": "is_adult",
--         "ZF Great Fairy Fountain": "Has_explosives()",
--         "ZF Underwater": "is_adult and IronBoots and (Has("logic_fewer_tunic_requirements") or Can_use("ZoraTunic", ""))",
--         "ZF Hidden Cave": "can_use(Silver_Gauntlets) and Can_blast_or_smash()"
--     }
-- },
-- {
--     "region_name": "ZF Underwater",
--     "scene": "Zoras Fountain",
--     "hint": "ZORAS_FOUNTAIN",
--     "locations": {
--         "ZF Bottom Freestanding PoH": "True",
--         "ZF Bottom Green Rupee 1": "True",
--         "ZF Bottom Green Rupee 2": "True",
--         "ZF Bottom Green Rupee 3": "True",
--         "ZF Bottom Green Rupee 4": "True",
--         "ZF Bottom Green Rupee 5": "True",
--         "ZF Bottom Green Rupee 6": "True",
--         "ZF Bottom Green Rupee 7": "True",
--         "ZF Bottom Green Rupee 8": "True",
--         "ZF Bottom Green Rupee 9": "True",
--         "ZF Bottom Green Rupee 10": "True",
--         "ZF Bottom Green Rupee 11": "True",
--         "ZF Bottom Green Rupee 12": "True",
--         "ZF Bottom Green Rupee 13": "True",
--         "ZF Bottom Green Rupee 14": "True",
--         "ZF Bottom Green Rupee 15": "True",
--         "ZF Bottom Green Rupee 16": "True",
--         "ZF Bottom Green Rupee 17": "True",
--         "ZF Bottom Green Rupee 18": "True"
--     }
-- },
-- {
--     "region_name": "ZF Hidden Cave",
--     "scene": "Zoras Fountain",
--     "hint": "ZORAS_FOUNTAIN",
--     "locations": {
--         "ZF Hidden Cave Pot 1": "True",
--         "ZF Hidden Cave Pot 2": "True",
--         "ZF Hidden Cave Pot 3": "True",
--         "ZF GS Hidden Cave": "Hookshot and at_night"
--     }
-- },
-- {
--     "region_name": "ZF Ice Ledge",
--     "scene": "Zoras Fountain",
--     "hint": "ZORAS_FOUNTAIN",
--     "exits": {
--         "Zoras Fountain": "True",
--         "Ice Cavern Beginning": "True"
--     }
-- },
-- {
--     "region_name": "ZF Great Fairy Fountain",
--     "scene": "ZF Great Fairy Fountain",
--     "locations": {
--         "ZF Great Fairy Reward": "can_play(Zeldas_Lullaby)"
--     },
--     "exits": {
--         "Zoras Fountain": "True"
--     }
-- },