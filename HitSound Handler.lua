local hitSoundScript = game.ReplicatedStorage.HitSounds.HitsoundScript
local collectionService = game:GetService("CollectionService")

-- clone function
function addScript(part)
	if part:FindFirstChild("HitsoundScript") == nil then
		local hitSoundScriptClone = hitSoundScript:Clone()
		hitSoundScriptClone.Parent = part
		hitSoundScriptClone.Disabled = false
	end
end

-- descendants list
local descendants = script.Parent:GetDescendants()
for i = 1, #descendants do
	if descendants[i]:IsA("BasePart") == false then
		table.remove(descendants,i)
	end
end

-- let all parts settle first
game.Loaded:Wait()
wait(10)
-- loop check if thingys velocity is changed
while wait(1) do
	for x = 1, #descendants do
		if descendants[x].AssemblyLinearVelocity.Magnitude > 10 then
			addScript(descendants[x])
		end
	end
end

