local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 8)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -9.0, 0, -9.5, 0)




local arr = {
{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{1, 1, 2, 1, 1},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0}
}

 
  local area = createCombatArea(arr)

setCombatArea(combat, area)

function aa(cid)
if getCreatureLookDirection(cid) == SOUTH then
pos = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z, stackpos=255}
doSendMagicEffect(pos, 74)
elseif getCreatureLookDirection(cid) == NORTH then
pos = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z, stackpos=255}
doSendMagicEffect(pos, 74)
elseif getCreatureLookDirection(cid) == EAST then
pos = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z, stackpos=255}
doSendMagicEffect(pos, 74)
elseif getCreatureLookDirection(cid) == WEST then
pos = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z, stackpos=255}
doSendMagicEffect(pos, 74)
end
end

function onCastSpell(cid, var)
addEvent(aa,0,cid)

	return doCombat(cid, combat, var)
	
	
	

end
