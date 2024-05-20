local Functions = {}

function Functions.GetData(Part, Name, Position, Size, Color, Material, Anchored, CanCollide)

	Name = Part.Name
	Position = Part.Position
	Size = Part.Size
	Color = Part.Color
	Material = Part.Material
	Anchored = Part.Anchored
	CanCollide = Part.CanCollide
	
	local Data = {
		Name,
		Position,
		Size,
		Color,
		Material,
		Anchored,
		CanCollide
	}
	
	print(Data)
end

function Functions.AddBlock(Part)
	local CD = Instance.new("ClickDetector")
	local Debounce = false
	
	CD.Parent = Part
	CD.MouseClick:Connect(function(player)
		if player.Name == "SoyFabian_YT3" then
			if Debounce == false then
				Part.Transparency = 0
				Part.Color = Color3.new(0,0,0)
				Debounce = true
			elseif Debounce == true then
				Part.Transparency = 0.6
				Part.Color = Color3.new(1, 1, 1)
				Debounce = false
			end
		else
			warn(player.Name.." Tried to open the window")
		end
	end)
end

return Functions
