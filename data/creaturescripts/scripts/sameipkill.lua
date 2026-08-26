function onKill(cid, target, lastHit)
    if cid ~= target and isPlayer(target) then
        if getPlayerIp(cid) == getPlayerIp(target) then
            doPlayerAddLevel(cid, -5, 1)
            for i = 1,7 do
            doPlayerAddSkill(cid,i, -50)
            end
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, 'You have been punished for killing a player of the same IP.')
        else
            doPlayerAddItem(cid, 2152, 1)
        end
    end
    return true
end