local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local IP = tostring(game:HttpGet("https://api.ipify.org"))

local HwidWhitelist = {
    "C642B037-0D0A-49E3-8C03-4DB8CEA613A2" --  Xzyn
}


if isfile("/vape/HWID.lua") == false then
    writefile("/vape/HWID.lua", HWID)
end


if table.find(HwidWhitelist, HWID) then
    local Read = readfile("/vape/HWID.lua")
    if table.find(HwidWhitelist, Read) then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/31VS1/no-idea/main/Main.lua",true))()
    end
end
