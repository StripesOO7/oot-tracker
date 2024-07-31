function Set (list)
    local set = {}
    for _, l in ipairs(list) do set[l] = true end
    return set
  end

BOOL_TO_NUMBER = {
    [true] = 1,
    [false] = 0
}

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
    local item_obj = Tracker:FindObjectForCode(item)
    -- if (Tracker:FindObjectForCode("small_keys").CurrentStage == 2) and item:sub(-8,-1) == "smallkey" then -- universal keys
    --     return true
    -- end
    -- if false then--Tracker:FindObjectForCode("key_drop_shuffle").Active then
    --     -- print(KDS_amount, KDS_amountInLogic)
    --     amount = KDS_amount
    --     amountInLogic = KDS_amountInLogic
    --     if item:sub(-8,-1) == "smallkey" then
    --         count = Tracker:ProviderCountForCode(item.."_drop")
    --     else
    --         count = Tracker:ProviderCountForCode(item)
    --     end
    -- else
    if item_obj ~= nil then
        -- print (item, item_obj.Type)
        if item_obj.Type == "consumable" then
            -- print (item, item_obj.AcquiredCount)
            count = item_obj.AcquiredCount
        elseif item_obj.Type == "progressive" then
            -- print (item, item_obj.CurrentStage)
            count = item_obj.CurrentStage
        elseif item_obj.Type == "toggle" then
            -- print (item, item_obj.CurrentStage)
            count = BOOL_TO_NUMBER[item_obj.Active]
        else
            -- print(tonumber(item_obj.Active), item_obj.Active)
            count = BOOL_TO_NUMBER[item_obj.Active]
        end
            
        amount = noKDS_amount
        amountInLogic = noKDS_amountInLogic
    else
        print("Somethings wrong with: " .. item)
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
        -- print(item, count >= amount, count, amount)
        return count >= amount
    end
end

local _is_magic_item = Set { "DinsFire", "FaroresWind", "NayrusLove", "LensofTruth" }
local _is_adult_item = Set { "Bow", "MegatonHammer", "IronBoots", "HoverBoots", "Hookshot", "Longshot", "GoronBracelet", "SilverGauntlets", "GoldenGauntlets", "GoronTunic", "ZoraTunic", "Scarecrow", "DistantScarecrow", "MirrorShield", "ProgressiveScale", "SilverScale", "GoldenScale"}
local _is_child_item = Set { "Slingshot", "Boomerang", "KokiriSword", "DekuStick", "DekuShield", "GoronBracelet", "ProgressiveScale", "SilverScale", "GoldenScale"}
local _is_magic_arrow = Set { "FireArrows", "LightArrows", "bluefirearrows", "IceArrows" }
local _is_stage_2 = Set { "Longshot", "SilverGauntlets", "GoldenScale" , "200rupees" }
local _is_stage_3 = Set { "GoldenGauntlets" ,  "500rupees" }
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
function Blue_Fire(age)
    return Any(
        All(
            Has("Bottle"),
            Any(
                All(
                    Tracker:FindObjectForCode("ProgressiveWallet").CurrentStage == 3,
                    All(
                        Any(
                            Child_GC_Shop.accessibility_level,
                            Adult_GC_Shop.accessibility_level
                        ),
                        Any(
                            Child_Kak_Bazaar.accessibility_level,
                            Adult_Kak_Bazaar.accessibility_level
                        ),
                        Any(
                            Child_Kak_Potion_Shop_Front.accessibility_level,
                            Adult_Kak_Potion_Shop_Front.accessibility_level
                        ),
                        Any(
                            Child_Kokiri_Shop.accessibility_level,
                            Adult_Kokiri_Shop.accessibility_level
                        ),
                        Any(
                            Child_Kokiri_Shop.accessibility_level,
                            Adult_Kokiri_Shop.accessibility_level
                        ),
                        Any(
                            Child_Market_Potion_Shop.accessibility_level,
                            Adult_Market_Potion_Shop.accessibility_level
                        ),
                        Any(
                            Child_Market_Bombchu_Shop.accessibility_level,
                            Adult_Market_Bombchu_Shop.accessibility_level
                        ),
                        Child_ZD_Shop.accessibility_level
                    )
                ),
            Adult_Ice_Cavern_Beginning.accessibility_level,
            Child_Ice_Cavern_Beginning.accessibility_level,
            Adult_Ganons_Castle_Water_Trial.accessibility_level,
            Child_Ganons_Castle_Water_Trial.accessibility_level
            )
        ),
        All(
            Can_use("IceArrows", age),
            Has("blue_fire_arrows")
        )
    )
end
function Fish()
    -- return Tracker:FindObjectForCode("Bottle")
    return Has("Bottle")
end
function Fairy()
    -- return Tracker:FindObjectForCode("Bottle")
    return Has("Bottle")
end
function Big_Poe(age)
    return All(
        Has("Bottle"),
        Can_ride_epona(age),
        Can_use("Bow", age)
    ) --Tracker:FindObjectForCode()"'Big Poe'"
end

-- function Can_use("Hookshot", "")
--     -- return Tracker:FindObjectForCode("Hookshot")
--     return Can_use("Hookshot", "")
-- end
-- function Can_use("Longshot", "")
--     -- return Tracker:FindObjectForCode("Longshot")
--     return Can_use("Longshot", "")
-- end
-- function Can_use("SilverGauntlets", "")
--     -- return Tracker:FindObjectForCode("SilverGauntlets")
--     return Has("SilverGauntlets")
-- end
-- function Golden_Gauntlets()
--     -- return Tracker:FindObjectForCode("GoldenGauntlets")
--     return Has("GoldenGauntlets")
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
            Can_use("Slingshot", age),
            Can_use("Boomerang", age),
            Can_use("DekuStick", age),
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
            Can_use("Slingshot", age),
            Can_use("DekuStick", age),
            Can_use("KokiriSword", age),
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

function Can_dive(age)
    return Can_use("ProgressiveScale", age)
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
                    Child_Queen_Gohma_Boss_Room.accessibility_level,
                    Adult_Queen_Gohma_Boss_Room.accessibility_level
                ),
                Any(
                    Can_use("DekuNuts", age),
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
        Bugs(),
        age == "child"
    )
    -- "is_child and Bugs"
end

function Can_ride_epona(age)
    return All(
        All(
            Adult_Lon_Lon_Ranch.accessibility_level,
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
        Can_use("Slingshot", age),
        Can_use("Boomerang", age),
        Can_use("DekuStick", age),
        Can_use("KokiriSword", age),
        Has_explosives(),
        Can_use("DinsFire", age),
        Can_use("DekuNuts", age),
        Can_use("DekuShield", age)
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

function Can_plant_bean()
    -- print("Can_plant_bean")
    return Any(
        Has("plant_beans"),
        All(
            Tracker:ProviderCountForCode("MagicBean") > 0
        )
    )
    -- "plant_beans, (age == "child" and _oot_Has_beans)"
end


function EyedropsAccess(age)
    return All(
        CanReach(Adult_LH_Lab),
        Any(
            EyeballFrogAccess(age),
            All(
                Has("EyeballFrog"),
                Disable_trade_revert()
            )
        )
    )
end

function EyeballFrogAccess(age)
    return All(
        CanReach(Adult_Zoras_Domain),
        age == "adult",
        KingZoraThawed(age),
        Any(
            Has("Eyedrops"),
            Has("EyeballFrog"),
            Has("Prescription"),
            PrescriptionAccess(age)
        )
    )
end

function KingZoraThawed(age)
    return All(
        CanReach(Adult_Zoras_Domain),
        age == "adult",
        Blue_Fire(age)
    )
end

function PrescriptionAccess(age)
    return All(
        CanReach(Adult_Death_Mountain_Summit),
        age == "adult",
        Any(
            BrokenSwordAccess(age),
            Has("BrokenSword")
        )
    )
end

function BrokenSwordAccess(age)
    return All(
        CanReach(Adult_GV_Fortress_Side),
        age == "adult",
        Any(
            PoachersSawAccess(age),
            Has("PoachersSaw")
        )
    )
end

function PoachersSawAccess(age)
    return All(
        CanReach(Adult_Lost_Woods),
        age == "adult",
        OddPotionAccess(age)
    )
end
function OddMushroomAccess(age)
    return All(
        CanReach(Adult_Lost_Woods),
        age == "adult",
        Any(
            CojiroAccess(age),
            Has("Cojiro")
        )
    )
end
function OddPotionAccess(age)
    return All(
        CanReach(Adult_Kak_Odd_Medicine_Building),
        age == "adult",
        Any(
            OddMushroomAccess(age),
            All(
                Has("OddMushroom"),
                Disable_trade_revert()
            )
        )
    )
end
function CojiroAccess(age)
    return All(
        CanReach(Adult_Kakariko_Village),
        age == "adult",
        WakeUpAdultTalon(age)
    )
end
function WakeUpAdultTalon(age)
    return All(
        CanReach(Adult_Kak_Carpenter_Boss_House),
        age == "adult",
        Any(
            Has("PocketEgg"),
            Has("PocketCucco")
        )
    )
end

function Disable_trade_revert()
    return Tracker:FindObjectForCode("shuffle_interior_entrances").CurrentStage ~= 0 or Tracker:FindObjectForCode("shuffle_overworld_entrances").Active
end

function Can_play(song)
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
            Can_use("Hookshot", age),
            Tracker:FindObjectForCode("Ocarina").Active,
            Any(
                All(
                    Tracker:FindObjectForCode("starting_age").Active == false,
                    Adult_Beyond_Door_of_Time.accessibility_level
                ),
                All(
                    Tracker:FindObjectForCode("starting_age").Active == true,
                    Child_Beyond_Door_of_Time.accessibility_level
                )
            )
            -- Can_play(ScarecrowSong)
        )
    else
        return false
    end
end

function Distant_Scarecrow(age)
    if age == "adult" then
        return All(
            Can_use("Longshot", age),
            Tracker:FindObjectForCode("Ocarina").Active,
            Any(
                All(
                    Tracker:FindObjectForCode("starting_age").Active == false,
                    Adult_Beyond_Door_of_Time.accessibility_level
                ),
                All(
                    Tracker:FindObjectForCode("starting_age").Active == true,
                    Child_Beyond_Door_of_Time.accessibility_level
                )
            )
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
            Tracker:FindObjectForCode("MagicMeter").CurrentStage > 0
        )
    elseif _is_adult_item[item] and age == "adult" then
        if _is_stage_2[item] then
            return All(
                Has(item, 2)
            )
        elseif _is_stage_3[item] then
            return All(
                Has(item, 3)
            )
        else
            return All(
                Has(item)
            )
        end
    elseif _is_magic_arrow[item] and age == "adult" then 
        return All(
            Has(item),
            Can_use("Bow", age),
            Tracker:FindObjectForCode("MagicMeter").CurrentStage > 0
        )
    elseif _is_child_item[item] and age == "child" then
        if _is_stage_2[item] then
            return All(
                Has(item, 2)
            )
        elseif _is_stage_3[item] then
            return All(
                Has(item, 3)
            )
        else
            return All(
                Has(item)
            )
        end
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
            Has("Bombchus")
        )
    )
end

function Has_all_stones()
    return All(
        Has("Kokiri_Emerald"),
        Has("Gorons_Ruby"),
        Has("Zora_Sapphire")
    )
end

function Has_all_medallions()
    return All(
        Has("forest_medallion"),
        Has("fire_medallion"),
        Has("water_medallion"),
        Has("shadow_medallion"),
        Has("spirit_medallion"),
        Has("light_medallion")
    )
end

function Can_build_rainbow_bridge()
    bridge = Tracker:FindObjectForCode("bridge").CurrentStage
    if bridge == 0 then
        return true
    elseif bridge == 1 then
        return All(
            Has("shadow_medallion"),
            Has("spirit_medallion"),
            Has("LightArrows")
        )
    elseif bridge == 2 then
        return Tracker:ProviderCountForCode("bridge_stones") <= Tracker:ProviderCountForCode("stones")
    elseif bridge == 3 then
        return Tracker:ProviderCountForCode("bridge_medallions") <= Tracker:ProviderCountForCode("medallions")
    elseif bridge == 4 then
        return Tracker:ProviderCountForCode("bridge_rewards") <= (Tracker:ProviderCountForCode("stones")+Tracker:ProviderCountForCode("medallions"))
    elseif bridge == 5 then
        return Tracker:ProviderCountForCode("bridge_tokens") <= Tracker:ProviderCountForCode("GoldSkulltulaToken")
    elseif bridge == 6 then
        return Tracker:ProviderCountForCode("bridge_hearts") <= Calc_hearts()
    else
        return false
    end
end

-- function Can_trigger_lacs()
--     lacs = Tracker:FindObjectForCode("lacs_condition").CurrentStage
--     if lacs == 2 then
--         return All(
--             Has("Shadow_Medallion"),
--             Has("Spirit_Medallion")
--         )
--     elseif lacs == 9 then
--         return Has("lacs_stones", Tracker:ProviderCountForCode("stones"))
--     elseif lacs == 10 then
--         return Has("lacs__medallions", Tracker:ProviderCountForCode("medallions"))
--     elseif lacs == 11 then
--         return Has("lacs_rewards", Tracker:ProviderCountForCode("stones")+Tracker:ProviderCountForCode("medallions"))
--     elseif lacs == 12 then
--         return Has("lacs_tokens", Tracker:ProviderCountForCode("GoldSkulltulaToken"))
--     elseif lacs == 13 then
--         return Has("lacs_hearts", Calc_hearts())
--     else
--         return false
            
--     end
--     return true
-- end

function Can_receive_ganon_bosskey()
    ganon_bosskey = Tracker:FindObjectForCode("shuffle_ganon_bosskey").CurrentStage
    if ganon_bosskey == 9 then
        return Tracker:ProviderCountForCode("ganon_bosskey_stones") <= Tracker:ProviderCountForCode("stones")
    elseif ganon_bosskey == 10 then
        return Has(Tracker:ProviderCountForCode("ganon_bosskey__medallions") <= Tracker:ProviderCountForCode("medallions"))
    elseif ganon_bosskey == 11 then
        return Tracker:ProviderCountForCode("ganon_bosskey_rewards") <= (Tracker:ProviderCountForCode("stones")+Tracker:ProviderCountForCode("medallions"))
    elseif ganon_bosskey == 12 then
        return Tracker:ProviderCountForCode("ganon_bosskey_tokens") <= Tracker:ProviderCountForCode("GoldSkulltulaToken")
    elseif ganon_bosskey == 13 then
        return Tracker:ProviderCountForCode("ganon_bosskey_hearts") <=  Calc_hearts()
    elseif ganon_bosskey == 14 then
        return Tracker:ProviderCountForCode("triforce_goal") <= Tracker:ProviderCountForCode("TriforcePiece")
    else
        return true
    end  
--     ((shuffle_ganon_bosskey == 'stones' and _oot_Has_stones(ganon_bosskey_stones)),
-- (shuffle_ganon_bosskey == '_medallions' and _oot_Has__medallions(ganon_bosskey__medallions)),
-- (shuffle_ganon_bosskey == 'dungeons' and _oot_Has_dungeon_rewards(ganon_bosskey_rewards)),
-- (shuffle_ganon_bosskey == 'tokens' and (GoldSkulltulaToken, ganon_bosskey_tokens)),
-- (shuffle_ganon_bosskey == 'hearts' and _oot_Has_hearts(ganon_bosskey_hearts))),
-- (shuffle_ganon_bosskey == 'triforce' and (Triforce_Piece, triforce_goal_per_world)),
-- (shuffle_ganon_bosskey != 'stones' and shuffle_ganon_bosskey != '_medallions' and
-- shuffle_ganon_bosskey != 'dungeons' and shuffle_ganon_bosskey != 'tokens' and
-- shuffle_ganon_bosskey != 'hearts' and shuffle_ganon_bosskey != 'triforce')
return true
end

function Stage_PoH()
    local poh = Tracker:FindObjectForCode("PieceofHeart")
    -- print("poh stage", poh.CurrentStage, "modulo", poh.AcquiredCount%4)
    poh.CurrentStage = poh.AcquiredCount%4
end
function Calc_hearts()
    -- print("hearts, ", 3+Tracker:ProviderCountForCode("HeartContainer")+(Tracker:ProviderCountForCode("PieceofHeart")/4))
    return 3+Tracker:ProviderCountForCode("HeartContainer")+(Tracker:ProviderCountForCode("PieceofHeart")/4)
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
                    NamedLocations["Child Hideout 1 Torch Jail Gerudo Key"].accessibility_level,
                    NamedLocations["Child Hideout 2 Torches Jail Gerudo Key"].accessibility_level,
                    NamedLocations["Child Hideout 3 Torches Jail Gerudo Key"].accessibility_level,
                    NamedLocations["Child Hideout 4 Torches Jail Gerudo Key"].accessibility_level,
                    Has("SmallKey(ThievesHideout)", 4)
                )
            elseif age == 'adult' then
                return All(
                    NamedLocations["Adult Hideout 1 Torch Jail Gerudo Key"].accessibility_level,
                    NamedLocations["Adult Hideout 2 Torches Jail Gerudo Key"].accessibility_level,
                    NamedLocations["Adult Hideout 3 Torches Jail Gerudo Key"].accessibility_level,
                    NamedLocations["Adult Hideout 4 Torches Jail Gerudo Key"].accessibility_level,
                    Has("SmallKey(ThievesHideout)", 4)
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
                    Has("SmallKey(ThievesHideout)", 1)
                )
            elseif age == 'adult' then
                return All(
                    CanReach("Adult Hideout 1 Torch Jail Gerudo Key"),
                    Has("SmallKey(ThievesHideout)", 1)
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
                Can_use("MirrorShield", age)
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
        gc = Child_Goron_City
        dmc = Child_DMC_Central_Local
    elseif age == 'adult' then
        gc = Adult_Goron_City
        dmc = Adult_DMC_Central_Local
    else
        return false
    end

    return Any(
        Disable_trade_revert(),
        Can_blast_or_smash(age),
        All(
            gc.accessibility_level,
            All(
                age == 'adult',
                Any(
                    Can_use("GoronBracelet", age),
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
                dmc.accessibility_level,
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
