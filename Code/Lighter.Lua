local Tool = script.Parent
local Fire = Tool.Particle.Fire

Tool.Activated:Connect(function()
	if Fire.Enabled == false then
		Tool.LighterFlick:Play()
		Fire.Enabled = true
	else
		Fire.Enabled = false
	end

	while Fire.Enabled == true and task.wait(0.1) do
		local A = Tool.Model
		local B = Tool.Hitbox

		local Direction = B.Position - A.Position

		local Params = RaycastParams.new()
		Params.FilterType = Enum.RaycastFilterType.Exclude
		Params.FilterDescendantsInstances = {
			game.Workspace.SpawnLocation,
			game.Workspace.House,
			Tool.Hitbox
		}
		local RayCastResult = game.Workspace:Raycast(A.Position, Direction, Params)

		if RayCastResult and RayCastResult.Instance then
			if RayCastResult.Instance:IsA("BasePart") then
				RayCastResult.Instance.Color = Color3.new(0,0,0)
				task.wait(0.5)
				RayCastResult.Instance:Destroy()
			end
		end
	end
end)
