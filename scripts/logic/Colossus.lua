Child_Dessert_Colossus = OOTLocation.new("Child_Dessert_Colossus")
Child_Colossus_Great_Fairy_Fountain = OOTLocation.new("Child_Colossus_Great_Fairy_Fountain")
Child_Colossus_Grotto = OOTLocation.new("Child_Colossus_Grotto")
Child_Desert_Colossus_From_Spirit_Lobby = OOTLocation.new("Child_Desert_Colossus_From_Spirit_Lobby")

Adult_Dessert_Colossus = OOTLocation.new("Adult_Dessert_Colossus")
Adult_Colossus_Great_Fairy_Fountain = OOTLocation.new("Adult_Colossus_Great_Fairy_Fountain")
Adult_Colossus_Grotto = OOTLocation.new("Adult_Colossus_Grotto")
Adult_Desert_Colossus_From_Spirit_Lobby = OOTLocation.new("Adult_Desert_Colossus_From_Spirit_Lobby")


Child_Dessert_Colossus:connect_one_way("Colossus GS Bean Patch", function()
    return All(
        Has("Bottle"),
        CanChildAttack
    )
end)
Child_Dessert_Colossus:connect_one_way("Colossus Gossip Stone")

Adult_Dessert_Colossus:connect_one_way("Colossus Freestanding PoH", function() return Has("MagicBeans") end)
Adult_Dessert_Colossus:connect_one_way("Colossus GS Tree", function() 
    return All(
        Has("Hookshot"),
         --atnight
        )
end)
Adult_Dessert_Colossus:connect_one_way("Colossus GS Hill", function()
    return All(
        --atnight,
        Any(
            Has("Bottle"),
            Has("Longshot"),
            All(
                Has("Hookshot"),
                logic_collous_gs
            )
        )
    )
end)
Adult_Dessert_Colossus:connect_one_way("Colossus Gossip Stone")

Child_Dessert_Colossus:connect_one_way_entrance("Child Colossus Great Fairy Fountain", Child_Colossus_Great_Fairy_Fountain, function() return HasExplosives() end)
Child_Dessert_Colossus:connect_one_way_entrance("Child Spirit Temple Lobby", Child_Spirit_Temple_Lobby)
Child_Dessert_Colossus:connect_one_way_entrance("Child Wasteland Near Colossus", Child_Wasteland_Near_Colossus)

Adult_Dessert_Colossus:connect_one_way_entrance("Adult Colossus Great Fairy Fountain", Adult_Colossus_Great_Fairy_Fountain, function() return HasExplosives() end)
Adult_Dessert_Colossus:connect_one_way_entrance("Adult Spirit Temple Lobby", Adult_Spirit_Temple_Lobby)
Adult_Dessert_Colossus:connect_one_way_entrance("Adult Wasteland Near Colossus", Adult_Wasteland_Near_Colossus)
Adult_Dessert_Colossus:connect_one_way_entrance("Adult Colossus Grotto", Adult_Colossus_Grotto, function() return Has("SilverGauntlets") end)


Child_Desert_Colossus_From_Spirit_Lobby:connect_one_way("Child Sheik at Colossus")

Adult_Desert_Colossus_From_Spirit_Lobby:connect_one_way("Adult Sheik at Colossus")


Child_Desert_Colossus_From_Spirit_Lobby:connect_one_way_entrance("Child Desert Colossus", Child_Dessert_Colossus)

Adult_Desert_Colossus_From_Spirit_Lobby:connect_one_way_entrance("Adult Desert Colossus", Adult_Dessert_Colossus)

Child_Colossus_Great_Fairy_Fountain:connect_one_way("Child Colossus Great Fairy Reward", function() return CanPlay("ZeldasLullaby") end)

Adult_Colossus_Great_Fairy_Fountain:connect_one_way("Adult Colossus Great Fairy Reward", function() return CanPlay("ZeldasLullaby") end)

Child_Colossus_Great_Fairy_Fountain:connect_one_way_entrance("Child Desert Colossus", Child_Dessert_Colossus)

Adult_Colossus_Great_Fairy_Fountain:connect_one_way_entrance("Adult Desert Colossus", Adult_Dessert_Colossus)

Child_Colossus_Grotto:connect_one_way("Child Colossus Deku Scrub Grotto Rear", function() return CanStunDeku() end)
Child_Colossus_Grotto:connect_one_way("Child Colossus Deku Scrub Grotto Front", function() return CanStunDeku() end)
Child_Colossus_Grotto:connect_one_way("Child Colossus Grotto Beehive", function() return CanBreakUpperBeehive() end)
Adult_Colossus_Grotto:connect_one_way("Adult Colossus Deku Scrub Grotto Rear", function() return CanStunDeku() end)
Adult_Colossus_Grotto:connect_one_way("Adult Colossus Deku Scrub Grotto Front", function() return CanStunDeku() end)
Adult_Colossus_Grotto:connect_one_way("Adult Colossus Grotto Beehive", function() return CanBreakUpperBeehive() end)

Child_Colossus_Grotto:connect_one_way_entrance("Child Desert Colossus", Child_Dessert_Colossus)

Adult_Colossus_Grotto:connect_one_way_entrance("Adult Desert Colossus", Adult_Dessert_Colossus)
