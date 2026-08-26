local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false
local vip_pass_price = 10000  -- Precio del pase VIP en oro

function onCreatureDisappear(cid, pos)
    if focus == cid then
        selfSay('Good bye then.')
        focus = 0
        talk_start = 0
    end
end

function msgcontains(txt, str)
    return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end

function onCreatureSay(cid, type, msg)
    msg = string.lower(msg)

    if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
        selfSay('Hello, ' .. getCreatureName(cid) .. '! I can sell you a VIP pass for ' .. vip_pass_price .. ' gold.')
        focus = cid
        talk_start = os.clock()

    elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
        selfSay('Sorry, ' .. getCreatureName(cid) .. '! I will talk to you in a minute.')

    elseif focus == cid then
        talk_start = os.clock()

        if msgcontains(msg, 'vip pass') then
            if getPlayerGold(cid) >= vip_pass_price then
                doPlayerRemoveGold(cid, vip_pass_price)  -- Quita el oro del jugador
                setPlayerStorageValue(cid, 93929, 1)  -- Establece el storage para el pase VIP
                selfSay('You have purchased the VIP pass! Enjoy your benefits!')
            else
                selfSay('You do not have enough gold to buy the VIP pass.')
            end

        elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
            selfSay('Good bye, ' .. getCreatureName(cid) .. '!')
            focus = 0
            talk_start = 0
        end
    end
end

function onThink()
    doNpcSetCreatureFocus(focus)
    if (os.clock() - talk_start) > 45 then
        if focus > 0 then
            selfSay('Next Please...')
        end
        focus = 0
    end
    if focus ~= 0 then
        if getDistanceToCreature(focus) > 5 then
            selfSay('Good bye then.')
            focus = 0
        end
    end
end
