local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)

ESX.RegisterServerCallback("hud:getMoney", function(source, cb)

    local xPlayer = ESX.GetPlayerFromId(source)
    local money = xPlayer.getMoney()

    cb(money)

end)