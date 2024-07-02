function Set (list)
    local set = {}
    for _, l in ipairs(list) do set[l] = true end
    return set
  end

function A(result)
    if result then
        return AccessibilityLevel.Normal
    else
        return AccessibilityLevel.None
    end
end

function All(...)
    local args = { ... }
    local min = AccessibilityLevel.Normal
    -- print("all", args)
    for i, v in ipairs(args) do
        -- print(v, min)
        if type(v) == "boolean" then
            v = A(v)
        end
        
        if v < min then
            if v == AccessibilityLevel.None then
                return AccessibilityLevel.None
            else
                min = v
            end
        end
    end
    return min
end

function Any(...)
    local args = { ... }
    local max = AccessibilityLevel.None
    -- print("any", args)
    for i, v in ipairs(args) do
        -- print(i, v)
        if type(v) == "boolean" then
            v = A(v)
        end
        if tonumber(v) > tonumber(max) then
            if tonumber(v) == AccessibilityLevel.Normal then
                return AccessibilityLevel.Normal
            else
                max = tonumber(v)
            end
        end
    end
    return max
end

function Has(item, noKDS_amount, noKDS_amountInLogic, KDS_amount, KDS_amountInLogic)
    -- print("has", item)
    local count
    local amount
    local amountInLogic
    -- if (Tracker:FindObjectForCode("small_keys").CurrentStage == 2) and item:sub(-8,-1) == "smallkey" then -- universal keys
    --     return true
    -- end
    if false then--Tracker:FindObjectForCode("key_drop_shuffle").Active then
        -- print(KDS_amount, KDS_amountInLogic)
        amount = KDS_amount
        amountInLogic = KDS_amountInLogic
        if item:sub(-8,-1) == "smallkey" then
            count = Tracker:ProviderCountForCode(item.."_drop")
        else
            count = Tracker:ProviderCountForCode(item)
        end
    else
        count = Tracker:ProviderCountForCode(item)
        amount = noKDS_amount
        amountInLogic = noKDS_amountInLogic
    end

    -- print(item, count, amount, amountInLogic)
    if amountInLogic then
        if count >= amountInLogic then
            return AccessibilityLevel.Normal
        elseif count >= amount then
            return AccessibilityLevel.SequenceBreak
        else
            return AccessibilityLevel.None
        end
    end
    if not amount then
        return count > 0
    else
        amount = tonumber(amount)
        return count >= amount
    end
end

local _is_magic_item = Set { "DinsFire", "FaroresWind", "NayrusLove", "LensofTruth" }
local _is_adult_item = Set { "Bow", "MegatonHammer", "IronBoots", "HoverBoots", "Hookshot", "Longshot", "SilverGauntlets", "GoldenGauntlets", "GoronTunic", "ZoraTunic", "Scarecrow", "DistantScarecrow", "MirrorShield" }
local _is_child_item = Set { "Slingshot", "Boomerang", "KokiriSword", "DekuSticks", "DekuShield" }
local _is_magic_arrow = Set { "FireArrows", "LightArrows", "bluefirearrows", "IceArrows" }

function Bow()
    -- return Tracker:FindObjectForCode("Bow")
    return Has("Bow")
end
-- function Can_use("Boomerang", "")
--     -- return Tracker:FindObjectForCode("Boomerang")
--     return Has("Boomerang")
-- end
-- function Can_use("Slingshot", "")
--     -- return Tracker:FindObjectForCode("Slingshot")
--     return Has("Slingshot")
-- end
function Bombs()
    -- return Tracker:FindObjectForCode("Bombs")
    return Has("Bombs")
end
-- function Can_use("DekuShield", "")
--     -- return Tracker:FindObjectForCode("DekuShield")
--     return Has("DekuShield")
-- end
function Hylian_Shield()
    -- return Tracker:FindObjectForCode("HylianShield")
    return Has("HylianShield")
end
function Nuts()
    -- return Tracker:FindObjectForCode("DekuNuts")
    return Has("DekuNuts")
end
-- function Can_use("DekuStick", "")
--     -- return Tracker:FindObjectForCode("DekuStick")
--     return Has("DekuStick")
-- end
function Bugs()
    -- return Tracker:FindObjectForCode("Bottle")
    return Has("Bottle")
end
function Blue_Fire()
    return true --Tracker:FindObjectForCode()"'Blue Fire', Buy_Blue_Fire, (blue_fire_arrows and Can_use(Ice_Arrows))"
end
function Fish()
    -- return Tracker:FindObjectForCode("Bottle")
    return Has("Bottle")
end
function Fairy()
    -- return Tracker:FindObjectForCode("Bottle")
    return Has("Bottle")
end
function Big_Poe()
    return true --Tracker:FindObjectForCode()"'Big Poe'"
end

-- function Can_use("Hookshot", "")
--     -- return Tracker:FindObjectForCode("Hookshot")
--     return Has("Hookshot")
-- end
-- function Can_use("Longshot", "")
--     -- return Tracker:FindObjectForCode("Longshot")
--     return Has("Longshot")
-- end
-- function Can_use("SilverGauntlets", "")
--     -- return Tracker:FindObjectForCode("SilverGauntlet")
--     return Has("SilverGauntlet")
-- end
-- function Golden_Gauntlets()
--     -- return Tracker:FindObjectForCode("GoldenGauntlet")
--     return Has("GoldenGauntlet")
-- end
-- function Can_use("GoronTunic", "")
--     -- return Tracker:FindObjectForCode("GoronTunic")
--     return Has("GoronTunic")
-- end
-- function Can_use("ZoraTunic", "")
--     -- return Tracker:FindObjectForCode("ZoraTunic")
--     return Has("ZoraTunic")
-- end

function Is_glitched()
    return (Tracker:FindObjectForCode("logic_rules").CurrentStage ~= 0)
end

function Can_blast_or_smash(age)
    return Any(
        Has_explosives(),
        Can_use("MegatonHammer", age)
    )
    -- "Has_explosives, Can_use(Megaton_Hammer)"
end

function Can_child_attack(age)
    return All(
        age == "child",
        Any(
            Has("Slingshot"),
            Has("Boomerang"),
            Has("DekuStick"),
            Can_use("KokiriSword", age),
            Has_explosives(),
            Can_use("DinsFire", age)
        )
    )
    -- "age == "child" and (Slingshot, Boomerang, Sticks, Kokiri_Sword, Has_explosives, Can_use(Dins_Fire))"
end

function Can_child_damage(age)
    if age == "child"then
        return Any(
            Has("Slingshot"),
            Has("DekuStick"),
            Can_use("KokiriSword", ""),
            Has_explosives(),
            Can_use("DinsFire", age)
        )
    else
        return false
    end
    -- "age == "child" and (Slingshot, Sticks, Kokiri_Sword, Has_explosives, Can_use(Dins_Fire))"
end

function Can_cut_shrubs(age)
    if age == "adult" then
        return true
    elseif age == "child" then
        return Any(
            Can_use("DekuStick", age),
            Can_use("KokiriSword", age),
            Can_use("Boomerang", age),
            Has_explosives()
        )
    else
        return false
    end
    -- "age == "adult", Sticks, Kokiri_Sword, Boomerang, Has_explosives"
end

function Can_dive()
    return Has("ProgressiveScale")
    -- "Progressive_Scale"
end

function Can_leave_forest(age)
    if age == "adult" then
        return true
    else
        return Any(
            Tracker:FindObjectForCode("open_forest").CurrentStage ~= 2,
            age == "adult",
            Is_glitched(),
            All(
                Any(
                    CanReach(Child_Queen_Gohma_Boss_Room),
                    CanReach(Adult_Queen_Gohma_Boss_Room)
                ),
                Any(
                    Can_use("Nuts", age),
                    Can_use("Slingshot", age)
                ),
                Can_jumpslash(age)
            )
        )
        -- "open_forest != 'closed', age == "adult", Is_glitched, Deku_Tree_Clear"
    end
end

function Can_plant_bugs(age)
    return All(
        Has("Bugs"),
        age == "child"
    )
    -- "is_child and Bugs"
end

function Can_ride_epona(age)
    return All(
        All(
            CanReach(Adult_Lon_Lon_Ranch),
            Can_play("EponasSong"),
            -- at_day,
            age  == 'adult'
        ),
        Any(
            Can_play("EponasSong"),
            All(
                Is_glitched(),
                Can_hover(age)
                )
            )
        )
    -- "age == "adult" and Epona and (Can_play(Eponas_Song), (Is_glitched and Can_hover))"
end

function Can_stun_deku(age)
    return Any(
        Has("Slingshot"),
        Has("Boomerang"),
        Has("DekuStick"),
        Can_use("KokiriSword", age),
        Has_explosives(),
        Can_use("DinsFire", age),
        Has("Nuts"),
        Has("DekuShield")
    )
    -- "age == "adult", (Slingshot, Boomerang, Sticks, Kokiri_Sword, Has_explosives, Can_use(Dins_Fire), , ageNuts, Deku_Shield)"
end

function Can_summon_gossip_fairy(age)
    return All(
        Tracker:FindObjectForCode("Ocarina").Active,
        Any(
            Has("ZeldasLullaby"),
            Has("EponasSong"),
            Has("SongofTime"),
            Has("SunsSong")
        )
    )
    -- "Ocarina and (Zeldas_Lullaby, Eponas_Song, Song_of_Time, Suns_Song)"
end

function Can_summon_gossip_fairy_without_suns(age)
    return All(
        Tracker:FindObjectForCode("Ocarina").Active,
        Any(
            Has("ZeldasLullaby"),
            Has("EponasSong"),
            Has("SongofTime")
        )
    )
    -- "Ocarina and (Zeldas_Lullaby, Eponas_Song, Song_of_Time)"
end

function Can_take_damage(age)
    return Any(
        Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4,
        Fairy,
        Can_use("NayrusLove", age)
    )
    -- "Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4, Fairy, Can_use(Nayrus_Love)"
end

function Can_plant_bean(age)
    -- print("Can_plant_bean")
    return Any(
        Has("plant_beans"),
        All(
            age == "child",
            Has("MagicBean")
        )
    )
    -- "plant_beans, (age == "child" and _oot_Has_beans)"
end

function Can_play(song)
    -- print("can_play", song)
    -- print(Tracker:FindObjectForCode("Ocarina").Active, Has(song))
    -- print(Tracker:ProviderCountForCode("Ocarina"), Tracker:ProviderCountForCode(song))
    -- print(Tracker:FindObjectForCode("Ocarina").Active, Tracker:FindObjectForCode(song).Active)
    return All(
        Tracker:FindObjectForCode("Ocarina").Active,
        Has(song)
    )
    -- "Ocarina and song
end

function Can_open_bomb_grotto(age)
    return All(
        Can_blast_or_smash(age),
        Any(
            Has("StoneofAgony"),
            Has("logic_grottos_without_agony")
        )
    )
    -- "Can_blast_or_smash and (Stone_of_Agony, logic_grottos_without_agony)"
end

function Can_open_storm_grotto(age)
    return All(
        Can_play("SongofStorms"),
        Any(
            Has("StoneofAgony"),
            Has("logic_grottos_without_agony")
        )
    )
    -- "Can_play(Song_of_Storms) and (Stone_of_Agony, logic_grottos_without_agony)"
end

function Has_projectile(age)
    if Has_explosives() then 
        return true
    elseif age == "child" then
        return Any(
            Can_use("Slingshot", age),
            Can_use("Boomerang", age)
        )
    elseif age == "adult" then
        return Any(
            Can_use("Bow", age),
            Can_use("Hookshot", age)
        )
    elseif age == "both" then
        return All(
            Any(
                Can_use("Slingshot", age),
                Can_use("Boomerang", age)
            ),
            Any(
                Can_use("Bow", age),
                Can_use("Hookshot", age)
            )
        )
    elseif age == "either" then
        Any(
            Can_use("Slingshot", age),
            Can_use("Boomerang", age),
            Can_use("Bow", age),
            Can_use("Hookshot", age)
        )
    else 
        return false
    end
end

function Can_use_projectile(age)
    return Any(
        Has_explosives(),
        All(
            age == "adult",
            Any(
                Can_use("Bow", age),
                Can_use("Hookshot", age)
            )
        ),
        All(
            age == "child",
            Any(
                Can_use("Slingshot", age),
                Can_use("Boomerang", age)
            )
        )
    )
-- "Has_explosives, (age == "adult" and (Bow, Hookshot)), (age == "child" and (Slingshot, Boomerang))"
end

function Scarecrow(age)
    if age == "adult" then
        return All(
            Can_use("Hookshot", age)
            -- Can_play(ScarecrowSong)
        )
    else
        return false
    end
end

function Distant_Scarecrow(age)
    if age == "adult" then
        return All(
            Can_use("Longshot", age)
            -- Can_play(ScarecrowSong)
        )
    else
        return false
    end
end

function Can_use(item, age) 
    if _is_magic_item[item] then
        return All(
            Has(item),
            Tracker:FindObjectForCode("MagicMeter").Active
        )
    elseif _is_adult_item[item] then
        return All(
            age == "adult",
            Has(item)
        )
    elseif _is_magic_arrow[item] then
        return All(
            age == "adult",
            Has(item),
            Can_use("Bow", age),
            Tracker:FindObjectForCode("MagicMeter").Active
        )
    elseif _is_child_item[item] then
        return All(
            age == "child",
            Has(item)
        )
    else
        return false
    end
end


function Can_bonk(age)
    return Any(
        Tracker:FindObjectForCode("deadly_bonks").CurrentStage ~= 5,
        -- Fairy,
        Can_use("NayrusLove", age)
    )
end

function Can_break_crate(age)
    return Any(
        Can_bonk(age),
        Can_blast_or_smash(age)
    )
end

function Can_break_heated_crate(age)
    return Any(
        Tracker:FindObjectForCode("deadly_bonks").CurrentStage ~= 5,
        All(
            -- Fairy,
            Any(
                Can_use("GoronTunic", age),
                Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4
            )
        ),
        Can_use("NayrusLove", age),
        Can_blast_or_smash(age)
    )
end

function Can_break_lower_beehive(age)
    return Any(
        Can_use("Boomerang", age),
        Can_use("Hookshot", age),
        Bombs(),
        All(
            Has("logic_beehives_bombchus"),
            Has_bombchus()
        )
    )
end

function Can_break_upper_beehive(age)
    return Any(
        Can_use("Boomerang", age),
        Can_use("Hookshot", age),
        All(
            Has("logic_beehives_bombchus"),
            Has_bombchus()
        )
    )
end

function Has_bombchus()
    return All(
        Has("Bombchus"),
        Any(
            Has("bombchus_in_logic"),
            Has("Bombs")
        )
    )
end

function Has_explosives()
    return Any(
        Bombs(),
        All(
            Has("bombchus_in_logic"),
            Has_bombchus()
        )
    )
end

function Has_all_stones()
    return All(
        Has("KokiriEmerald"),
        Has("GoronRuby"),
        Has("ZoraSapphire")
    )
end

function Has_all_medallions()
    return All(
        Has("ForestMedallion"),
        Has("FireMedallion"),
        Has("WaterMedallion"),
        Has("ShadowMedallion"),
        Has("SpiritMedallion"),
        Has("LightMedallion")
    )
end

function Can_build_rainbow_bridge()
    -- bridge = Tracker:FindObjectForCode("bridge_req").CurrentStage
    -- if bridge == 1 then
    --     return true
    -- elseif bridge == 2 then
    --     return All(
    --         Has("ShadowMedallion"),
    --         Has("SpiritMedallion"),
    --         Has("LightArrows")
    --     )
    -- elseif bridge == 3 then
    --     return _oot_Has_stones(bridge_stones)
    -- elseif bridge == 4 then
    --     return _oot_Has_medallions(bridge_medallions)
    -- elseif bridge == 5 then
    --     return _oot_Has_dungeon_rewards(bridge_rewards)
    -- elseif bridge == 6 then
    --     return (Gold_Skulltula_Token, bridge_tokens)
    -- elseif bridge > 5 then
    --     return _oot_Has_hearts(bridge_hearts)
    -- else
    --     return false
    -- end
    return true
end

function Can_trigger_lacs()
    -- lacs = Tracker:FindObjectForCode("lacs_condition").CurrentStage
    -- if lacs == 1 then
    --     return All(
    --         Has("ShadowMedallion"),
    --         Has("SpiritMedallion")
    --     )
    -- elseif lacs == 2 then
    --     return _oot_Has_stones(lacs_stones)
    -- elseif lacs == 3 then
    --     return _oot_Has_medallions(lacs_medallions)
    -- elseif lacs == 4 then
    --     return _oot_Has_dungeon_rewards(lacs_rewards)
    -- elseif lacs == 5 then
    --     return (Gold_Skulltula_Token, lacs_tokens)
    -- elseif lacs == 6 then
    --     return _oot_Has_hearts(lacs_hearts)
    -- else
    --     return false
            
    -- end
    return true
end

function Can_receive_ganon_bosskey()
--     ganon_bosskey = Tracker:FindObjectForCode("shuffle_ganon_bosskey").CurrentStage
--     if ganon_bosskey == then
--         return _oot_Has_stones(ganon_bosskey_stones)
--     elseif ganon_bosskey == then
--         return _oot_Has_medallions(ganon_bosskey_medallions)
--     elseif ganon_bosskey == then
--         return _oot_Has_dungeon_rewards(ganon_bosskey_rewards)
--     elseif ganon_bosskey == then
--         return (Gold_Skulltula_Token, ganon_bosskey_tokens)
--     elseif ganon_bosskey == then
--         return _oot_Has_hearts(ganon_bosskey_hearts)
--     elseif ganon_bosskey == then
--         return (Triforce_Piece, triforce_goal_per_world)
--     else
--         return true
--     end  
--     ((shuffle_ganon_bosskey == 'stones' and _oot_Has_stones(ganon_bosskey_stones)),
-- (shuffle_ganon_bosskey == 'medallions' and _oot_Has_medallions(ganon_bosskey_medallions)),
-- (shuffle_ganon_bosskey == 'dungeons' and _oot_Has_dungeon_rewards(ganon_bosskey_rewards)),
-- (shuffle_ganon_bosskey == 'tokens' and (Gold_Skulltula_Token, ganon_bosskey_tokens)),
-- (shuffle_ganon_bosskey == 'hearts' and _oot_Has_hearts(ganon_bosskey_hearts))),
-- (shuffle_ganon_bosskey == 'triforce' and (Triforce_Piece, triforce_goal_per_world)),
-- (shuffle_ganon_bosskey != 'stones' and shuffle_ganon_bosskey != 'medallions' and
-- shuffle_ganon_bosskey != 'dungeons' and shuffle_ganon_bosskey != 'tokens' and
-- shuffle_ganon_bosskey != 'hearts' and shuffle_ganon_bosskey != 'triforce')
return true
end

-- function()

-- end

-- function()

-- end

function Can_finish_GerudoFortress(age)
    local gf = Tracker:FindObjectForCode("gerudo_fortress")
    if gf ~= nil then
        if gf.CurrentStage == 0 then
            if age == 'child'then
                return All(
                    CanReach("Child Hideout 1 Torch Jail Gerudo Key"),
                    CanReach("Child Hideout 2 Torches Jail Gerudo Key"),
                    CanReach("Child Hideout 3 Torches Jail Gerudo Key"),
                    CanReach("Child Hideout 4 Torches Jail Gerudo Key"),
                    Any(
                        All(
                            gf.CurrentStage == 0,
                            Has("Small_Key_Thieves_Hideout", 4)
                        ),
                        All(
                            gf.CurrentStage == 1,
                            Has("Small_Key_Thieves_Hideout")
                        )
                    )
                )
            elseif age == 'adult' then
                return All(
                    CanReach("Adult Hideout 1 Torch Jail Gerudo Key"),
                    CanReach("Adult Hideout 2 Torches Jail Gerudo Key"),
                    CanReach("Adult Hideout 3 Torches Jail Gerudo Key"),
                    CanReach("Adult Hideout 4 Torches Jail Gerudo Key"),
                    Any(
                        All(
                            gf.CurrentStage == 0,
                            Has("Small_Key_Thieves_Hideout", 4)
                        ),
                        All(
                            gf.CurrentStage == 1,
                            Has("Small_Key_Thieves_Hideout")
                        )
                    )
                )
            else
                return false
            end
        --         'Hideout 1 Torch Jail Carpenter' and 'Hideout 2 Torches Jail Carpenter'
        -- and 'Hideout 3 Torches Jail Carpenter' and 'Hideout 4 Torches Jail Carpenter'
        elseif gf.CurrentStage == 1 then
            if age == 'child' then
                return All(
                    CanReach("Child Hideout 1 Torch Jail Gerudo Key"),
                    Any(
                            All(
                                gf.CurrentStage == 0,
                                Has("Small_Key_Thieves_Hideout", 4)
                            ),
                            All(
                                gf.CurrentStage == 1,
                                Has("Small_Key_Thieves_Hideout")
                            )
                        )
                    )
            elseif age == 'adult' then
                return All(
                    CanReach("Adult Hideout 1 Torch Jail Gerudo Key"),
                    Any(
                            All(
                                gf.CurrentStage == 0,
                                Has("Small_Key_Thieves_Hideout", 4)
                            ),
                            All(
                                gf.CurrentStage == 1,
                                Has("Small_Key_Thieves_Hideout")
                            )
                        )
                    )
            else
                return false
            end
            -- return 'Hideout 1 Torch Jail Carpenter'
        elseif gf.CurrentStage == 2 then
            return true
        else
            return false
        end
    end
--     (gerudo_fortress == 'normal' and
--     'Hideout 1 Torch Jail Carpenter' and 'Hideout 2 Torches Jail Carpenter'
--     and 'Hideout 3 Torches Jail Carpenter' and 'Hideout 4 Torches Jail Carpenter')
-- or (gerudo_fortress == 'fast' and 'Hideout 1 Torch Jail Carpenter')
-- or (gerudo_fortress != 'normal' and gerudo_fortress != 'fast')",
end

-- # Mirror shield does not count because it Cannot reflect scrub attack.
function Has_shield(age)
    return Any(
        All(
            age == "adult",
            Hylian_Shield()
        ),
        All(
            age == "child",
            Can_use("DekuShield", age)
        )
    )
end

function Can_shield(age)
    return Any(
        All(
            age == "adult",
            Any(
                Hylian_Shield(),
                Has("MirrorShield")
            )
        ),
        All(
            age == "child",
            Can_use("DekuShield", age)
        )
    )
end

function Can_mega(age)
    return All(
        Has_explosives(),
        Can_shield(age)
    )
end

function Can_isg(age)
    return All(
        Can_shield(age),
        Any(
            age == "adult",
            Can_use("DekuStick", age),
            Can_use("KokiriSword", age)
        )
    )
end

function Can_hover(age)
    return All(
        Can_mega(age),
        Can_isg(age)
    )
end

function Can_weirdshot(age)
    return All(
        Can_mega(age),
        Can_use("Hookshot", age)
    )
end

function Can_jumpslash(age)
    return Any(
        age == "adult",
        Can_use("DekuStick", age),
        Can_use("KokiriSword", age)
    )
end

-- function deku_tree_shortcuts()
--     return "'Deku Tree' in dungeon_shortcuts"
-- end
-- function dodongos_cavern_shortcuts()
--     return "'Dodongos Cavern' in dungeon_shortcuts"
-- end
-- function jabu_shortcuts()
--     return "'Jabu Jabus Belly' in dungeon_shortcuts"
-- end
-- function forest_temple_shortcuts()
--     return "'Forest Temple' in dungeon_shortcuts"
-- end
-- function fire_temple_shortcuts()
--     return "'Fire Temple' in dungeon_shortcuts"
-- end
-- function shadow_temple_shortcuts()
--     return "'Shadow Temple' in dungeon_shortcuts"
-- end
-- function spirit_temple_shortcuts()
--     return "'Spirit Temple' in dungeon_shortcuts"
-- end
-- function king_dodongo_shortcuts()
--     return "region_Has_shortcuts('King Dodongo Boss Room')"
-- end


function Guarantee_trade_path(age)
    local gc
    local dmc
    if age == 'child' then
        gc = "Child_Goron_City"
        dmc = "Child_DMC_Central_Local"
    elseif age == 'adult' then
        gc = "Adult_Goron_City"
        dmc = "Adult_DMC_Central_Local"
    else
        return false
    end

    return Any(
        -- disable_trade_revert,
        Can_blast_or_smash(age),
        All(
            CanReach(gc),
            All(
                age == 'adult',
                Any(
                    Has("ProgressiveStrengthUpgrade"),
                    Has_explosives(),
                    Can_use("Bow", age),
                    All(
                        Has("logic_link_goron_dins"),
                        Can_use("DinsFire", age)
                    )
                )
            )
        ),
        All(
            Has("logic_dmt_climb_hovers"),
            Can_use("HoverBoots", age)
        ),
        All(
            Has("logic_biggoron_bolero"),
            not Has("warp_songs"),
            Can_play("BoleroofFire"),
            All(
                CanReach(dmc),
                Can_use("Hookshot", age),
                Can_use("HoverBoots", age),
                Can_plant_bean(age)
            )
        )
    )
end
-- function guarantee_hint()
--     "(hints == 'mask' and Mask_of_Truth), (hints == 'agony' and Stone_of_Agony), (hints != 'mask' and hints != 'agony')",
-- end
function Has_fire_source(age)
    return Any(
        Can_use("DinsFire", age),
        Can_use("FireArrows", age)
    )
end
function Has_fire_source_with_torch(age)
    return Any(
        Has_fire_source(age),
        All(
            age == "child",
            Can_use("DekuStick", age)
        )
    )
end
-- "found_bombchus": "(bombchus_in_logic and (Bombchus, Bombchus_5, Bombchus_10, Bombchus_20)), (not bombchus_in_logic and Bomb_Bag)",
-- "age == "child"": "current_spot_child_access",
-- "age == "adult"": "current_spot_adult_access",
-- "is_starting_age": "current_spot_starting_age_access",
