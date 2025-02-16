QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("coin", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)

    if Player.Functions.GetItemByName("coin") then
        local result = (math.random(1, 2) == 1) and "Heads" or "Tails"
        TriggerClientEvent("JoeyB_Cointoss:CoinTossProgressbar", source, result)
    end
end)

RegisterNetEvent("JoeyB_Cointoss:server:SendMessage")
AddEventHandler("JoeyB_Cointoss:server:SendMessage", function(result)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player then
        local playerName = Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname
        local message = ("%s tossed a coin. Result: %s"):format(playerName, result)
        TriggerClientEvent("chat:addMessage", -1, { args = { "[Coin Toss]", message }, color = { 75, 255, 250 } })
    end
end)
