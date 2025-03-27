local velocity = script.Parent.Velocity.Magnitude
local material = tostring(script.Parent.Material.Name)
local hit = Instance.new("Sound")
hit.Parent = script.Parent

local particles = game.ReplicatedStorage.HitSounds.ParticleEmitter:Clone()
particles.Parent = script.Parent
particles.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, script.Parent.Color),
	ColorSequenceKeypoint.new(1, script.Parent.Color)
}		


print(script.Parent)
if script.Parent:FindFirstChild("HitSounds") then
	hitsoundsfolder = script.Parent.HitSounds
else
	hitsoundsfolder = game.ReplicatedStorage.HitSounds.Sounds[material]
end



script.Parent.Touched:Connect(function()
	-- Hitsound Stuff
	if velocity >= 10 --[[and hit.IsPlaying	== false]] then -- checks if the velocity is bigger or equal to 10 and a hitsounds not already playing
		
		if velocity >= 20 then
			hitsounds = hitsoundsfolder.Soft:GetChildren()
		else
			hitsounds = hitsoundsfolder.Hard:GetChildren()
		end
		
		local selectedSound = hitsounds[math.random(1, #hitsounds)]
		hit.SoundId = selectedSound.SoundId
		hit.Volume = velocity / 5 -- changes the impact sound volume
		hit.MinDistance = velocity / 5
		hit:Play() 
		
		-- Particle Stuff
		local transval = 1 - (velocity / 100) -- particles r lighter if speed is  less
		if transval < 0 then transval = 0 -- hard cap
		end
		
		particles.Transparency = NumberSequence.new{
			NumberSequenceKeypoint.new(0, transval), -- (time, value)
			NumberSequenceKeypoint.new(1, 1)
		}
		

		particles.Enabled = true
		wait(0.2)
		particles.Enabled = false
		
		--Things it hit stuff
		--print(script.Parent:GetTouchingParts())
		
	elseif velocity > 1 and not script.Parent.Owner.Value == 0 then
		particles:Destroy()
		script.Parent.HitSounds:Destroy()
		script:Destroy()
	end
end)

while true do --refreshes the velocity value every 0.1 second
	wait(0.1) 
	velocity = script.Parent.AssemblyLinearVelocity.Magnitude
end

