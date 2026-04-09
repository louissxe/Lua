--[[ 

██╗      ██╗   ██╗██╗  ██╗██╗   ██╗███████╗
██║      ██║   ██║╚██╗██╔╝██║   ██║██╔════╝
██║      ██║   ██║ ╚███╔╝ ██║   ██║███████╗
██║      ██║   ██║ ██╔██╗ ██║   ██║╚════██║
███████╗ ╚██████╔╝██╔╝ ██╗╚██████╔╝███████║
╚══════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝

            L U X V S   H U B
Developed by Louissxe || discord.gg/xUgXNZjc
]]

repeat task.wait() until game:IsLoaded()

local Games = {
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

local function loadScript(url)
    return loadstring(game:HttpGet(url))()
end

local placeId = game.PlaceId
local selectedGame = Games[placeId]

local url = selectedGame and selectedGame.url
    or "https://raw.githubusercontent.com/louissxe/Lua/refs/heads/main/Universal.lua"

loadScript(url)
