--By Gaonner--
function onSay(cid, words, param)


frases = {"disband","invite","!invite","!disband","fdp","fresco"}


n = math.random(1,table.getn(frases))
frase = frases[n]
----------------------------End Configuration--------------------------------


doPlayerSay(cid,frase,1)
end