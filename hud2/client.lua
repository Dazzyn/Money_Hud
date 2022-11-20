ESX = nil
Citizen.CreateThread(function()
 while ESX == nil do
  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
  Citizen.Wait(0)
 end
end)

Citizen.CreateThread(function()
    while true do
        Wait(100)

        ESX.TriggerServerCallback("hud:getMoney", function(money)

        SendNUIMessage({
            type    = 'all',
            money     = money,
        })

        end)
    end
end)