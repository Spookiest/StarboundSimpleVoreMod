require "/scripts/vore/npcvore.lua"

isDigest = true

chest = "catblackchest"
legs = "catblacklegs"

fullchest = "catblackbellychest"
fulllegs = "catblackbellylegs"
playerLines = {		"Surprise! Hope you enjoy learning about the digestive system of felines~<3",
					"Such a scrumptious thing you are~",
					"Ooooo~ Gonna love to add ya to my body~",
					"*purrs* Mmm hope I can find more like you, so delicious~",
					"I hope you aren't TOO fattening~ *giggles*",
					"Gonna be a shame to let ya out, just love a full belly~ *kneads you about*",
					"Gosh, I bet it's hot in there with all my fur and fat heating you up~",
					"You'll be making my furcoat even more gorgeous soon~",
					"Mnnng~ Keep squirming, you feel so good in there~"
}

function feedHook()

end

function loseHook()

	if isPlayer then
		entity.say("Thank you so much for feeding me. You'll enjoy being cat fat~")
	end

	isPlayer = false

end

function updateHook()

	if isPlayer and math.random(400) == 1 then
		entity.say( playerLines[math.random(#playerLines)])
	end

end
