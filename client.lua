ESX = nil
local warns = 0
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(60000)
        local noGambo = GetIsWidescreen()
        if not noGambo then
            warns = warns + 1
            if warns >= 3 then
                TriggerServerEvent('kickPlayer')
            else
                TriggerEvent('notifications', 'white', 'DeinServerName', 'Die Auflösung, in der du derzeit Spielst ist auf DeinServerName nicht zugelassen! Bitte ändere deine Auflösung um weiter spielen zu können (Warn '..tostring(warns)..'/3)')
            end
        end
    end
end)