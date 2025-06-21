local ADDON_NAME, private = ...

local L = LibStub("AceLocale-3.0"):GetLocale("Chronicles-Origins")

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript(
    "OnEvent",
    function(self, event, addonName)
        if addonName == "Chronicles" then
            self:InitializeOriginsPlugin()
            self:UnregisterEvent("ADDON_LOADED")
        elseif addonName == ADDON_NAME then
            print(
                "|cff00ff00" ..
                    L["Chronicles-Origins"] .. "|r " .. L["Origins data for Chronicles addon"]
            )
        end
    end
)

function frame:InitializeOriginsPlugin()
    if not _G.Chronicles or not _G.Chronicles.Data then
        print(
            "|cffff0000Error:|r Chronicles addon not found! Chronicles-Origins requires Chronicles to be installed and loaded."
        )
        return
    end
    local Chronicles = _G.Chronicles
    local DataRegistry = Chronicles.Data

    DataRegistry:RegisterEventDB("origins_extended", OriginsEventsDB)
    DataRegistry:RegisterCharacterDB("origins_extended", OriginsCharactersDB)
    DataRegistry:RegisterFactionDB("origins_extended", OriginsFactionsDB)
end

-- Plugin metadata
private.pluginInfo = {
    name = "Chronicles-Origins",
    version = "1.0.0",
    author = "Chronicles Community",
    description = "Extended Origins timeline data for Chronicles addon",
    collections = {
        "origins_extended"
    }
}