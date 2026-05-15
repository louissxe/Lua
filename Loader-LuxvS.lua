--[[

██╗     ██╗   ██╗██╗  ██╗██╗   ██╗███████╗     ██████╗ ██████╗ ███╗   ███╗███╗   ███╗██╗   ██╗███╗   ██╗██╗████████╗██╗   ██╗
██║     ██║   ██║╚██╗██╔╝██║   ██║██╔════╝    ██╔════╝██╔═══██╗████╗ ████║████╗ ████║██║   ██║████╗  ██║██║╚══██╔══╝╚██╗ ██╔╝
██║     ██║   ██║ ╚███╔╝ ██║   ██║███████╗    ██║     ██║   ██║██╔████╔██║██╔████╔██║██║   ██║██╔██╗ ██║██║   ██║    ╚████╔╝ 
██║     ██║   ██║ ██╔██╗ ██║   ██║╚════██║    ██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║██║   ██║██║╚██╗██║██║   ██║     ╚██╔╝  
███████╗╚██████╔╝██╔╝ ██╗╚██████╔╝███████║    ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██║   ██║      ██║   
╚══════╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝     ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝   ╚═╝      ╚═╝   
Developed by Louissxe - https://louissxe.store - https://www.tiktok.com/@louissxe.store - https://discord.gg/KtyMF3FN
]]--

repeat task.wait() until game:IsLoaded() local LuxvsHub={} local function github(path)local a,b,c,d,e,f,g,h,i,j,k,l="Lua/","usercontent","https://","main/","raw.","louissxe/","heads/","keyless/",".com/","git","refs/","hub" return c..e..j..l..b..i..f..a..k..g..d..h..path end LuxvsHub.Universal=github("Universal.lua") LuxvsHub.Games={[89469502395769]={name="Kick a lucky block",url=github("kickalucky.lua")},[70845479499574]={name="Bite by night",url=github("bitebynight.lua")},[130274245431977]={name="Climb and Plunge",url=github("ClimbAndPlunge.lua")}} function LuxvsHub.Notify(title,text,duration) pcall(function() game:GetService("StarterGui"):SetCore("SendNotification",{Title=title,Text=text,Duration=duration or 5}) end) end function LuxvsHub.Load(url)local success,result=pcall(function() return loadstring(game:HttpGet(url))() end) if success then LuxvsHub.Notify("LuxvsHub","Successfully loaded script!",5) else LuxvsHub.Notify("LuxvsHub Error",tostring(result),8) end return result end local gameData=LuxvsHub.Games[game.PlaceId] local scriptURL=gameData and gameData.url or LuxvsHub.Universal local gameName=gameData and gameData.name or "Universal" LuxvsHub.Notify("LuxvsHub","Loading "..gameName.."...",5) LuxvsHub.Load(scriptURL)
