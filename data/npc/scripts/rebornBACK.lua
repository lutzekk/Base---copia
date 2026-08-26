local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local config = {
        
        
        outfit_gokurb = {lookType = 69, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_gohanrb = {lookType = 148, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_gotenrb = {lookType = 144, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_vegetarb = {lookType = 165, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_trunksrb = {lookType = 162, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_chibitrunksrb = {lookType = 150, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_freezarb = {lookType = 101, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_cellrb = {lookType = 118, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_buurb = {lookType = 34, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_c17rb = {lookType = 15, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_c18rb = {lookType = 15, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_piccolorb = {lookType = 173, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_tsufulrb = {lookType = 178, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_brollyrb = {lookType = 184, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_coolerrb = {lookType = 190, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_denderb = {lookType = 221, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_uubrb = {lookType = 281, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        outfit_bardockrb = {lookType = 60, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_kuririnrb = {lookType = 42, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_shenronrb = {lookType = 198, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_panrb = {lookType = 404, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_supremorb = {lookType = 403, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_janembarb = {lookType = 402, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_vegettorb = {lookType = 461, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_videlrb = {lookType = 409, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_raditzrb = {lookType = 493, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_kamerb = {lookType = 503, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_tapionrb = {lookType = 522, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_tenshinrb = {lookType = 435, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_kingrb = {lookType = 565, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_c8rb = {lookType = 743, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_turlesrb = {lookType = 532, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_jenkrb = {lookType = 476, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_yamcharb = {lookType = 770, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_c16rb = {lookType = 508, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_bulmarb = {lookType = 574, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_zaikorb = {lookType = 779, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_kagomerb = {lookType = 556, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_chilledrb = {lookType = 852, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_billsrb = {lookType = 948, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_paikuhanrb = {lookType = 948, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_gokublackrb = {lookType = 1043, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_hittorb = {lookType = 1038, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}


}

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") then
        selfSay("Hello. If you ready I can {reborn} you.", cid)


        

      elseif msgcontains(msg, "reborn") then
        selfSay("Are you sure?.", cid)
        talkState[cid] = 1


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 7 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_gokurb)
     doReborn(cid,8)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 28 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_gohanrb)
     doReborn(cid,30)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 35 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_gotenrb)
     doReborn(cid,37)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 19 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_vegetarb)
     doReborn(cid,20)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 43 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_trunksrb)
     doReborn(cid,46)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 51 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_chibitrunksrb)
     doReborn(cid,53)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 61 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_freezarb)
     doReborn(cid,62)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 71 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_cellrb)
     doReborn(cid,72)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 81 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_buurb)
     doReborn(cid,82)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 91 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_c17rb)
     doReborn(cid,92)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 101 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_c18rb)
     doReborn(cid,102)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 111 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_piccolorb)
     doReborn(cid,112)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 121 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_tsufulrb)
     doReborn(cid,122)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 129 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_brollyrb)
     doReborn(cid,132)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 142 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_coolerrb)
     doReborn(cid,143)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 151 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_denderb)
     doReborn(cid,152)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 161 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_uubrb)
     doReborn(cid,162)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 172 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_bardockrb)
     doReborn(cid,173)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 224 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_kuririnrb)
     doReborn(cid,225)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 235 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_shenronrb)
     doReborn(cid,236)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 246 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_panrb)
     doReborn(cid,247)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 257 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_supremorb)
     doReborn(cid,258)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 268 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_janembarb)
     doReborn(cid,269)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 279 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_vegettorb)
     doReborn(cid,280)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 290 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_videlrb)
     doReborn(cid,291)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 302 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_raditzrb)
     doReborn(cid,303)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 314 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_kamerb)
     doReborn(cid,315)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 325 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_tapionrb)
     doReborn(cid,326)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 336 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_tenshinrb)
     doReborn(cid,337)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 347 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_kingrb)
     doReborn(cid,348)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 

elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 391 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_jenkrb)
     doReborn(cid,392)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 369 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_turlesrb)
     doReborn(cid,370)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 358 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_c8rb)
     doReborn(cid,359)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 
elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 380 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_yamcharb)
     doReborn(cid,381)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 402 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_c16rb)
     doReborn(cid,403)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	  elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 413 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_bulmarb)
     doReborn(cid,414)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 424 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_zaikorb)
     doReborn(cid,425)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	 elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 435 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_kagomerb)
     doReborn(cid,436)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	  elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 484 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_chilledrb)
     doReborn(cid,485)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	  elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 496 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_billsrb)
     doReborn(cid,497)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	  elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 508 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_paikuhanrb)
     doReborn(cid,509)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)

	  elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 520 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_gokublackrb)
     doReborn(cid,521)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
	 
	  elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerLevel(cid) >= 200 and getPlayerVocation(cid) == 532 and talkState[cid] == 1 then
     selfSay("Ok!.", cid)
     doCreatureChangeOutfit(cid, config.outfit_hittorb)
     doReborn(cid,533)
     setPlayerStorageValue(cid,30023,4)
     setCreatureMaxHealth(cid, getCreatureMaxHealth(cid)+20000)
     setCreatureMaxMana(cid, getCreatureMaxMana(cid)+20000)
     doRemoveCreature(cid,true)
     
elseif getPlayerStorageValue(cid, 30023) == 4 then
     selfSay("Sorry, but you are after reborn.", cid)
     talkState[cid] = 0
     
elseif getPlayerLevel(cid) < 200 then
    selfSay("Hehe, I say If you READY. You do not have 250 lvl.", cid)
    talkState[cid] = 0











     else
     selfSay("! You must revert or transform.", cid)
     talkState[cid] = 0
     end
     return TRUE
     end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

