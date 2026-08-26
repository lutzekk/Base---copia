local spell = Spell(SPELL_INSTANT)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_TICKS, 10000)
condition:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, 135)
condition:setParameter(CONDITION_PARAM_DISABLE_DEFENSE, true)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat:addCondition(condition)

local function effect(pos)
    local effect = 15
    Position(pos.x+1, pos.y+1, pos.z):sendDistanceEffect(pos, effect)
    pos:sendMagicEffect(9)
    addEvent(function()
        Position(pos.x, pos.y+2, pos.z):sendDistanceEffect(pos, effect)
        pos:sendMagicEffect(21)
    end, 100)
end

function spell.onCastSpell(creature, variant)
    addEvent(effect, 10, creature:getPosition())
    combat:execute(creature, variant)
    return true
end

spell:name("utito poison")
spell:words("utito poison")
spell:group("support")
spell:vocation("druid", "master sorcerer")
spell:id(2)
spell:cooldown(30000)
spell:level(1)
spell:manaPercent(15)
spell:blockWalls(true)
spell:isSelfTarget(true)
spell:register()