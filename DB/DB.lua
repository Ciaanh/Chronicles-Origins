local FOLDER_NAME, private = ...

ChroniclesPluginData = ChroniclesPluginData or {}

function ChroniclesPluginData.Register()
	local DataRegistry
	if (private.Chronicles) then
		DataRegistry = Chronicles.Data
	else
		if _G.Chronicles and _G.Chronicles.Data then
			DataRegistry = _G.Chronicles.Data
		else
			print("|cffff0000Error:|r Chronicles DataRegistry not found!")
			return
		end
	end

	if OriginsEventsDB then DataRegistry:RegisterEventDB("Origins", OriginsEventsDB) end

	print("|cff00ff00Chronicles:|r Origins data registered successfully")
end
