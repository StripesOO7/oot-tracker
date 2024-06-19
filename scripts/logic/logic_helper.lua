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

function can_blast_or_smash()
    return Any(
        has_explosives(),
        can_use(Megaton_Hammer)
    )
    "has_explosives or can_use(Megaton_Hammer)"
end

function can_child_attack()
    return Any(
        Has("Slingshot"),
        Has("Boomerang"),
        Has("Sticks"),
        Has("Kokiri_Sword"),
        has_explosives(),
        can_use(Dins_Fire)
    )
    "is_child and (Slingshot or Boomerang or Sticks or Kokiri_Sword or has_explosives or can_use(Dins_Fire))"
end

function can_child_damage()
    return Any(
        Has("Slingshot"),
        Has("Sticks"),
        Has("Kokiri_Sword"),
        has_explosives(),
        can_use(Dins_Fire)
    )
    "is_child and (Slingshot or Sticks or Kokiri_Sword or has_explosives or can_use(Dins_Fire))"
end

function can_cut_shrubs(age)
    if age == "adult" then
        return true
    elseif age == "child" then
        return Any(
            Has("Sticks"),
            Has("Kokiri_Sword"),
            Has("Boomerang"),
            has_explosives()
        )
    else
        return false
    end
    "is_adult or Sticks or Kokiri_Sword or Boomerang or has_explosives"
end

function can_dive()
    return Has("Progressive_Scale")
    "Progressive_Scale"
end

function can_leave_forest(age)
    if age == "adult" then
        return true
    else
        return Any(
            open_forest != 'closed',
            is_adult,
            is_glitched,
            Deku_Tree_Clear
        )
        "open_forest != 'closed' or is_adult or is_glitched or Deku_Tree_Clear"
    end
end

function can_plant_bugs()
    return Has("Bugs")
    "is_child and Bugs"
end

function can_ride_epona()
    return All(
        Epona(),
        Any(
            can_play(Eponas_Song),
            All(
                is_glitched,
                can_hover)
            )
        )
    "is_adult and Epona and (can_play(Eponas_Song) or (is_glitched and can_hover))"
end

function can_stun_deku()
    return Any(
        Has("Slingshot"),
        Has("Boomerang"),
        Has("Sticks"),
        Has("Kokiri_Sword"),
        has_explosives(),
        can_use(Dins_Fire),
        Has("Nuts"),
        Has("Deku_Shield)"
    )
    "is_adult or (Slingshot or Boomerang or Sticks or Kokiri_Sword or has_explosives or can_use(Dins_Fire) or Nuts or Deku_Shield)"
end

function can_summon_gossip_fairy()
    return All(
        Has("Ocarina"),
        Any(
            Has("Zeldas_Lullaby"),
            Has("Eponas_Song"),
            Has("Song_of_Time"),
            Has("Suns_Song")
        )
    )
    "Ocarina and (Zeldas_Lullaby or Eponas_Song or Song_of_Time or Suns_Song)"
end

function can_summon_gossip_fairy_without_suns()
    return All(
        Has("Ocarina"),
        Any(
            Has("Zeldas_Lullaby"),
            Has("Eponas_Song"),
            Has("Song_of_Time")
        )
    )
    "Ocarina and (Zeldas_Lullaby or Eponas_Song or Song_of_Time)"
end

function can_take_damage()
    return Any(
        damage_multiplier != 'ohko',
        Fairy,
        can_use(Nayrus_Love)
    )
    "damage_multiplier != 'ohko' or Fairy or can_use(Nayrus_Love)"
end

function can_plant_bean()
    return Any(
        plant_beans,
        All(
            is_child,
            _oot_has_beans
        )
    )
    "plant_beans or (is_child and _oot_has_beans)"
end

function can_play(song)
    return All(
        Has("Ocarina"),
        Has(song)
    )
    "Ocarina and song
end

function can_open_bomb_grotto()
    return All(
        can_blast_or_smash(),
        Any(
            Has("Stone_of_Agony"),
            logic_grottos_without_agony
        )
    )
    "can_blast_or_smash and (Stone_of_Agony or logic_grottos_without_agony)"
end

function can_open_storm_grotto()
    return All(
        can_play("SongofStorms"),
        Any(
            Has("Stone_of_Agony"),
            logic_grottos_without_agony
        )
    )
    "can_play(Song_of_Storms) and (Stone_of_Agony or logic_grottos_without_agony)"
end

function can_use_projectile()
    return Any(
        has_explosives(),
        All(
            is_adult,
            Any(
                Has("Bow"),
                Has("Hookshot")
            )
        ),
        All(
            is_child,
            Any(
                Has("Slingshot"),
                Has("Boomerang")
            )
        )
    )
"has_explosives or (is_adult and (Bow or Hookshot)) or (is_child and (Slingshot or Boomerang))"
end

function Scarecrow()
    return All(
        Progressive_Hookshot,
        can_play(Scarecrow_Song)
    )
end

function Distant_Scarecrow()
    return All(
        Progressive_Hookshot, 2,
        can_play(Scarecrow_Song)
    )
end

function can_bonk()
    return Any(
        deadly_bonks != 'ohko',
        Fairy,
        can_use(Nayrus_Love)
    )
end

function can_break_crate()
    return Any(
        can_bonk(),
        can_blast_or_smash()
    )
end

function can_break_heated_crate()
    return Any(
        deadly_bonks != 'ohko',
        All(
            Fairy,
            Any(
                can_use(Goron_Tunic),
                damage_multiplier != 'ohko'
            )
        ),
        can_use(Nayrus_Love),
        can_blast_or_smash()
end

function can_break_lower_beehive()
    return Any(
        can_use(Boomerang),
        can_use(Hookshot),
        Bombs,
        All(
            logic_beehives_bombchus,
            has_bombchus
        )
    )
end

function can_break_upper_beehive()
    return Any(
        can_use(Boomerang),
        can_use(Hookshot),
        All(
            logic_beehives_bombchus,
            has_bombchus
        )
    )
end

function has_bombchus()
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

function has_explosives()
    return Any(
        Bombs,
        All(
            bombchus_in_logic,
            has_bombchus
        )
    )
end

function has_all_stones()
    return All(
        Has("Kokiri_Emerald"),
        Has("Goron_Ruby"),
        Has("Zora_Sapphire")
    )
end

function has_all_medallions()
    return All(
        Has("Forest_Medallion"),
        Has("Fire_Medallion"),
        Has("Water_Medallion"),
        Has("Shadow_Medallion"),
        Has("Spirit_Medallion"),
        Has("Light_Medallion")
    )
end

function can_build_rainbow_bridge()
    bridge = Tracker:FindObjectForCode("bridge_req").CurrentStage
    if bridge == 1 then
        return true
    elseif bridge == 2 then
        return All(
            Has("Shadow_Medallion"),
            Has("Spirit_Medallion"),
            Has("Light_Arrows")
        )
    elseif bridge == 3 then
        return _oot_has_stones(bridge_stones)
    elseif bridge == 4 then
        return _oot_has_medallions(bridge_medallions)
    elseif bridge == 5 then
        return _oot_has_dungeon_rewards(bridge_rewards)
    elseif bridge == 6 then
        return (Gold_Skulltula_Token, bridge_tokens)
    elseif bridge == 7 then
        return _oot_has_hearts(bridge_hearts)
    else
        return false
    end
end

function can_trigger_lacs()
    lacs = Tracker:FindObjectForCode("lacs_condition").CurrentStage
    if lacs == 1 then
        return All(
            Has("Shadow_Medallion"),
            Has("Spirit_Medallion")
        )
    elseif lacs == 2 then
        return _oot_has_stones(lacs_stones)
    elseif lacs == 3 then
        return _oot_has_medallions(lacs_medallions)
    elseif lacs == 4 then
        return _oot_has_dungeon_rewards(lacs_rewards)
    elseif lacs == 5 then
        return (Gold_Skulltula_Token, lacs_tokens)
    elseif lacs == 6 then
        return _oot_has_hearts(lacs_hearts)
    else
        return false
            
    end
end

function can_receive_ganon_bosskey()
    ganon_bosskey = Tracker:FindObjectForCode("shuffle_ganon_bosskey").CurrentStage
    if ganon_bosskey == then
        return _oot_has_stones(ganon_bosskey_stones)
    elseif ganon_bosskey == then
        return _oot_has_medallions(ganon_bosskey_medallions)
    elseif ganon_bosskey == then
        return _oot_has_dungeon_rewards(ganon_bosskey_rewards)
    elseif ganon_bosskey == then
        return (Gold_Skulltula_Token, ganon_bosskey_tokens)
    elseif ganon_bosskey == then
        return _oot_has_hearts(ganon_bosskey_hearts)
    elseif ganon_bosskey == then
        return (Triforce_Piece, triforce_goal_per_world)
    else
        return true
    end  
    ((shuffle_ganon_bosskey == 'stones' and _oot_has_stones(ganon_bosskey_stones)) or
(shuffle_ganon_bosskey == 'medallions' and _oot_has_medallions(ganon_bosskey_medallions)) or
(shuffle_ganon_bosskey == 'dungeons' and _oot_has_dungeon_rewards(ganon_bosskey_rewards)) or
(shuffle_ganon_bosskey == 'tokens' and (Gold_Skulltula_Token, ganon_bosskey_tokens)) or
(shuffle_ganon_bosskey == 'hearts' and _oot_has_hearts(ganon_bosskey_hearts))) or
(shuffle_ganon_bosskey == 'triforce' and (Triforce_Piece, triforce_goal_per_world)) or
(shuffle_ganon_bosskey != 'stones' and shuffle_ganon_bosskey != 'medallions' and
shuffle_ganon_bosskey != 'dungeons' and shuffle_ganon_bosskey != 'tokens' and
shuffle_ganon_bosskey != 'hearts' and shuffle_ganon_bosskey != 'triforce')
end

function ()

end

function ()

end


-- # Rules here define replacement "functions" or item aliases.
-- # The alias itself must always be alphanumeric only--string items bypass the aliasing.
-- # Rules should be simple python and can invoke other aliases or even the
-- # at/here metarules.
-- "Hookshot": "Progressive_Hookshot",
-- "Longshot": "(Progressive_Hookshot, 2)",
-- "Silver_Gauntlets": "(Progressive_Strength_Upgrade, 2)",
-- "Golden_Gauntlets": "(Progressive_Strength_Upgrade, 3)",
-- # Items can be directly aliased, so all occurrences of that item name get replaced,
-- # but make sure that inside the rule you use the string 'item' form
-- # to avoid infinite recursion.
-- "Goron_Tunic": "'Goron Tunic' or Buy_Goron_Tunic",
-- "Zora_Tunic": "'Zora Tunic' or Buy_Zora_Tunic",

-- # Refill aliases. If we start considering Bow etc refills we can enable these aliases
-- # without editing all logic files.
-- # "Bow": "'Bow'",
-- # "Slingshot": "'Slingshot'",
"Bombs": "Bomb_Bag",
-- "Deku_Shield": "Buy_Deku_Shield or Deku_Shield_Drop",
-- "Hylian_Shield": "Buy_Hylian_Shield",
-- "Nuts": "Buy_Deku_Nut_5 or Buy_Deku_Nut_10 or Deku_Nut_Drop",
-- "Sticks": "Buy_Deku_Stick_1 or Deku_Stick_Drop",
"Bugs": "'Bugs' or Buy_Bottle_Bug",
"Blue_Fire": "'Blue Fire' or Buy_Blue_Fire or (blue_fire_arrows and can_use(Ice_Arrows))",
-- "Fish": "'Fish' or Buy_Fish",
"Fairy": "'Fairy' or Buy_Fairys_Spirit",
"Big_Poe": "'Big Poe'",

-- "found_bombchus": "(bombchus_in_logic and (Bombchus or Bombchus_5 or Bombchus_10 or Bombchus_20)) or (not bombchus_in_logic and Bomb_Bag)",
-- "is_child": "current_spot_child_access",
-- "is_adult": "current_spot_adult_access",
"is_starting_age": "current_spot_starting_age_access",
"is_glitched": "logic_rules != 'glitchless'",

"has_projectile(for_age)": "has_explosives"
    or (for_age == child and (Slingshot or Boomerang))
    or (for_age == adult and (Bow or Hookshot))
    or (for_age == both and (Slingshot or Boomerang) and (Bow or Hookshot))
    or (for_age == either and (Slingshot or Boomerang or Bow or Hookshot))"", --age

# can_use and helpers
# The parser reduces this to smallest form based on item category.
# Note that can_use(item) is False for any item not covered here.
"can_use(item)": "(_is_magic_item(item) and item and Magic_Meter)"
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
"guarantee_trade_path": "disable_trade_revert or can_blast_or_smash or 'Stop GC Rolling Goron as Adult' or (logic_dmt_climb_hovers and can_use(Hover_Boots)) or (logic_biggoron_bolero and not warp_songs and can_play(Bolero_of_Fire) and at('DMC Central Local', can_use(Hookshot) or can_use(Hover_Boots) or can_plant_bean))",
"guarantee_hint": "(hints == 'mask' and Mask_of_Truth) or (hints == 'agony' and Stone_of_Agony) or (hints != 'mask' and hints != 'agony')",
"has_fire_source": "can_use(Dins_Fire) or can_use(Fire_Arrows)",
"has_fire_source_with_torch": "has_fire_source or (is_child and Sticks)",

# Gerudo Fortress
"can_finish_GerudoFortress": "(gerudo_fortress == 'normal' and
    'Hideout 1 Torch Jail Carpenter' and 'Hideout 2 Torches Jail Carpenter'
    and 'Hideout 3 Torches Jail Carpenter' and 'Hideout 4 Torches Jail Carpenter')
or (gerudo_fortress == 'fast' and 'Hideout 1 Torch Jail Carpenter')
or (gerudo_fortress != 'normal' and gerudo_fortress != 'fast')",
# Mirror shield does not count because it cannot reflect scrub attack.
"has_shield": "(is_adult and Hylian_Shield) or (is_child and Deku_Shield)",
"can_shield": "(is_adult and (Hylian_Shield or Mirror_Shield)) or (is_child and Deku_Shield)",
"can_mega": "has_explosives and can_shield",
"can_isg": "can_shield and (is_adult or Sticks or Kokiri_Sword)",
"can_hover": "can_mega and can_isg",
"can_weirdshot": "can_mega and can_use(Hookshot)",
"can_jumpslash": "is_adult or Sticks or Kokiri_Sword",

# Bridge Requirements


# Dungeon Shortcuts
"deku_tree_shortcuts": "'Deku Tree' in dungeon_shortcuts",
"dodongos_cavern_shortcuts": "'Dodongos Cavern' in dungeon_shortcuts",
"jabu_shortcuts": "'Jabu Jabus Belly' in dungeon_shortcuts",
"forest_temple_shortcuts": "'Forest Temple' in dungeon_shortcuts",
"fire_temple_shortcuts": "'Fire Temple' in dungeon_shortcuts",
"shadow_temple_shortcuts": "'Shadow Temple' in dungeon_shortcuts",
"spirit_temple_shortcuts": "'Spirit Temple' in dungeon_shortcuts",
"king_dodongo_shortcuts": "region_has_shortcuts('King Dodongo Boss Room')"
