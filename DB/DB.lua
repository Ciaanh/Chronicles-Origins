local ADDON_NAME, private = ...

private.pluginInfo = {
    name = "Chronicles-Origins",
    version = "1.0.0",
    author = "Chronicles Community",
    description = "Extended Origins timeline data for Chronicles addon",
    collection = "origins_extended"
}

local ChroniclesOrigins = LibStub("AceAddon-3.0"):NewAddon("Chronicles-Origins")

function ChroniclesOrigins:OnInitialize()
    if _G.Chronicles and _G.Chronicles.Data then
        local Chronicles = _G.Chronicles
        local DataRegistry = Chronicles.Data

        print("ChroniclesOrigins", "OnChroniclesReady called")

        -- Register our data with Chronicles
        DataRegistry:RegisterEventDB(private.pluginInfo.collection, OriginsEventsDB)
        DataRegistry:RegisterCharacterDB(private.pluginInfo.collection, OriginsCharactersDB)
        DataRegistry:RegisterFactionDB(private.pluginInfo.collection, OriginsFactionsDB)

        print("|cff00ff00Chronicles-Origins:|r Data registered successfully with Chronicles")
    else
        print(
            "|cffff0000Error:|r Chronicles addon not found! Chronicles-Origins requires Chronicles to be installed and loaded."
        )
    end
end
