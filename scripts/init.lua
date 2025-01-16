
local variant = Tracker.ActiveVariantUID

Tracker:AddItems("items/items.jsonc")
Tracker:AddItems("items/hint_items.json")
Tracker:AddItems("items/settings.jsonc")
Tracker:AddItems("items/labels.jsonc")
Tracker:AddItems("items/logictricks.jsonc")

-- Logic
require("scripts/logic/logic_main")
require("scripts/logic/logic_helper")
require("scripts/logic/location_definition")
require("scripts/logic_import")


-- Maps
if Tracker.ActiveVariantUID == "Items Only" then
    Tracker:AddMaps("maps/maps.jsonc")
end

Tracker:AddMaps("maps/maps.jsonc")
-- Layout
require("scripts/layouts_import")

-- Locations
require("scripts/locations_import")
-- Tracker:AddLocations("locations/locations.jsonc")


-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.23.0" then
    require("scripts/autotracking")
end