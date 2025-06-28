local FOLDER_NAME, private = ...
local Chronicles = _G.Chronicles or Chronicles
Chronicles.DB = {}
Chronicles.DB.Modules = {
	origins = "Origins"
}
function Chronicles.DB:Init()
	Chronicles.Data:RegisterEventDB(Chronicles.DB.Modules.origins, OriginsEventsDB)
   
end