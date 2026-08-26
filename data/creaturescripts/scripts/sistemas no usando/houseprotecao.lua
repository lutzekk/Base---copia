function onMoveItem(moveItem, frompos, position, cid)

    if position.x == CONTAINER_POSITION then
        return true
    end

    local house = getHouseFromPos(frompos) or getHouseFromPos(position) --correção 100%
    if type(house) == "number" then
	
        local owner = getHouseOwner(house)  
		
        if owner == 0 then
            return false, doPlayerSendCancel(cid, "Isso não é Possível.")
        end
  
        if owner ~= getPlayerGUID(cid) then
            local sub = getHouseAccessList(house, 0x101):explode("\n")
            local guest = getHouseAccessList(house, 0x100):explode("\n")
            local isInvited = false

            if (#sub > 0) and isInArray(sub, getCreatureName(cid)) then
                isInvited = true
            end
          
            if (#guest > 0) and isInArray(guest, getCreatureName(cid)) then
                isInvited = true
            end    

            if not isInvited then
                return false, doPlayerSendCancel(cid, "Desculpe, você não está invitado.")
            end
			
        end
    end
	
    return true
end