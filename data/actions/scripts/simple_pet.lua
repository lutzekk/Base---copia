function onUse(cid, item, frompos, item2, topos)

local dolls = {
[11470] = {pet = "[PARCEIRO] Sasuke"},
[13956] = {pet = "Riolu"},
[13958] = {pet = "Lucario"},
[13963] = {pet = "Mega Lucario"},
[13989] = {pet = "Schyther"},
[13990] = {pet = "Scizor"},
[13994] = {pet = "Shiny Lucario"},
[13995] = {pet = "Shiny Scizor"},
[13991] = {pet = "Mega Scizor"},
[13996] = {pet = "Dark Lucario"},
[14059] = {pet = "Mew"},
[14070] = {pet = "Mewtwo"},
[14073] = {pet = "Mega Mewtwo Y"},
}
local go = dolls[item.itemid]
local summon = getCreatureSummons(cid)

---------------------------------------------------

if #summon >= 1 then
for _, pid in ipairs(summon) do
doRemoveCreature(pid)
doCreatureSay(cid, "Agora va descansar "..go.pet.."", TALKTYPE_ORANGE_1)
end
return true
end

doConvinceCreature(cid, doSummonCreature(go.pet, getCreaturePosition(cid)))
doCreatureSay(cid, "Vamos batalhar "..go.pet.."", TALKTYPE_ORANGE_1)
return true
end
