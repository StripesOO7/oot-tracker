
        local variant = Tracker.ActiveVariantUID

Tracker:AddItems("items/items.json")
Tracker:AddItems("items/labels.json")

-- Logic
ScriptHost:LoadScript("scripts/logic/logic.lua")

-- Maps
if Tracker.ActiveVariantUID == "Items Only" then
    Tracker:AddMaps("maps/maps.json")
end

Tracker:AddMaps("maps/maps.json")
-- Layout
ScriptHost:LoadScript("scripts/layouts_import.lua")

-- Locations
ScriptHost:LoadScript("scripts/locations_import.lua")
-- Tracker:AddLocations("locations/locations.json")


-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.23.0" then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end