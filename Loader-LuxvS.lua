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
		[89469502395769] = {
				name = "Kick a lucky block",
				url = "https://raw.githubusercontent.com/louissxe/Lua/refs/heads/main/keyless/kickalucky.lua"
		},
		[70845479499574] = {
				name = "Bite by night",
				url = "https://raw.githubusercontent.com/louissxe/Lua/refs/heads/main/keyless/bitebynight.lua"
		},
		[130274245431977] = {
				name = "Climb and Plunge",
				url = "https://raw.githubusercontent.com/louissxe/Lua/refs/heads/main/keyless/ClimbAndPlunge.lua"
		},
}

function _G.LuxvsHub.Load(url)
    return loadstring(game:HttpGet(url))()
end

local gameData = _G.LuxvsHub.Games[game.PlaceId]

local url = gameData and gameData.url
    or "https://raw.githubusercontent.com/louissxe/Lua/refs/heads/main/keyless/Universal.lua"

_G.LuxvsHub.Load(url)
