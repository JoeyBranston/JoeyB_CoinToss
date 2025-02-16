RegisterNetEvent('JoeyB_Cointoss:CoinTossProgressbar', function(result)
	local playerPed = PlayerPedId()
    
    RequestAnimDict("anim@mp_player_intcelebrationmale@coin_roll_and_toss")
    while not HasAnimDictLoaded("anim@mp_player_intcelebrationmale@coin_roll_and_toss") do
        Wait(10)
    end
	
    exports['progressbar']:Progress({
        name = "JoeyB_Cointoss",
        duration = 4000,
        label = "Flipping the coin...",
        useWhileDead = false,
        canCancel = false,
        controlDisables = {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "anim@mp_player_intcelebrationmale@coin_roll_and_toss",
            anim = "coin_roll_and_toss",
            flags = 48,
        }
    })
	
	TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10.0, "coin_flip", 0.1)

    Wait(4000)
    TriggerServerEvent("JoeyB_Cointoss:server:SendMessage", result)
end)
