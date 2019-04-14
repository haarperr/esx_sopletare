ESX = nil

TriggerEvent("esx:getSharedObject", function(response)
    ESX = response
end)

RegisterServerEvent('esx-sopletare:getItem')
AddEventHandler('esx-sopletare:getItem', function()

    local luck = math.random(1, 3)

    if luck == 1 then

        local items = { -- add whatever items you want here
            'fishing_lure',
            'bandage',
            'weed_pooch',
            'bread',
            'lotteryticket'
        }

        local xPlayer = ESX.GetPlayerFromId(source)
        local randomItems = items[math.random(#items)]
        local quantity = math.random(#items)
        local itemfound = ESX.GetItemLabel(randomItems)

        xPlayer.addInventoryItem(randomItems, quantity)
        TriggerClientEvent('esx:showNotification', source, 'Du hittade ' .. quantity .. ' st ' .. itemfound)
    else
        TriggerClientEvent('esx:showNotification', source, 'Du hittade ingenting, skaffa dig ett jobb kanske?')
    end
end)
