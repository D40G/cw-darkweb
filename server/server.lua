local QBCore = exports['qb-core']:GetCoreObject()

local function dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. dump(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
end


QBCore.Functions.CreateUseableItem(Config.LaptopItem, function(source, Item)
    TriggerClientEvent("cw-darkweb:client:openInteraction", source)
end)
