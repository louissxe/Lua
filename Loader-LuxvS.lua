--[[

██╗     ██╗   ██╗██╗  ██╗██╗   ██╗███████╗     ██████╗ ██████╗ ███╗   ███╗███╗   ███╗██╗   ██╗███╗   ██╗██╗████████╗██╗   ██╗
██║     ██║   ██║╚██╗██╔╝██║   ██║██╔════╝    ██╔════╝██╔═══██╗████╗ ████║████╗ ████║██║   ██║████╗  ██║██║╚══██╔══╝╚██╗ ██╔╝
██║     ██║   ██║ ╚███╔╝ ██║   ██║███████╗    ██║     ██║   ██║██╔████╔██║██╔████╔██║██║   ██║██╔██╗ ██║██║   ██║    ╚████╔╝ 
██║     ██║   ██║ ██╔██╗ ██║   ██║╚════██║    ██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║██║   ██║██║╚██╗██║██║   ██║     ╚██╔╝  
███████╗╚██████╔╝██╔╝ ██╗╚██████╔╝███████║    ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██║   ██║      ██║   
╚══════╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝     ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝   ╚═╝      ╚═╝   
Developed by Louissxe - https://louissxe.store
]]--
repeat task.wait() until game:IsLoaded()

_G.LuxvsHub = _G.LuxvsHub or {}

_G.LuxvsHub.Games = {
    [131623223084840] = {
        name = "Escape Tsunami",
        url = "https://raw.githubusercontent.com/louissxe/Lua/refs/heads/main/etb.lua"
    },
    [130342654546662] = {
        name = "Sambung Kata",
        url = "https://raw.githubusercontent.com/louissxe/Lua/refs/heads/main/sambung-kata.lua"
    },
    [121500015379301] = {
        name = "FishGod",
        url = "https://raw.githubusercontent.com/nexiuse/FishGodLuxvsHubXNex/refs/heads/main/FishGodLuxvsHubXNex.lua"
    },
    [2753915549] = {
        name = "BloxFruits",
        url = "https://raw.githubusercontent.com/nexiuse/Luxv-SHubXNexBloxFruits/refs/heads/main/Luxv'SHubXNexBloxFruits.lua"
    },
    [70845479499574] = {
        name = "BiteByNight",
        url = "https://raw.githubusercontent.com/louissxe/Lua/refs/heads/main/keyless/bitebynight.lua"
    },
    [121442629947656] = {
        name = "Fishzar",
        url = "https://raw.githubusercontent.com/nexiuse/Luxvs-X-Nex-Hub-Fishzar/main/Luxv%27S%20X%20Nex%20Hub.lua"
    }
}

function _G.LuxvsHub.Load(url)
    return loadstring(game:HttpGet(url))()
end

local gameData = _G.LuxvsHub.Games[game.PlaceId]

local url = gameData and gameData.url
    or "https://raw.githubusercontent.com/louissxe/Lua/refs/heads/main/Universal.lua"

_G.LuxvsHub.Load(url)
