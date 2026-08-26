function onThink(interval)
    local players = Game.getPlayers()
    if #players == 0 then
        return true
    end

    local player
    for i = 1, #players do
        player = players
        player:save()
        player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Save.")
    end

    return true
end