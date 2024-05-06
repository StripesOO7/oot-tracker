
        local variant = Tracker.ActiveVariantUID

Tracker:AddItems("items/items.jsonc")
Tracker:AddItems("items/labels.jsonc")

-- Logic
ScriptHost:LoadScript("scripts/logic/logic.lua")

-- Maps
if Tracker.ActiveVariantUID == "Items Only" then
    Tracker:AddMaps("maps/maps.jsonc")
end

Tracker:AddMaps("maps/maps.jsonc")
-- Layout
ScriptHost:LoadScript("scripts/layouts_import.lua")

-- Locations
ScriptHost:LoadScript("scripts/locations_import.lua")
-- Tracker:AddLocations("locations/locations.jsonc")


-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.23.0" then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end