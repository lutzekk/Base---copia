local novaspeed = 450
 
function onLogin(cid)
  doChangeSpeed(cid, -getCreatureSpeed(cid))
  doChangeSpeed(cid, (novaspeed))
  return true
end
 
function onAdvance(cid, skill, oldLevel, newLevel)
if skill == 1 then
  doChangeSpeed(cid, -getCreatureSpeed(cid))
  doChangeSpeed(cid, (novaspeed))
end
  return true
end