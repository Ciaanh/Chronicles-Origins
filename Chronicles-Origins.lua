local ADDON_NAME, private = ...
private.addon_name = "Chronicles-Origins"

local ChroniclesOrigins = LibStub("AceAddon-3.0"):NewAddon(private.addon_name)

function ChroniclesOrigins:OnInitialize()
    if (ChroniclesPluginData.Register ~= nil) then
        ChroniclesPluginData.Register()
    else
        print("|cffff0000Error:|r ChroniclesPluginData.Register function not found for ", private.addon_name)
    end
end
