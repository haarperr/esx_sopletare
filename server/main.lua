ESX = nil

TriggerEvent("esx:getSharedObject", function(response)
    ESX = response
end)

RegisterServerEvent('esx-sopletare:getItem')
AddEventHandler('esx-sopletare:getItem', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    local luck = math.random(0, 20)
    local randomLure = math.random(5)
    local randomBandage = math.random(3)
    local randomMembership = math.random(1)
    local randomBread = math.random(2)
    local randomCoupon = math.random(1)

    if luck == 2 then
        xPlayer.addInventoryItem('fishing_lure', randomLure)
        TriggerClientEvent('esx:showNotification', src, 'Du hittade ' .. randomLure .. ' fiskebete')

    elseif luck == 5 then
        xPlayer.addInventoryItem('bandage', randomBandage)
        TriggerClientEvent('esx:showNotification', src, 'Du hittade ' .. randomBandage .. ' bandage')

    elseif luck == 8 then
        xPlayer.addInventoryItem('gym_membership', randomMembership)
        TriggerClientEvent('esx:showNotification', src, 'Du hittade ' .. randomMembership .. ' träningskort')

    elseif luck == 13 then
        xPlayer.addInventoryItem('bread', randomBread)
        TriggerClientEvent('esx:showNotification', src, 'Du hittade ' .. randomBread .. ' bröd')

    elseif luck == 17 then
        xPlayer.addInventoryItem('lotteryticket', randomCoupon)
        TriggerClientEvent('esx:showNotification', src, 'Du hittade ' .. randomCoupon .. ' skraplott')

    else
        TriggerClientEvent('esx:showNotification', src, 'Du hittade ingenting, skaffa dig ett jobb kanske?')
    end
end)