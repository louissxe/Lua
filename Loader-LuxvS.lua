do
repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local Games = {
    [131623223084840] = {
        name = "Escape Tsunami",
        url = "https://raw.githubusercontent.com/louissxe/Lua/refs/heads/main/etb.lua"
    },
    [130342654546662] = {
        name = "Sambung Kata",
        url = "https://raw.githubusercontent.com/louissxe/Lua/refs/heads/main/sambung-kata.lua"
    }
}

local placeId = game.PlaceId
local gameData = Games[placeId]

if gameData then
    loadstring(game:HttpGet(gameData.url))()
else
    local supported = ""
    for _,data in pairs(Games) do
        supported = supported .. "\n• " .. data.name
    end

    player:Kick("Game not supported!\n\nSupported Games:" .. supported)
end
end
