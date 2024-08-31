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
        elseif item_obj.Type == "progressive_toggle" then
            -- print (item, item_obj.CurrentStage)
            count = Tracker:ProviderCountForCode(item)
        elseif item_obj.Type == "toggle" then
            -- print (item, item_obj.CurrentStage)
            count = BOOL_TO_NUMBER[item_obj.Active]
        elseif item_obj.Type == "static" then
            -- print (item, item_obj.CurrentStage)
            count = BOOL_TO_NUMBER[true]
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
    return Has_bottle()
end
function Blue_Fire(age)
    return Any(
        All(
            Has_bottle(),
            Any(
                All(
                    Tracker:FindObjectForCode("ProgressiveWallet").CurrentStage == 3,
                    All(
                        Any(
                            Child_GC_Shop.accessibility_level > 3,
                            Adult_GC_Shop.accessibility_level > 3
                        ),
                        Any(
                            Child_Kak_Bazaar.accessibility_level > 3,
                            Adult_Kak_Bazaar.accessibility_level > 3
                        ),
                        Any(
                            Child_Kak_Potion_Shop_Front.accessibility_level > 3,
                            Adult_Kak_Potion_Shop_Front.accessibility_level > 3
                        ),
                        Any(
                            Child_Kokiri_Shop.accessibility_level > 3,
                            Adult_Kokiri_Shop.accessibility_level > 3
                        ),
                        Any(
                            Child_Kokiri_Shop.accessibility_level > 3,
                            Adult_Kokiri_Shop.accessibility_level > 3
                        ),
                        Any(
                            Child_Market_Potion_Shop.accessibility_level > 3,
                            Adult_Market_Potion_Shop.accessibility_level > 3
                        ),
                        Any(
                            Child_Market_Bombchu_Shop.accessibility_level > 3,
                            Adult_Market_Bombchu_Shop.accessibility_level > 3
                        ),
                        Child_ZD_Shop.accessibility_level > 3
                    )
                ),
            Adult_Ice_Cavern_Beginning.accessibility_level > 3,
            Child_Ice_Cavern_Beginning.accessibility_level > 3,
            Adult_Ganons_Castle_Water_Trial.accessibility_level > 3,
            Child_Ganons_Castle_Water_Trial.accessibility_level > 3
            )
        ),
        All(
            Can_use("IceArrows", age),
            Has("blue_fire_arrows")
        )
    ) > 0
end
function Fish()
    -- return Tracker:FindObjectForCode("Bottle")
    return Has_bottle()
end
function Fairy()
    -- return Tracker:FindObjectForCode("Bottle")
    return Has_bottle()
end
function Big_Poe(age)
    return All(
        Has_bottle(),
        Can_ride_epona(age),
        Can_use("Bow", age)
    ) > 0  --Tracker:FindObjectForCode()"'Big Poe'"
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
    ) > 0
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
    ) > 0
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
        ) > 0
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
        ) > 0
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
                    Child_Queen_Gohma_Boss_Room.accessibility_level > 3,
                    Adult_Queen_Gohma_Boss_Room.accessibility_level > 3
                ),
                Any(
                    Can_use("DekuNuts", age),
                    Can_use("Slingshot", age)
                ),
                Can_jumpslash(age)
            )
        ) > 0
        -- "open_forest != 'closed', age == "adult", Is_glitched, Deku_Tree_Clear"
    end
end

function Can_plant_bugs(age)
    return All(
        Bugs(),
        age == "child"
    ) > 0
    -- "is_child and Bugs"
end

function Can_ride_epona(age)
    return All(
        All(
            Adult_Lon_Lon_Ranch.accessibility_level > 3,
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
        ) > 0
    -- "age == "adult" and Epona and (Can_play(Eponas_Song), (Is_glitched and Can_hover))"
end

function Can_stun_deku(age)
    return Any(
        age == 'adult',
        Can_use("Slingshot", age),
        Can_use("Boomerang", age),
        Can_use("DekuStick", age),
        Can_use("KokiriSword", age),
        Has_explosives(),
        Can_use("DinsFire", age),
        Can_use("DekuNuts", age),
        Can_use("DekuShield", age)
    ) > 0
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
    ) > 0
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
    ) > 0
    -- "Ocarina and (Zeldas_Lullaby, Eponas_Song, Song_of_Time)"
end

function Can_take_damage(age)
    return Any(
        Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4,
        Fairy,
        Can_use("NayrusLove", age)
    ) > 0
    -- "Tracker:FindObjectForCode("damage_multiplier").CurrentStage ~= 4, Fairy, Can_use(Nayrus_Love)"
end

function Can_plant_bean()
    -- print("Can_plant_bean")
    return Any(
        Has("plant_beans"),
        All(
            Tracker:ProviderCountForCode("MagicBean") > 0
        )
    ) > 0
    -- "plant_beans, (age == "child" and _oot_Has_beans)"
end


function EyedropsAccess(age)
    return All(
        Adult_LH_Lab.accessibility_level > 3,
        Any(
            EyeballFrogAccess(age),
            All(
                Tracker:ProviderCountForCode("EyeballFrog") > 0 ,
                Disable_trade_revert()
            )
        )
    ) > 0
end

function EyeballFrogAccess(age)
    return All(
        Adult_Zoras_Domain.accessibility_level > 3,
        age == "adult",
        KingZoraThawed(age),
        Any(
            Tracker:ProviderCountForCode("Eyedrops") > 0 ,
            Tracker:ProviderCountForCode("EyeballFrog") > 0 ,
            Tracker:ProviderCountForCode("Prescription") > 0 ,
            PrescriptionAccess(age)
        )
    ) > 0
end

function KingZoraThawed(age)
    return All(
        Adult_Zoras_Domain.accessibility_level > 3,
        age == "adult",
        Blue_Fire(age)
    )
end

function PrescriptionAccess(age)
    return All(
        Adult_Death_Mountain_Summit.accessibility_level > 3,
        age == "adult",
        Any(
            BrokenSwordAccess(age),
            Tracker:ProviderCountForCode("BrokenSword") > 0
        )
    ) > 0
end

function BrokenSwordAccess(age)
    return All(
        Adult_GV_Fortress_Side.accessibility_level > 3,
        age == "adult",
        Any(
            PoachersSawAccess(age),
            Tracker:ProviderCountForCode("PoachersSaw") > 0
        )
    ) > 0
end

function PoachersSawAccess(age)
    return All(
        Adult_Lost_Woods.accessibility_level > 3,
        age == "adult",
        OddPotionAccess(age)
    ) > 0
end
function OddMushroomAccess(age)
    return All(
        Adult_Lost_Woods.accessibility_level > 3,
        age == "adult",
        Any(
            CojiroAccess(age),
            Tracker:ProviderCountForCode("Cojiro") > 0
        )
    ) > 0
end
function OddPotionAccess(age)
    return All(
        Adult_Kak_Odd_Medicine_Building.accessibility_level > 3,
        age == "adult",
        Any(
            OddMushroomAccess(age),
            All(
                Tracker:ProviderCountForCode("OddMushroom") > 0 ,
                Disable_trade_revert()
            )
        )
    ) > 0
end
function CojiroAccess(age)
    return All(
        Adult_Kakariko_Village.accessibility_level > 3,
        age == "adult",
        WakeUpAdultTalon(age)
    )
end
function WakeUpAdultTalon(age)
    return All(
        Adult_Kak_Carpenter_Boss_House.accessibility_level > 3,
        age == "adult",
        Any(
            Tracker:ProviderCountForCode("PocketEgg") > 0 ,
            Tracker:ProviderCountForCode("PocketCucco") > 0
        )
    ) > 0
end

function Disable_trade_revert()
    return Tracker:FindObjectForCode("shuffle_interior_entrances").CurrentStage ~= 0 or Tracker:FindObjectForCode("shuffle_overworld_entrances").Active
end

function Can_play(song)
    return All(
        Tracker:FindObjectForCode("Ocarina").Active,
        Has(song)
    ) > 0
    -- "Ocarina and song
end

function Can_open_bomb_grotto(age)
    return All(
        Can_blast_or_smash(age),
        Any(
            Has("StoneofAgony"),
            Has("logic_grottos_without_agony")
        )
    ) > 0
    -- "Can_blast_or_smash and (Stone_of_Agony, logic_grottos_without_agony)"
end

function Can_open_storm_grotto(age)
    return All(
        Can_play("SongofStorms"),
        Any(
            Has("StoneofAgony"),
            Has("logic_grottos_without_agony")
        )
    ) > 0
    -- "Can_play(Song_of_Storms) and (Stone_of_Agony, logic_grottos_without_agony)"
end

function Has_projectile(age)
    if Has_explosives() then 
        return true
    elseif age == "child" then
        return Any(
            Can_use("Slingshot", age),
            Can_use("Boomerang", age)
        ) > 0
    elseif age == "adult" then
        return Any(
            Can_use("Bow", age),
            Can_use("Hookshot", age)
        ) > 0
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
        ) > 0
    elseif age == "either" then
        return Any(
            Can_use("Slingshot", age),
            Can_use("Boomerang", age),
            Can_use("Bow", age),
            Can_use("Hookshot", age)
        ) > 0
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
    ) > 0
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
                    Adult_Beyond_Door_of_Time.accessibility_level > 3
                ),
                All(
                    Tracker:FindObjectForCode("starting_age").Active == true,
                    Child_Beyond_Door_of_Time.accessibility_level > 3
                )
            )
            -- Can_play(ScarecrowSong)
        ) > 0
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
                    Adult_Beyond_Door_of_Time.accessibility_level > 3
                ),
                All(
                    Tracker:FindObjectForCode("starting_age").Active == true,
                    Child_Beyond_Door_of_Time.accessibility_level > 3
                )
            )
            -- Can_play(ScarecrowSong)
        ) > 0
    else
        return false
    end
end

function Can_use(item, age) 
    if _is_magic_item[item] then
        return All(
            Has(item),
            Tracker:FindObjectForCode("MagicMeter").CurrentStage > 0
        ) > 0
    elseif _is_adult_item[item] and age == "adult" then
        if _is_stage_2[item] then
            return All(
                Has(item, 2)
            ) > 0
        elseif _is_stage_3[item] then
            return All(
                Has(item, 3)
            ) > 0
        else
            return All(
                Has(item)
            ) > 0
        end
    elseif _is_magic_arrow[item] and age == "adult" then 
        return All(
            Has(item),
            Can_use("Bow", age),
            Tracker:FindObjectForCode("MagicMeter").CurrentStage > 0
        ) > 0
    elseif _is_child_item[item] and age == "child" then
        if _is_stage_2[item] then
            return All(
                Has(item, 2)
            ) > 0
        elseif _is_stage_3[item] then
            return All(
                Has(item, 3)
            ) > 0
        else
            return All(
                Has(item)
            ) > 0
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
    ) > 0
end

function Can_break_crate(age)
    return Any(
        Can_bonk(age),
        Can_blast_or_smash(age)
    ) > 0
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
    ) > 0
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
    ) > 0
end

function Can_break_upper_beehive(age)
    return Any(
        Can_use("Boomerang", age),
        Can_use("Hookshot", age),
        All(
            Has("logic_beehives_bombchus"),
            Has_bombchus()
        )
    ) > 0
end

function Has_bombchus()
    return All(
        Has("Bombchus"),
        Any(
            Has("bombchus_in_logic"),
            Has("Bombs")
        )
    ) > 0
end

function Has_explosives()
    return Any(
        Bombs(),
        All(
            Has("bombchus_in_logic"),
            Has("Bombchus")
        )
    ) > 0
end

function Has_all_stones()
    return All(
        Has("Kokiri_Emerald"),
        Has("Gorons_Ruby"),
        Has("Zora_Sapphire")
    ) > 0
end

function Has_all_medallions()
    return All(
        Has("forest_medallion"),
        Has("fire_medallion"),
        Has("water_medallion"),
        Has("shadow_medallion"),
        Has("spirit_medallion"),
        Has("light_medallion")
    ) > 0
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
        ) > 0
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
        return Tracker:ProviderCountForCode("ganon_bosskey_hearts") <= Calc_hearts()
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
            return All(
                Tracker:FindObjectForCode("hidden_item_Hideout_1_Torch_Jail_Carpenter").Active,
                Tracker:FindObjectForCode("hidden_item_Hideout_2_Torches_Jail_Carpenter").Active,
                Tracker:FindObjectForCode("hidden_item_Hideout_3_Torches_Jail_Carpenter").Active,
                Tracker:FindObjectForCode("hidden_item_Hideout_4_Torches_Jail_Carpenter").Active,
                Has("SmallKey(ThievesHideout)", 4)
            ) > 5
        --         'Hideout 1 Torch Jail Carpenter' and 'Hideout 2 Torches Jail Carpenter'
        -- and 'Hideout 3 Torches Jail Carpenter' and 'Hideout 4 Torches Jail Carpenter'
        elseif gf.CurrentStage == 1 then
            if age == 'child' then
                return All(
                    Tracker:FindObjectForCode("hidden_item_Hideout_1_Torch_Jail_Carpenter").Active,
                    Has("SmallKey(ThievesHideout)", 1)
                ) > 5
            elseif age == 'adult' then
                return All(
                    Tracker:FindObjectForCode("hidden_item_Hideout_1_Torch_Jail_Carpenter").Active,
                    Has("SmallKey(ThievesHideout)", 1)
                ) > 5
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
    ) > 0
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
    ) > 0
end

function Can_mega(age)
    return All(
        Has_explosives(),
        Can_shield(age)
    ) > 0
end

function Can_isg(age)
    return All(
        Can_shield(age),
        Any(
            age == "adult",
            Can_use("DekuStick", age),
            Can_use("KokiriSword", age)
        )
    ) > 0
end

function Can_hover(age)
    return All(
        Can_mega(age),
        Can_isg(age)
    ) > 0
end

function Can_weirdshot(age)
    return All(
        Can_mega(age),
        Can_use("Hookshot", age)
    ) > 0
end

function Can_jumpslash(age)
    return Any(
        age == "adult",
        Can_use("DekuStick", age),
        Can_use("KokiriSword", age)
    ) > 0
end

function Has_bottle()
    local rutos = Tracker:FindObjectForCode("RutosLetter").Active
    local bigpoe = Tracker:FindObjectForCode("BottlewithBigPoe").Active
    if rutos and bigpoe then
        if CanReach("Child_Zoras_Domain") > 5 or CanReach("Adult_Market_Guard_House") > 5 then
            return Has("Bottle", 2)
        elseif CanReach("Child_Zoras_Domain") > 5 and CanReach("Adult_Market_Guard_House") > 5 then
            return Has("Bottle", 1)
        else 
            return Has("Bottle", 3)
        end
    elseif rutos or bigpoe then
        if rutos and CanReach("Child_Zoras_Domain") > 5 then
            return Has("Bottle", 1)
        elseif bigpoe and CanReach("Adult_Market_Guard_House") > 5 then
            return Has("Bottle", 1)
        else
            return Has("Bottle", 2)
        end
    else

        return Has("Bottle", 1)
    end
end


function Events()
    print("start events check")
    local Showed_Mido_Sword_and_Shield = Tracker:FindObjectForCode("hidden_item_Showed_Mido_Sword_and_Shield")
    local Odd_Mushroom_Access = Tracker:FindObjectForCode("hidden_item_Odd_Mushroom_Access")
    local Poachers_Saw_Access = Tracker:FindObjectForCode("hidden_item_Poachers_Saw_Access")
    local Bonooru = Tracker:FindObjectForCode("hidden_item_Bonooru")
    local Eyedrops_Access = Tracker:FindObjectForCode("hidden_item_Eyedrops_Access")
    local Broken_Sword_Access = Tracker:FindObjectForCode("hidden_item_Broken_Sword_Access")
    local GF_Gate_Open = Tracker:FindObjectForCode("hidden_item_GF_Gate_Open")
    local Hideout_1_Torch_Jail_Gerudo = Tracker:FindObjectForCode("hidden_item_Hideout_1_Torch_Jail_Gerudo")
    local Hideout_1_Torch_Jail_Carpenter = Tracker:FindObjectForCode("hidden_item_Hideout_1_Torch_Jail_Carpenter")
    local Hideout_2_Torches_Jail_Gerudo = Tracker:FindObjectForCode("hidden_item_Hideout_2_Torches_Jail_Gerudo")
    local Hideout_2_Torches_Jail_Carpenter = Tracker:FindObjectForCode("hidden_item_Hideout_2_Torches_Jail_Carpenter")
    local Hideout_3_Torches_Jail_Gerudo = Tracker:FindObjectForCode("hidden_item_Hideout_3_Torches_Jail_Gerudo")
    local Hideout_3_Torches_Jail_Carpenter = Tracker:FindObjectForCode("hidden_item_Hideout_3_Torches_Jail_Carpenter")
    local Hideout_4_Torches_Jail_Gerudo = Tracker:FindObjectForCode("hidden_item_Hideout_4_Torches_Jail_Gerudo")
    local Hideout_4_Torches_Jail_Carpenter = Tracker:FindObjectForCode("hidden_item_Hideout_4_Torches_Jail_Carpenter")
    local Sell_Big_Poe = Tracker:FindObjectForCode("hidden_item_Sell_Big_Poe")
    local Skull_Mask = Tracker:FindObjectForCode("hidden_item_Skull_Mask")
    local Mask_of_Truth = Tracker:FindObjectForCode("hidden_item_Mask_of_Truth")
    local Cojiro_Access = Tracker:FindObjectForCode("hidden_item_Cojiro_Access")
    local Kakariko_Village_Gate_Open = Tracker:FindObjectForCode("hidden_item_Kakariko_Village_Gate_Open")
    local Wake_Up_Adult_Talon = Tracker:FindObjectForCode("hidden_item_Wake_Up_Adult_Talon")
    local Drain_Well = Tracker:FindObjectForCode("hidden_item_Drain_Well")
    local Odd_Potion_Access = Tracker:FindObjectForCode("hidden_item_Odd_Potion_Access")
    local Dampes_Windmill_Access = Tracker:FindObjectForCode("hidden_item_Dampes_Windmill_Access")
    local Prescription_Access = Tracker:FindObjectForCode("hidden_item_Prescription_Access")
    local Goron_City_Child_Fire = Tracker:FindObjectForCode("hidden_item_Goron_City_Child_Fire")
    local GC_Woods_Warp_Open = Tracker:FindObjectForCode("hidden_item_GC_Woods_Warp_Open")
    local Stop_GC_Rolling_Goron_as_Adult = Tracker:FindObjectForCode("hidden_item_Stop_GC_Rolling_Goron_as_Adult")
    local King_Zora_Thawed = Tracker:FindObjectForCode("hidden_item_King_Zora_Thawed")
    local Eyeball_Frog_Access = Tracker:FindObjectForCode("hidden_item_Eyeball_Frog_Access")
    local Epona = Tracker:FindObjectForCode("hidden_item_Epona")
    local Links_Cow = Tracker:FindObjectForCode("hidden_item_Links_Cow")
    local Deku_Tree_Clear = Tracker:FindObjectForCode("hidden_item_Deku_Tree_Clear")
    local Water_Temple_Clear = Tracker:FindObjectForCode("hidden_item_Water_Temple_Clear")
    -- local = Tracker:FindObjectForCode("")
    if CanReach("Child_Kokiri_Forest") > 5 and Has("KokiriSword") and Has("DekuShield") then
        Showed_Mido_Sword_and_Shield.Active = true
    elseif CanReach("Child_KF_Outside_Deku_Tree") > 5 and Has("KokiriSword") and Has("DekuShield") then
        Showed_Mido_Sword_and_Shield.Active = true
    else
        Showed_Mido_Sword_and_Shield.Active = false
    end

    if CanReach("Adult_Lost_Woods") > 5 and (Has("hidden_item_Cojiro_Access") or Has("Cojiro")) then
        Odd_Mushroom_Access.Active = true
    else
        Odd_Mushroom_Access.Active = false
    end

    if CanReach("Adult_Lost_Woods") > 5 and (Has("hidden_item_Odd_Potion_Access") or Has("Cojiro")) then
        Poachers_Saw_Access.Active = true
    else
        Poachers_Saw_Access.Active = false
    end

    
    if CanReach("Child_Lake_Hylia") > 5 and Has("Ocarina") then
        Bonooru.Active = true
    else
        Bonooru.Active = false
    end
    
    if CanReach("Adult_LH_Lab") > 5 and (Has("hidden_item_Eyeball_Frog_Access") or (Has("EyeballFrog") and Disable_trade_revert() ) ) then
        Eyedrops_Access.Active = true
    else
        Eyedrops_Access.Active = false
    end
    
    if CanReach("Adult_GV_Fortress_Side") > 5 and (Has("hidden_item_Poachers_Saw_Access") or Has("PoachersSaw")) then
        Broken_Sword_Access.Active = true
    else
        Broken_Sword_Access.Active = false
    end
    
    if CanReach("Adult_Gerudo_Fortress") > 5 and Has("GerudoMembershipCard") then
        GF_Gate_Open.Active = true
    else
        GF_Gate_Open.Active = false
    end


    if CanReach("Adult_Hideout_1_Torch_Jail") > 5 or (CanReach("Child_Hideout_1_Torch_Jail") > 5 or Has("KokiriSword")) then
        Hideout_1_Torch_Jail_Gerudo.Active = true
    else
        Hideout_1_Torch_Jail_Gerudo.Active = false
    end
    
    if Has("hidden_item_Hideout_1_Torch_Jail_Gerudo") and Tracker:FindObjectForCode("gerudo_fortress").CurrentStage == 0 and Has("SmallKey(ThievesHideout)",4) then
        Hideout_1_Torch_Jail_Carpenter.Active = true
    elseif Has("hidden_item_Hideout_1_Torch_Jail_Gerudo") and Tracker:FindObjectForCode("gerudo_fortress").CurrentStage == 1 and Has("SmallKey(ThievesHideout)",1) then
        Hideout_1_Torch_Jail_Carpenter.Active = true
    else
        Hideout_1_Torch_Jail_Carpenter.Active = false
    end
    
    if CanReach("Adult_Hideout_2_Torches_Jail") > 5 or (CanReach("Child_Hideout_2_Torches_Jail") > 5 or Has("KokiriSword")) then
        Hideout_2_Torches_Jail_Gerudo.Active = true
    else
        Hideout_2_Torches_Jail_Gerudo.Active = false
    end
    
    if Has("hidden_item_Hideout_1_Torch_Jail_Gerudo") and Tracker:FindObjectForCode("gerudo_fortress").CurrentStage == 0 and Has("SmallKey(ThievesHideout)",4) then
        Hideout_2_Torches_Jail_Carpenter.Active = true
    else
        Hideout_2_Torches_Jail_Carpenter.Active = false
    end
    
    if CanReach("Adult_Hideout_3_Torches_Jail") > 5 or (CanReach("Child_Hideout_3_Torches_Jail") > 5 or Has("KokiriSword")) then
        Hideout_3_Torches_Jail_Gerudo.Active = true
    else
        Hideout_3_Torches_Jail_Gerudo.Active = false
    end
    
    if Has("hidden_item_Hideout_1_Torch_Jail_Gerudo") and Tracker:FindObjectForCode("gerudo_fortress").CurrentStage == 0 and Has("SmallKey(ThievesHideout)",4) then
        Hideout_3_Torches_Jail_Carpenter.Active = true
    else
        Hideout_3_Torches_Jail_Carpenter.Active = false
    end
    
    if CanReach("Adult_Hideout_4_Torches_Jail") > 5 or (CanReach("Child_Hideout_4_Torches_Jail") > 5 or Has("KokiriSword")) then
        Hideout_4_Torches_Jail_Gerudo.Active = true
    else
        Hideout_4_Torches_Jail_Gerudo.Active = false
    end
    
    if Has("hidden_item_Hideout_1_Torch_Jail_Gerudo") and Tracker:FindObjectForCode("gerudo_fortress").CurrentStage == 0 and Has("SmallKey(ThievesHideout)",4) then
        Hideout_4_Torches_Jail_Carpenter.Active = true
    else
        Hideout_4_Torches_Jail_Carpenter.Active = false
    end



    -- if CanReach("Adult_Market_Guard_House") > 5 and Has("Bottle_with_Big_Poe")then
    --     Sell_Big_Poe.Active = true
    -- else
    --     Sell_Big_Poe.Active = false
    -- end
    
    if CanReach("Adult_Kakariko_Village") > 5 and Has("hidden_item_Wake_Up_Adult_Talon") then
        Cojiro_Access.Active = true
    else
        Cojiro_Access.Active = false
    end
    
    if CanReach("Adult_Kakariko_Village") > 5 and (Tracker:FindObjectForCode("open_kakariko").CurrentStage == 0 or Has("ZeldasLetter")) then
        Kakariko_Village_Gate_Open.Active = true
    else
        Kakariko_Village_Gate_Open.Active = false
    end
    
    if CanReach("Adult_Kak_Carpenter_Boss_House") > 5 and (Has("PocketEgg") or Has("PocketCucco")) then
        Wake_Up_Adult_Talon.Active = true
    else
        Wake_Up_Adult_Talon.Active = false
    end
    
    if CanReach("Child_Kak_Windmill") > 5 and Can_play("SongofStorms") then
        Drain_Well.Active = true
    else
        Drain_Well.Active = false
    end
    
    if CanReach("Adult_Kak_Odd_Medicine_Building") > 5 and (Has("hidden_item_Odd_Mushroom_Access") or (Has("OddMushroom") and Disable_trade_revert() ) ) then
        Odd_Potion_Access.Active = true
    else
        Odd_Potion_Access.Active = false
    end
    
    if CanReach("Adult_Graveyard_Dampes_Grave") > 5 and Can_play("SongofTime") then
        Dampes_Windmill_Access.Active = true
    else
        Dampes_Windmill_Access.Active = false
    end
    
    if CanReach("Adult_Death_Mountain_Summit") > 5 and (Has("hidden_item_Broken_Sword_Access") or Has("BrokenSword")) then
        Prescription_Access.Active = true
    else
        Prescription_Access.Active = false
    end
    
    if CanReach("Child_Goron_City") > 5 and Can_use("DinsFire", "child") then
        Goron_City_Child_Fire.Active = true
    elseif CanReach("Child_GC_Darunias_Chamber") > 5 and Has("DekuStick") then
        Goron_City_Child_Fire.Active = true
    else
        Goron_City_Child_Fire.Active = false
    end

    if CanReach("Adult_Goron_City") > 5 and (Can_blast_or_smash("adult") or Can_use("DinsFire", "adult") or Can_use("Bow", "adult") or
                Can_use("GoronBracelet", "adult") or Has("hidden_item_Goron_City_Child_Fire")) then
        GC_Woods_Warp_Open.Active = true
    elseif CanReach("Child_Goron_City") > 5 and (Can_blast_or_smash("child") or Can_use("DinsFire", "child") or Can_use("Bow", "child") or
    Can_use("GoronBracelet", "child") or Has("hidden_item_Goron_City_Child_Fire")) then
        GC_Woods_Warp_Open.Active = true
    elseif CanReach("Adult_GC_Woods_Warp") > 5 and Can_blast_or_smash("adult") or Can_use("DinsFire", "adult") then
        GC_Woods_Warp_Open.Active = true
    elseif CanReach("Child_GC_Woods_Warp") > 5 and Can_blast_or_smash("child") or Can_use("DinsFire", "child") then
        GC_Woods_Warp_Open.Active = true
    else
        GC_Woods_Warp_Open.Active = false
    end
    
    if CanReach("Adult_Goron_City") > 5 and (Can_use("GoronBracelet", "adult") or Has_explosives() or Can_use("Bow", "adult") or
    (Has("logic_link_goron_dins") and Can_use("DinsFire", "adult"))) then
        Stop_GC_Rolling_Goron_as_Adult.Active = true
    else
        Stop_GC_Rolling_Goron_as_Adult.Active = false
    end
    
    if CanReach("Adult_Zoras_Domain") > 5 and Blue_Fire("adult") then
        King_Zora_Thawed.Active = true
    else
        King_Zora_Thawed.Active = false
    end
    
    if CanReach("Adult_Zoras_Domain") > 5 and Has("hidden_item_King_Zora_Thawed") and (Has("Eyedrops") or Has("EyeballFrog") or Has("Prescription") or Has("hidden_item_Prescription_Access")) then
        Eyeball_Frog_Access.Active = true
    else
        Eyeball_Frog_Access.Active = false
    end
    
    if CanReach("Adult_Lon_Lon_Ranch") > 5 and Can_play("EponasSong") then
        Epona.Active = true
        Links_Cow.Active = true
    else
        Epona.Active = false
        Links_Cow.Active = false
    end

    if CanReach(Child_Morpha_Boss_Room) > 5 then
        if Can_use("Hookshot", "child") then
            Water_Temple_Clear.Active = true
        else
            Water_Temple_Clear.Active = false
        end
    
    elseif CanReach(Adult_Morpha_Boss_Room) > 5 then
        if Can_use("Hookshot", "adult") then
            Water_Temple_Clear.Active = true
        else
            Water_Temple_Clear.Active = false
        end
    else
        Water_Temple_Clear.Active = false
    end

    if CanReach(Child_Queen_Gohma_Boss_Room) > 5 then
        if (Nuts() or Can_use("Slingshot", "child")) and Can_jumpslash("child") then
            Deku_Tree_Clear.Active = true
        else
            Deku_Tree_Clear.Active = false
        end
    
    elseif CanReach(Adult_Queen_Gohma_Boss_Room) > 5 then
        if (Nuts() or Can_use("Slingshot", "adult")) and Can_jumpslash("adult") then
            Deku_Tree_Clear.Active = true
        else
            Deku_Tree_Clear.Active = false
        end
    else
        Deku_Tree_Clear.Active = false
    end
    

        -- "region_name": "Market Mask Shop",
        -- "scene": "Market Mask Shop",
        -- "events": {
        --     "Skull Mask": "ZeldasLetter and (complete_mask_quest or at('Kakariko Village', is_child))",
        --     "Mask of Truth": "'Skull Mask' and
        --         (complete_mask_quest or
        --         (at('Lost Woods', is_child and can_play(Sarias_Song)) and
        --             at('Graveyard', is_child and at_day) and
        --             at('Hyrule Field', is_child and has_all_stones)))"
        -- },
    -- print("Showed_Mido_Sword_and_Shield", Showed_Mido_Sword_and_Shield.Active)
    -- print("Odd_Mushroom_Access", Odd_Mushroom_Access.Active)
    -- print("Poachers_Saw_Access", Poachers_Saw_Access.Active)
    -- print("Bonooru", Bonooru.Active)
    -- print("Eyedrops_Access", Eyedrops_Access.Active)
    -- print("Broken_Sword_Access", Broken_Sword_Access.Active)
    -- print("GF_Gate_Open", GF_Gate_Open.Active)
    -- print("Hideout_1_Torch_Jail_Gerudo", Hideout_1_Torch_Jail_Gerudo.Active)
    -- print("Hideout_1_Torch_Jail_Carpenter", Hideout_1_Torch_Jail_Carpenter.Active)
    -- print("Hideout_2_Torches_Jail_Gerudo", Hideout_2_Torches_Jail_Gerudo.Active)
    -- print("Hideout_2_Torches_Jail_Carpenter", Hideout_2_Torches_Jail_Carpenter.Active)
    -- print("Hideout_3_Torches_Jail_Gerudo", Hideout_3_Torches_Jail_Gerudo.Active)
    -- print("Hideout_3_Torches_Jail_Carpenter", Hideout_3_Torches_Jail_Carpenter.Active)
    -- print("Hideout_4_Torches_Jail_Gerudo", Hideout_4_Torches_Jail_Gerudo.Active)
    -- print("Hideout_4_Torches_Jail_Carpenter", Hideout_4_Torches_Jail_Carpenter.Active)
    -- print("Sell_Big_Poe", Sell_Big_Poe.Active)
    -- print("Skull_Mask", Skull_Mask.Active)
    -- print("Mask_of_Truth", Mask_of_Truth.Active)
    -- print("Cojiro_Access", Cojiro_Access.Active)
    -- print("Kakariko_Village_Gate_Open", Kakariko_Village_Gate_Open.Active)
    -- print("Wake_Up_Adult_Talon", Wake_Up_Adult_Talon.Active)
    -- print("Drain_Well", Drain_Well.Active)
    -- print("Odd_Potion_Access", Odd_Potion_Access.Active)
    -- print("Dampes_Windmill_Access", Dampes_Windmill_Access.Active)
    -- print("Prescription_Access", Prescription_Access.Active)
    -- print("Goron_City_Child_Fire", Goron_City_Child_Fire.Active)
    -- print("GC_Woods_Warp_Open", GC_Woods_Warp_Open.Active)
    -- print("Stop_GC_Rolling_Goron_as_Adult", Stop_GC_Rolling_Goron_as_Adult.Active)
    -- print("King_Zora_Thawed", King_Zora_Thawed.Active)
    -- print("Eyeball_Frog_Access", Eyeball_Frog_Access.Active)
    -- print("Epona", Epona.Active)
    -- print("Links_Cow", Links_Cow.Active)
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
            CanReach(gc) > 5,
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
                CanReach(dmc) > 5,
                Can_use("Hookshot", age),
                Can_use("HoverBoots", age),
                Can_plant_bean()
            )
        )
    ) > 0
end
-- function guarantee_hint()
--     "(hints == 'mask' and Mask_of_Truth), (hints == 'agony' and Stone_of_Agony), (hints != 'mask' and hints != 'agony')",
-- end
function Has_fire_source(age)
    return Any(
        Can_use("DinsFire", age),
        Can_use("FireArrows", age)
    ) > 0
end

function Has_fire_source_with_torch(age)
    return Any(
        Has_fire_source(age),
        All(
            age == "child",
            Can_use("DekuStick", age)
        )
    ) > 0
end
-- "found_bombchus": "(bombchus_in_logic and (Bombchus, Bombchus_5, Bombchus_10, Bombchus_20)), (not bombchus_in_logic and Bomb_Bag)",
-- "age == "child"": "current_spot_child_access",
-- "age == "adult"": "current_spot_adult_access",
-- "is_starting_age": "current_spot_starting_age_access",
