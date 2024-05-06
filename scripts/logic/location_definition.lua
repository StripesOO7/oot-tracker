local child_hyrule_fields = OOTLocation.new("child_hyrule_fields")
local child_lon_lon_ranche = OOTLocation.new("child_lon_lon_ranche")
local child_lost_woods = OOTLocation.new("child_lost_woods")
local child_kokiri_forest = OOTLocation.new("child_kokiri_forest")
local child_deku_tree = OOTLocation.new("child_deku_tree")
local child_sacret_forest_maedow = OOTLocation.new("child_sacret_forest_maedow")
local child_forest_temple = OOTLocation.new("child_forest_temple")
local child_lake_hylia = OOTLocation.new("child_lake_hylia")
local child_water_temple = OOTLocation.new("child_water_temple")
local child_market = OOTLocation.new("child_market")
local child_temple_of_time = OOTLocation.new("child_temple_of_time")
local child_hyrule_castle = OOTLocation.new("child_hyrule_castle")
local child_gerudo_valley = OOTLocation.new("child_gerudo_valley")
local child_gerudo_fortes = OOTLocation.new("child_gerudo_fortes")
local child_gerudo_hideout = OOTLocation.new("child_gerudo_hideout")
local child_gerudo_training_ground = OOTLocation.new("child_gerudo_training_ground")
local child_wastelands = OOTLocation.new("child_wastelands")
local child_dessert_colossus = OOTLocation.new("child_dessert_colossus")
local child_spirit_temple = OOTLocation.new("child_spirit_temple")
local child_zora_river = OOTLocation.new("child_zora_river")
local child_zora_fountain = OOTLocation.new("child_zora_fountain")
local child_zora_domain = OOTLocation.new("child_zora_domain")
local child_lord_jabu_jabu = OOTLocation.new("child_lord_jabu_jabu")
local child_ice_cavern = OOTLocation.new("child_ice_cavern")
local child_kakariko_village = OOTLocation.new("child_kakariko_village")
local child_graveyard = OOTLocation.new("child_graveyard")
local child_shadow_temple = OOTLocation.new("child_shadow_temple")
local child_bottom_of_the_well = OOTLocation.new("child_bottom_of_the_well")
local child_death_mountain_trail = OOTLocation.new("child_death_mountain_trail")
local child_death_mountain_crater = OOTLocation.new("child_death_mountain_crater")
local child_goron_city = OOTLocation.new("child_goron_city")
local child_fire_temple = OOTLocation.new("child_fire_temple")
local child_dodongos_cavern = OOTLocation.new("child_dodongos_cavern")
local child_ganons_tower = OOTLocation.new("child_ganons_tower")
local child_ganons_castle = OOTLocation.neganons_castlew("child_ganons_castle")

local adult_hyrule_fields = OOTLocation.new("adult_hyrule_fields")
local adult_lon_lon_ranche = OOTLocation.new("adult_lon_lon_ranche")
local adult_lost_woods = OOTLocation.new("adult_lost_woods")
local adult_kokiri_forest = OOTLocation.new("adult_kokiri_forest")
local adult_deku_tree = OOTLocation.new("adult_deku_tree")
local adult_sacret_forest_maedow = OOTLocation.new("adult_sacret_forest_maedow")
local adult_forest_temple = OOTLocation.new("adult_forest_temple")
local adult_lake_hylia = OOTLocation.new("adult_lake_hylia")
local adult_water_temple = OOTLocation.new("adult_water_temple")
local adult_market = OOTLocation.new("adult_market")
local adult_temple_of_time = OOTLocation.new("adult_temple_of_time")
local adult_hyrule_castle = OOTLocation.new("adult_hyrule_castle")
local adult_gerudo_valley = OOTLocation.new("adult_gerudo_valley")
local adult_gerudo_fortes = OOTLocation.new("adult_gerudo_fortes")
local adult_gerudo_hideout = OOTLocation.new("adult_gerudo_hideout")
local adult_gerudo_training_ground = OOTLocation.new("adult_gerudo_training_ground")
local adult_wastelands = OOTLocation.new("adult_wastelands")
local adult_dessert_colossus = OOTLocation.new("adult_dessert_colossus")
local adult_spirit_temple = OOTLocation.new("adult_spirit_temple")
local adult_zora_river = OOTLocation.new("adult_zora_river")
local adult_zora_fountain = OOTLocation.new("adult_zora_fountain")
local adult_zora_domain = OOTLocation.new("adult_zora_domain")
local adult_ice_cavern = OOTLocation.new("adult_ice_cavern")
local adult_kakariko_village = OOTLocation.new("adult_kakariko_village")
local adult_graveyard = OOTLocation.new("adult_graveyard")
local adult_shadow_temple = OOTLocation.new("adult_shadow_temple")
local adult_bottom_of_the_well = OOTLocation.new("adult_bottom_of_the_well")
local adult_death_mountain_trail = OOTLocation.new("adult_death_mountain_trail")
local adult_death_mountain_crater = OOTLocation.new("adult_death_mountain_crater")
local adult_goron_city = OOTLocation.new("adult_goron_city")
local adult_fire_temple = OOTLocation.new("adult_fire_temple")
local adult_dodongos_cavern = OOTLocation.new("adult_dodongos_cavern")
local adult_ganons_tower = OOTLocation.new("adult_ganons_tower")
local adult_ganons_castle = OOTLocation.neganons_castlew("adult_ganons_castle")

-- child


child_kokiri_forest.connect_one_way(child_deku_tree)
child_kokiri_forest.connect_one_way(child_lost_woods)

child_deku_tree.connect_one_way(child_kokiri_forest)

child_lost_woods.connect_one_way(child_hyrule_fields)
child_lost_woods.connect_one_way(child_kokiri_forest)

child_hyrule_fields.connect_one_way(child_market)
child_hyrule_fields.connect_one_way(child_lost_woods)
child_hyrule_fields.connect_one_way(child_lon_lon_ranche)
child_hyrule_fields.connect_one_way(child_lake_hylia)
child_hyrule_fields.connect_one_way(child_gerudo_valley)
child_hyrule_fields.connect_one_way(child_kakariko_village)
child_hyrule_fields.connect_one_way(child_zora_river)

child_lon_lon_ranche.connect_one_way(child_hyrule_fields)

child_lake_hylia.connect_one_way(child_hyrule_fields)

child_gerudo_valley.connect_one_way(child_hyrule_fields)
child_gerudo_valley.connect_one_way(child_gerudo_training_ground)

child_gerudo_training_ground.connect_one_way(child_gerudo_valley)
child_gerudo_training_ground.connect_one_way(child_wastelands)

child_wastelands.connect_one_way(child_gerudo_training_ground)
child_wastelands.connect_one_way(child_dessert_colossus)

child_dessert_colossus.connect_one_way(child_wastelands)
child_dessert_colossus.connect_one_way(child_spirit_temple)

child_kakariko_village.connect_one_way(child_hyrule_fields)
child_kakariko_village.connect_one_way(child_graveyard)
child_kakariko_village.connect_one_way(child_death_mountain_trail)

child_graveyard.connect_one_way(child_kakariko_village)

child_death_mountain_trail.connect_one_way(child_kakariko_village)
child_death_mountain_trail.connect_one_way(child_death_mountain_crater)

child_death_mountain_crater.connect_one_way(child_death_mountain_trail)
child_death_mountain_crater.connect_one_way(child_goron_city)

child_goron_city.connect_one_way(child_death_mountain_crater)
child_goron_city.connect_one_way(child_dodongos_cavern)

child_zora_river.connect_one_way(child_hyrule_fields)
child_zora_river.connect_one_way(child_zora_fountain)

child_zora_fountain.connect_one_way(child_zora_river)
child_zora_fountain.connect_one_way(child_zora_domain)

child_zora_domain.connect_one_way(child_zora_fountain)
child_zora_domain.connect_one_way(child_lord_jabu_jabu)

child_lord_jabu_jabu.connect_one_way(child_zora_domain)

child_market.connect_one_way(child_hyrule_fields)
child_market.connect_one_way(child_temple_of_time)
child_market.connect_one_way(child_hyrule_castle)

child_hyrule_castle.connect_one_way(child_market)

adult_temple_of_time.connect_one_way(child_market)
adult_temple_of_time.connect_one_way(adult_temple_of_time)



-- adult

adult_kokiri_forest.connect_one_way(adult_lost_woods)

adult_lost_woods.connect_one_way(adult_hyrule_fields)
adult_lost_woods.connect_one_way(adult_kokiri_forest)
adult_lost_woods.connect_one_way(adult_sacret_forest_maedow)

adult_sacret_forest_maedow.connect_one_way(adult_lost_woods)
adult_sacret_forest_maedow.connect_one_way(adult_forest_temple)

adult_forest_temple.connect_one_way(adult_sacret_forest_maedow)

adult_hyrule_fields.connect_one_way(adult_market)
adult_hyrule_fields.connect_one_way(adult_lost_woods)
adult_hyrule_fields.connect_one_way(adult_lon_lon_ranche)
adult_hyrule_fields.connect_one_way(adult_lake_hylia)
adult_hyrule_fields.connect_one_way(adult_gerudo_valley)
adult_hyrule_fields.connect_one_way(adult_kakariko_village)
adult_hyrule_fields.connect_one_way(adult_zora_river)

adult_lon_lon_ranche.connect_one_way(adult_hyrule_fields)

adult_lake_hylia.connect_one_way(adult_hyrule_fields)
adult_lake_hylia.connect_one_way(adult_water_temple)

adult_water_temple.connect_one_way(adult_lake_hylia)

adult_gerudo_valley.connect_one_way(adult_hyrule_fields)
adult_gerudo_valley.connect_one_way(adult_gerudo_training_ground)

adult_gerudo_training_ground.connect_one_way(adult_gerudo_valley)
adult_gerudo_training_ground.connect_one_way(adult_wastelands)

adult_wastelands.connect_one_way(adult_gerudo_training_ground)
adult_wastelands.connect_one_way(adult_dessert_colossus)

adult_dessert_colossus.connect_one_way(adult_wastelands)
adult_dessert_colossus.connect_one_way(adult_spirit_temple)

adult_kakariko_village.connect_one_way(adult_hyrule_fields)
adult_kakariko_village.connect_one_way(adult_graveyard)
adult_kakariko_village.connect_one_way(adult_death_mountain_trail)
adult_kakariko_village.connect_one_way(adult_bottom_of_the_well)

adult_bottom_of_the_well.connect_one_way(adult_kakariko_village)

adult_graveyard.connect_one_way(adult_kakariko_village)
adult_graveyard.connect_one_way(adult_shadow_temple)

adult_shadow_temple.connect_one_way(adult_graveyard)

adult_death_mountain_trail.connect_one_way(adult_kakariko_village)
adult_death_mountain_trail.connect_one_way(adult_death_mountain_crater)

adult_death_mountain_crater.connect_one_way(adult_death_mountain_trail)
adult_death_mountain_crater.connect_one_way(adult_goron_city)
adult_death_mountain_crater.connect_one_way(adult_fire_temple)

adult_fire_temple.connect_one_way(adult_death_mountain_crater)

adult_goron_city.connect_one_way(adult_death_mountain_crater)

adult_zora_river.connect_one_way(adult_hyrule_fields)
adult_zora_river.connect_one_way(adult_zora_fountain)

adult_zora_fountain.connect_one_way(adult_zora_river)
adult_zora_fountain.connect_one_way(adult_zora_domain)

adult_zora_domain.connect_one_way(adult_zora_fountain)
adult_zora_domain.connect_one_way(adult_ice_cavern)

adult_ice_cavern.connect_one_way(adult_zora_domain)

adult_market.connect_one_way(adult_hyrule_fields)
adult_market.connect_one_way(adult_temple_of_time)
adult_market.connect_one_way(adult_ganons_castle)

adult_ganons_castle.connect_one_way(adult_market)
adult_ganons_castle.connect_one_way(adult_ganons_tower)

adult_ganons_tower.connect_one_way(adult_ganons_castle)

adult_temple_of_time.connect_one_way(adult_market)
adult_temple_of_time.connect_one_way(child_temple_of_time)