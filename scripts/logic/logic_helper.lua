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
    for i, v in ipairs(args) do
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
    for i, v in ipairs(args) do
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
    local count
    local amount
    local amountInLogic
    if (Tracker:FindObjectForCode("small_keys").CurrentStage == 2) and item:sub(-8,-1) == "smallkey" then -- universal keys
        return true
    end
    if Tracker:FindObjectForCode("key_drop_shuffle").Active then
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

function Bow()
    return Tracker:FindObjectForCode("Bow")
end
function Boomerang()
    return Tracker:FindObjectForCode("Boomerang")
end
function Slingshot()
    return Tracker:FindObjectForCode("Slingshot")
end
function Bombs()
    return Tracker:FindObjectForCode("Bombs")
end
function Deku_Shield()
    return Tracker:FindObjectForCode("DekuShield")
end
function Hylian_Shield()
    return Tracker:FindObjectForCode("HylianShield")
end
function Nuts()
    return Tracker:FindObjectForCode("DekuNuts")
end
function Sticks()
    return Tracker:FindObjectForCode("DekuStick")
end
function Bugs()
    return Tracker:FindObjectForCode("Bottle")
end
function Blue_Fire()
    return Tracker:FindObjectForCode()"'Blue Fire' or Buy_Blue_Fire or (blue_fire_arrows and Can_use(Ice_Arrows))"
end
function Fish()
    return Tracker:FindObjectForCode("Bottle")
end
function Fairy()
    return Tracker:FindObjectForCode("Bottle")
end
function Big_Poe()
    return Tracker:FindObjectForCode()"'Big Poe'"
end

function Hookshot()
    return Tracker:FindObjectForCode("Hookshot")
end
function Longshot()
    return Tracker:FindObjectForCode("Longshot")
end
function Silver_Gauntlets()
    return Tracker:FindObjectForCode("SilverGauntlet")
end
function Golden_Gauntlets()
    return Tracker:FindObjectForCode("GoldenGauntlet")
end
function Goron_Tunic()
    return Tracker:FindObjectForCode("GoronTunic")
end
function Zora_Tunic()
    return Tracker:FindObjectForCode("ZoraTunic")
end

function is_glitched()
    return Tracker:FindObjectForCode("logic_rules").CurrentStage ~= 0
end

-- function Can_use(item)
--     "(_is_magic_item(item) and item and Magic_Meter)"
--     or (_is_adult_item(item) and is_adult and item)
--     or (_is_magic_arrow(item) and is_adult and item and Bow and Magic_Meter)
--     or (_is_child_item(item) and is_child and item)"",--age
-- end

function Can_blast_or_smash()
    return Any(
        Has_explosives(),
        Can_use("MegatonHammer")
    )
    -- "Has_explosives or Can_use(Megaton_Hammer)"
end

function Can_child_attack()
    return Any(
        Has("Slingshot"),
        Has("Boomerang"),
        Has("Sticks"),
        Has("KokiriSword"),
        Has_explosives(),
        Can_use("DinsFire")
    )
    -- "is_child and (Slingshot or Boomerang or Sticks or Kokiri_Sword or Has_explosives or Can_use(Dins_Fire))"
end

function Can_child_damage()
    return Any(
        Has("Slingshot"),
        Has("Sticks"),
        Has("KokiriSword"),
        Has_explosives(),
        Can_use("DinsFire")
    )
    -- "is_child and (Slingshot or Sticks or Kokiri_Sword or Has_explosives or Can_use(Dins_Fire))"
end

function Can_cut_shrubs(age)
    if age == "adult" then
        return true
    elseif age == "child" then
        return Any(
            Has("Sticks"),
            Has("KokiriSword"),
            Has("Boomerang"),
            Has_explosives()
        )
    else
        return false
    end
    -- "is_adult or Sticks or Kokiri_Sword or Boomerang or Has_explosives"
end

function Can_dive()
    return Has("ProgressiveScale")
    "Progressive_Scale"
end

function Can_leave_forest(age)
    if age == "adult" then
        return true
    else
        return Any(
            open_forest != 'closed',
            is_adult,
            is_glitched(),
            Deku_Tree_Clear
        )
        -- "open_forest != 'closed' or is_adult or is_glitched or Deku_Tree_Clear"
    end
end

function Can_plant_bugs()
    return Has("Bugs")
    "is_child and Bugs"
end

function Can_ride_epona()
    return All(
        Epona(),
        Any(
            Can_play("EponasSong"),
            All(
                is_glitched(),
                Can_hover()
                )
            )
        )
    -- "is_adult and Epona and (Can_play(Eponas_Song) or (is_glitched and Can_hover))"
end

function Can_stun_deku()
    return Any(
        Has("Slingshot"),
        Has("Boomerang"),
        Has("Sticks"),
        Has("Kokiri_Sword"),
        Has_explosives(),
        Can_use("DinsFire"),
        Has("Nuts"),
        Has("Deku_Shield")
    )
    -- "is_adult or (Slingshot or Boomerang or Sticks or Kokiri_Sword or Has_explosives or Can_use(Dins_Fire) or Nuts or Deku_Shield)"
end

function Can_summon_gossip_fairy()
    return All(
        Has("Ocarina"),
        Any(
            Has("ZeldasLullaby"),
            Has("EponasSong"),
            Has("SongofTime"),
            Has("SunsSong")
        )
    )
    -- "Ocarina and (Zeldas_Lullaby or Eponas_Song or Song_of_Time or Suns_Song)"
end

function Can_summon_gossip_fairy_without_suns()
    return All(
        Has("Ocarina"),
        Any(
            Has("ZeldasLullaby"),
            Has("EponasSong"),
            Has("SongofTime")
        )
    )
    -- "Ocarina and (Zeldas_Lullaby or Eponas_Song or Song_of_Time)"
end

function Can_take_damage()
    return Any(
        damage_multiplier != 'ohko',
        Fairy,
        Can_use("NayrusLove")
    )
    -- "damage_multiplier != 'ohko' or Fairy or Can_use(Nayrus_Love)"
end

function Can_plant_bean()
    return Any(
        Has("plant_beans"),
        All(
            is_child,
            _oot_Has_beans
        )
    )
    -- "plant_beans or (is_child and _oot_Has_beans)"
end

function Can_play(song)
    return All(
        Has("Ocarina"),
        Has(song)
    )
    -- "Ocarina and song
end

function Can_open_bomb_grotto()
    return All(
        Can_blast_or_smash(),
        Any(
            Has("StoneofAgony"),
            Tracker:FindObjectForCode("logic_grottos_without_agony")
        )
    )
    -- "Can_blast_or_smash and (Stone_of_Agony or logic_grottos_without_agony)"
end

function Can_open_storm_grotto()
    return All(
        Can_play("SongofStorms"),
        Any(
            Has("StoneofAgony"),
            Tracker:FindObjectForCode("logic_grottos_without_agony")
        )
    )
    -- "Can_play(Song_of_Storms) and (Stone_of_Agony or logic_grottos_without_agony)"
end

function Has_projectile(for_age)
    if Has_explosives() then 
        return true
    elseif for_age == "child" then
        return Any(
            Slingshot(),
            Boomerang()
        )
    elseif for_age == "adult" then
        return Any(
            Bow(),
            Hookshot()
        )
    elseif for_age == "both" then
        return All(
            Any(
                Slingshot(),
                Boomerang()
            ),
            Any(
                Bow(),
                Hookshot()
            )
        )
    elseif for_age == "either" then
        Any(
            Slingshot(),
            Boomerang(),
            Bow(),
            Hookshot()
        )
    else 
        return false
    end
end

function Can_use_projectile()
    return Any(
        Has_explosives(),
        All(
            is_adult,
            Any(
                Bow(),
                Hookshot()
            )
        ),
        All(
            is_child,
            Any(
                Slingshot(),
                Boomerang()
            )
        )
    )
-- "Has_explosives or (is_adult and (Bow or Hookshot)) or (is_child and (Slingshot or Boomerang))"
end

function Scarecrow()
    return All(
        Hookshot(),
        Can_play(ScarecrowSong)
    )
end

function Distant_Scarecrow()
    return All(
        Longshot(),
        Can_play(ScarecrowSong)
    )
end

function Can_bonk()
    return Any(
        deadly_bonks != 'ohko',
        Fairy,
        Can_use("NayrusLove")
    )
end

function Can_break_crate()
    return Any(
        Can_bonk(),
        Can_blast_or_smash()
    )
end

function Can_break_heated_crate()
    return Any(
        deadly_bonks != 'ohko',
        All(
            Fairy,
            Any(
                Can_use("GoronTunic"),
                damage_multiplier != 'ohko'
            )
        ),
        Can_use("NayrusLove"),
        Can_blast_or_smash()
    )
end

function Can_break_lower_beehive()
    return Any(
        Can_use("Boomerang"),
        Can_use("Hookshot"),
        Bombs,
        All(
            Tracker:FindObjectForCode("logic_beehives_bombchus"),
            Has_bombchus()
        )
    )
end

function Can_break_upper_beehive()
    return Any(
        Can_use("Boomerang"),
        Can_use("Hookshot"),
        All(
            Tracker:FindObjectForCode("logic_beehives_bombchus"),
            Has_bombchus()
        )
    )
end

function Has_bombchus()
    return All(
        Any(
            Buy_Bombchu_5,
            Buy_Bombchu_10,
            Buy_Bombchu_20,
            Bombchu_Drop
        ),
        Any(
            bombchus_in_logic,
            Bomb_Bag
        )
    )
end

function Has_explosives()
    return Any(
        Bombs(),
        All(
            Tracker:FindObjectForCode("bombchus_in_logic"),
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
    bridge = Tracker:FindObjectForCode("bridge_req").CurrentStage
    if bridge == 1 then
        return true
    elseif bridge == 2 then
        return All(
            Has("ShadowMedallion"),
            Has("SpiritMedallion"),
            Has("LightArrows")
        )
    elseif bridge == 3 then
        return _oot_Has_stones(bridge_stones)
    elseif bridge == 4 then
        return _oot_Has_medallions(bridge_medallions)
    elseif bridge == 5 then
        return _oot_Has_dungeon_rewards(bridge_rewards)
    elseif bridge == 6 then
        return (Gold_Skulltula_Token, bridge_tokens)
    elseif bridge == 7 then
        return _oot_Has_hearts(bridge_hearts)
    else
        return false
    end
end

function Can_trigger_lacs()
    lacs = Tracker:FindObjectForCode("lacs_condition").CurrentStage
    if lacs == 1 then
        return All(
            Has("ShadowMedallion"),
            Has("SpiritMedallion")
        )
    elseif lacs == 2 then
        return _oot_Has_stones(lacs_stones)
    elseif lacs == 3 then
        return _oot_Has_medallions(lacs_medallions)
    elseif lacs == 4 then
        return _oot_Has_dungeon_rewards(lacs_rewards)
    elseif lacs == 5 then
        return (Gold_Skulltula_Token, lacs_tokens)
    elseif lacs == 6 then
        return _oot_Has_hearts(lacs_hearts)
    else
        return false
            
    end
end

function Can_receive_ganon_bosskey()
    ganon_bosskey = Tracker:FindObjectForCode("shuffle_ganon_bosskey").CurrentStage
    if ganon_bosskey == then
        return _oot_Has_stones(ganon_bosskey_stones)
    elseif ganon_bosskey == then
        return _oot_Has_medallions(ganon_bosskey_medallions)
    elseif ganon_bosskey == then
        return _oot_Has_dungeon_rewards(ganon_bosskey_rewards)
    elseif ganon_bosskey == then
        return (Gold_Skulltula_Token, ganon_bosskey_tokens)
    elseif ganon_bosskey == then
        return _oot_Has_hearts(ganon_bosskey_hearts)
    elseif ganon_bosskey == then
        return (Triforce_Piece, triforce_goal_per_world)
    else
        return true
    end  
    ((shuffle_ganon_bosskey == 'stones' and _oot_Has_stones(ganon_bosskey_stones)) or
(shuffle_ganon_bosskey == 'medallions' and _oot_Has_medallions(ganon_bosskey_medallions)) or
(shuffle_ganon_bosskey == 'dungeons' and _oot_Has_dungeon_rewards(ganon_bosskey_rewards)) or
(shuffle_ganon_bosskey == 'tokens' and (Gold_Skulltula_Token, ganon_bosskey_tokens)) or
(shuffle_ganon_bosskey == 'hearts' and _oot_Has_hearts(ganon_bosskey_hearts))) or
(shuffle_ganon_bosskey == 'triforce' and (Triforce_Piece, triforce_goal_per_world)) or
(shuffle_ganon_bosskey != 'stones' and shuffle_ganon_bosskey != 'medallions' and
shuffle_ganon_bosskey != 'dungeons' and shuffle_ganon_bosskey != 'tokens' and
shuffle_ganon_bosskey != 'hearts' and shuffle_ganon_bosskey != 'triforce')
end

function ()

end

function ()

end

function Can_finish_GerudoFortress()
    (gerudo_fortress == 'normal' and
    'Hideout 1 Torch Jail Carpenter' and 'Hideout 2 Torches Jail Carpenter'
    and 'Hideout 3 Torches Jail Carpenter' and 'Hideout 4 Torches Jail Carpenter')
or (gerudo_fortress == 'fast' and 'Hideout 1 Torch Jail Carpenter')
or (gerudo_fortress != 'normal' and gerudo_fortress != 'fast')",
end

# Mirror shield does not count because it Cannot reflect scrub attack.
function Has_shield()
    Any(
        All(
            is_adult,
            Hylian_Shield()
        ),
        All(
            is_child,
            Deku_Shield()
        )
    )
end

function Can_shield()
    Any(
        All(
            is_adult,
            Any(
                Hylian_Shield(),
                Has("MirrorShield")
            )
        ),
        All(
            is_child,
            Deku_Shield()
        )
    )
end

function Can_mega()
    All(
        Has_explosives(),
        Can_shield()
    )
end

function Can_isg()
    All(
        Can_shield(),
        Any(
            is_adult,
            Sticks(),
            Has("KokiriSword")
        )
    )
end

function Can_hover()
    return All(
        Can_mega(),
        Can_isg()
    )
end

function Can_weirdshot()
    All(
        Can_mega(),
        Can_use("Hookshot")
    )
end

function Can_jumpslash()
    Any(
        is_adult,
        Sticks(),
        Has("KokiriSword")
    )
end

function deku_tree_shortcuts()
    return "'Deku Tree' in dungeon_shortcuts",
end
function dodongos_cavern_shortcuts()
    return "'Dodongos Cavern' in dungeon_shortcuts",
end
function jabu_shortcuts()
    return "'Jabu Jabus Belly' in dungeon_shortcuts",
end
function forest_temple_shortcuts()
    return "'Forest Temple' in dungeon_shortcuts",
end
function fire_temple_shortcuts()
    return "'Fire Temple' in dungeon_shortcuts",
end
function shadow_temple_shortcuts()
    return "'Shadow Temple' in dungeon_shortcuts",
end
function spirit_temple_shortcuts()
    return "'Spirit Temple' in dungeon_shortcuts",
end
function king_dodongo_shortcuts()
    return "region_Has_shortcuts('King Dodongo Boss Room')"
end


-- function guarantee_trade_path()
--     "disable_trade_revert or Can_blast_or_smash or 'Stop GC Rolling Goron as Adult' or (logic_dmt_climb_hovers and Can_use(Hover_Boots)) or (logic_biggoron_bolero and not warp_songs and Can_play(Bolero_of_Fire) and at('DMC Central Local', Can_use(Hookshot) or Can_use(Hover_Boots) or Can_plant_bean))",
-- end
-- function guarantee_hint()
--     "(hints == 'mask' and Mask_of_Truth) or (hints == 'agony' and Stone_of_Agony) or (hints != 'mask' and hints != 'agony')",
-- end
function Has_fire_source()
    Any(
        Can_use("DinsFire"),
        Can_use("FireArrows")
    )
end
function Has_fire_source_with_torch()
    Any(
        Has_fire_source(),
        All(
            is_child,
            Sticks()
        )
    )
end
-- "found_bombchus": "(bombchus_in_logic and (Bombchus or Bombchus_5 or Bombchus_10 or Bombchus_20)) or (not bombchus_in_logic and Bomb_Bag)",
-- "is_child": "current_spot_child_access",
-- "is_adult": "current_spot_adult_access",
"is_starting_age": "current_spot_starting_age_access",
"is_glitched": "logic_rules != 'glitchless'",

# Can_use and helpers
# The parser reduces this to smallest form based on item category.
# Note that Can_use(item) is False for any item not covered here.
"Can_use(item)": "(_is_magic_item(item) and item and Magic_Meter)"
    or (_is_adult_item(item) and is_adult and item)
    or (_is_magic_arrow(item) and is_adult and item and Bow and Magic_Meter)
    or (_is_child_item(item) and is_child and item)"",--age
"_is_magic_item(item)": "item == Dins_Fire or item == Farores_Wind or item == Nayrus_Love or item == Lens_of_Truth",
"_is_adult_item(item)": "item == Bow or item == Megaton_Hammer or item == Iron_Boots or item == Hover_Boots or item == Hookshot or item == Longshot or item == Silver_Gauntlets or item == Golden_Gauntlets or item == Goron_Tunic or item == Zora_Tunic or item == Scarecrow or item == Distant_Scarecrow or item == Mirror_Shield",
"_is_child_item(item)": "item == Slingshot or item == Boomerang or item == Kokiri_Sword or item == Sticks or item == Deku_Shield",
"_is_magic_arrow(item)": "item == Fire_Arrows or item == Light_Arrows or (blue_fire_arrows and item == Ice_Arrows)",

# Biggoron's trade path
# ER with certain settings disables timers and prevents items from reverting on save warp.
# Otherwise, to get to Biggoron requires: a trick, clearing boulders on DMT, or Darunia's Chamber
"guarantee_trade_path": "disable_trade_revert or Can_blast_or_smash or 'Stop GC Rolling Goron as Adult' or (logic_dmt_climb_hovers and Can_use(Hover_Boots)) or (logic_biggoron_bolero and not warp_songs and Can_play(Bolero_of_Fire) and at('DMC Central Local', Can_use(Hookshot) or Can_use(Hover_Boots) or Can_plant_bean))",
"guarantee_hint": "(hints == 'mask' and Mask_of_Truth) or (hints == 'agony' and Stone_of_Agony) or (hints != 'mask' and hints != 'agony')",
"Has_fire_source": "Can_use(Dins_Fire) or Can_use(Fire_Arrows)",
"Has_fire_source_with_torch": "Has_fire_source or (is_child and Sticks)",
