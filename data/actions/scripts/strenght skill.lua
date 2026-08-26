-- Exp Orb by Orion
-- Skrypt mo¿na skopiowaæ z poni¿szymi komentarzami. Nie wp³ywaj¹ one w ¿aden sposób na skrypt.

function onUse(cid, item, frompos, item2, topos)
if item.itemid == 5952 then -- ID naszego orbu

		local pos = getPlayerPosition(cid)
		local exp = math.random(1000000,1000000) -- iloœæ expa jak¹ dostaniemy, pierwsza wartoœæ - minimalna iloœæ, druga - 


		
		doSendAnimatedText(pos, exp, 66) -- liczba przedstawia kolor tekstu wyœwietlony w grze
		doPlayerAddExp(cid, exp)
		doSendMagicEffect(topos, 13) -- magic effect jaki zobaczymy w grze		
end
end