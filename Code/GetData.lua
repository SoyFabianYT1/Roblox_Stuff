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

return Functions
