local ServerStorage = game:GetService("ServerStorage")

local AllowedUsers = {
	"SoyFabian_YT3",
	"Ablaza10",
	"LncognitoBaseplate",
}

local SpecialGear = ServerStorage.VIPGear:GetChildren()

game.Players.PlayerAdded:Connect(function(player)
	local PlayerName = player.Name
	local Check = table.find(AllowedUsers, PlayerName)
	
	if Check then
		print(PlayerName.." will receive special tools")
		
		for _, v in SpecialGear do
			if v:IsA("Tool") then
				v.Parent = player:FindFirstChild("StarterGear")
			end
		end
	end
end)
