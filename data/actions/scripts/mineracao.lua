--==--Sistema de Mineração By KingCPI--==--
function onUse(cid, item, frompos, item2, topos)

difskill = 50 --Dificuldade do skill(quanto maior mais dificil)
dif =200 --Dificuldade
skillid = 15895

-- Minerando pedras preciosas
smallrand = math.random(1, 10)
if smallrand == 1 then
smallpremio = 6527 -- Small Diamond
elseif smallrand == 2 or smallrand == 3 then
smallpremio = 6527 -- Small Sapphire
elseif smallrand == 4 or smallrand == 5 then
smallpremio = 6527 -- Small Ruby
elseif smallrand == 6 or smallrand == 7 then
smallpremio = 6527 -- Small Emerald
else
smallpremio = 6527 -- Small Amethysh
end

-- Minerando Gems
gemrand = math.random(1, 5)
if gemrand == 1 then
gempremio = 6527 -- Violet Gem
elseif gemrand == 2 then
gempremio = 6527 -- Yellow Gem
elseif gemrand == 3 then
gempremio = 6527 -- Big Emerald
elseif gemrand == 4 then
gempremio = 6527 -- Big Ruby
else
gempremio = 6527 -- Blue Gem
end

--Minerando Porcarias
porcrand = math.random(1,3)
if porcrand == 1 then
porcpremio = 6527 -- Stone
elseif porcrand == 2 then
porcpremio = 6527 -- Small Stone
else
porcpremio = 6527 -- Stone
end

-- Minerando coisas legais
lglrand = math.random(1, 4)
if lglrand == 1 then
lglpremio = 6527 -- Skull
elseif lglrand == 2 then
lglpremio = 6527 -- Talon
elseif lglrand == 3 then
lglpremio = 6527 -- Piece of Iron
else
lglpremio = 6527 -- Blank Rune
end

rand = math.random(1, dif)
if item2.itemid == 356 or
item2.itemid == 1358 or
item2.itemid == 1358 or
item2.itemid == 1358 or
item2.itemid == 1358 or
item2.itemid == 1358 then

if rand <= 50 then
doSendAnimatedText(topos,'Tck',210)
doSendMagicEffect(topos,416)
pedra = doPlayerAddItem(cid,porcpremio,1)
elseif rand >50 and rand <= 70 then
doSendAnimatedText(topos,'Tuk',210)
doSendMagicEffect(topos,416)
pedra = doPlayerAddItem(cid,lglpremio,1)
elseif rand >70 and rand <= 80 then
doSendAnimatedText(topos,'Tnk',210)
doSendMagicEffect(topos,416)
pedra = doPlayerAddItem(cid,smallpremio,1)
elseif rand >80 and rand <= 85 then
doSendAnimatedText(topos,'Tnk',210)
doSendMagicEffect(topos,416)
pedra = doPlayerAddItem(cid,gempremio,1)
else
doSendAnimatedText(topos,'Tin',210)
doSendMagicEffect(topos,3)
end
end
end




