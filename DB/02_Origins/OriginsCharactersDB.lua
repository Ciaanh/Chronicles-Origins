local FOLDER_NAME, private = ...

local L = LibStub("AceLocale-3.0"):GetLocale("Chronicles-Origins")

OriginsCharactersDB = {
    [1001] = {
        id = 1001,
        name = L["amanthul_the_highfather"],
        author = "",
        chapters = {
            {
                header = L["the_highfather_leader_of_the_pantheon"],
                pages = {L["amanthul_desc"]}
            }
        },
        timeline = 1,
        factions = {2001}
    }
}
