local FOLDER_NAME, private = ...

local L = LibStub("AceLocale-3.0"):GetLocale("Chronicles-Origins")

OriginsFactionsDB = {
    [2001] = {
        id = 2001,
        name = L["the_pantheon"],
        author = "",
        chapters = {
            {
                header = L["the_pantheon"],
                pages = {L["pantheon_desc"]}
            }
        },
        timeline = 1
    }
}
