local i = {
["18:00"] = {nome = "Invasão City Center", pos = {x=108, y=148, z=7}, monster = {"2 Invasor", ""}},
["19:21"] = {nome = "The Massive Dragon Invasion", pos = {x=159, y=58, z=7}, monster = {"1 Demon"}},
}

function onTime()
hours = tostring(os.date("%X")):sub(1, 5)
tb = i[hours]
if tb then
doBroadcastMessage(hours .. " - " .. tb.nome .. " iníciou ! Todos em City Center ,vai rápido.")
for _,x in pairs(tb.monster) do
for s = 1, tonumber(x:match("%d+")) do
doSummonCreature(x:match("%s(.+)"), tb.pos)
end
end
end
return true
end