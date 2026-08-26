local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, 15)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
combat:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

function onTargetCreature(creature, target)
    local player = creature:getPlayer()
    if not player then
        return
    end

    local level, magicLevel = player:getLevel(), player:getMagicLevel()

    local healthMin = (level * 30) + (magicLevel * 7) + 100
    local healthMax = (level * 50) + (magicLevel * 7) + 100
    local healthGain = math.floor(math.random(healthMin, healthMax))
    target:addHealth(healthGain)

end

combat:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")

function onCastSpell(creature, variant, isHotkey)
    return combat:execute(creature, variant)
end

