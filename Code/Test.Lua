local VIP = {"SoyFabian_YT3", -- Players with access to the tool, you can change these by writing your username between the quotation marks
	"Phobos_IsNotAMoon",
	"ChangingVariable",
	"Ablaza10",
	"LncognitoBaseplate"	  -- if you want to add more players then YOU HAVE TO add a comma after the name of every player except for the last one you wrote
}

local ServerStorage = game:GetService("ServerStorage") -- You Should Save your tool in the ServerStorage
local Tool = ServerStorage.Placeholder -- Write Here the name of your tool

game.Players.PlayerAdded:Connect(function(player) -- Fires when a player joins the game
	local PlayerName = player.Name -- Defining as a String
	local Results = table.find(VIP, PlayerName) -- Looking if the name of the player is inside the table of people with access to the tool
	
	if Results then -- If it's found then clones the tool and parents it to the player's "StarterGear"
		local NewTool = Tool:Clone()
		NewTool.Parent = player:FindFirstChild("StarterGear")
		print("A Admin Joined this server!")
	end
end)

--[[
	My Username is SoyFabian_YT3... if want to add me :P
]]--
