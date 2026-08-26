-- specific weapons giving more skill tries than usually.
-- (while attacking some monsters like "Train". Depends to whom you added this event to..)
--[[
    (SKILL_FIST)  |  (SKILL_CLUB) |  (SKILL_SWORD)
    (SKILL_AXE)   (SKILL_DISTANCE)  (SKILL_SHIELD)
    (SKILL_FISHING)  (SKILL_MAGLEVEL)  (SKILL_LEVEL)
 
    (CONST_SLOT_HEAD)    
    (CONST_SLOT_NECKLACE)
    (CONST_SLOT_BACKPACK)
    (CONST_SLOT_ARMOR)
    (CONST_SLOT_RIGHT)
    (CONST_SLOT_LEFT)
    (CONST_SLOT_LEGS)
    (CONST_SLOT_FEET)
    (CONST_SLOT_RING)
    (CONST_SLOT_AMMO)
]]--
local bands = {
    [2166] = { -- item id
        tries = 50, -- bonus skill tries
        skillz = SKILL_FIST, -- look commented area above for more
        xeffect = 0 -- what effect to send on attacked creature
    }
}

function onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
local whatBand = 0

    if creature:isMonster() and attacker:isPlayer() then
        if attacker:getSlotItem(CONST_SLOT_LEFT) then
            whatBand = bands[attacker:getSlotItem(CONST_SLOT_LEFT):getId()]
            if not whatBand then
                return primaryDamage, primaryType, secondaryDamage, secondaryType
            end
            creature:getPosition():sendMagicEffect(whatBand.xeffect)
            attacker:addSkillTries(whatBand.skillz, whatBand.tries)
        end
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end