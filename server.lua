ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('kickPlayer')
AddEventHandler('kickPlayer', function ()
    local xPlayer = ESX.GetPlayerFromId(source)
    DropPlayer(xPlayer, 'Antiresolution \nKick\nBitte ändere deine Auflösung! \n\n Sollte das DeinServerName Team feststellen, dass du öfters gegen deise Regel verstößt wird dein Benutzerkonto gesperrt!')
end)