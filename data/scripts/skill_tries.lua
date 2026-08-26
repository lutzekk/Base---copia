local configBands = {
    [2203] = { -- item id that increases skill tries
        bonusTry = 800, -- how much it increases tries by
        xeffect = 40 -- what effect to send on creature
    }
}


local ec = EventCallback

ec.onGainSkillTries = function(self, skill, tries)
    local target = self:getTarget()
    local whatBand = 0
    -- if you want to enable only for certain monster than change line below for:
    -- if target and target:getName() == "Train" then
    if target then
        if self:getSlotItem(CONST_SLOT_LEFT):getId() then
            whatBand = configBands[self:getSlotItem(CONST_SLOT_LEFT):getId()]
            if not whatBand then
                return tries
            end
            tries = tries + whatBand.bonusTry -- increased tries by config
            target:getPosition():sendMagicEffect(whatBand.xeffect)
            self:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Using training weapon. Skilling is increased!")
        end
    end
    return tries
end

ec:register(1) -- 1 is indicating execution order of scripts.