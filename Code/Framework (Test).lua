local Framework = {}

Framework.Version = "1.0.0"

function Framework.MouseHoverHighlight(Part)
	-- Activated when the Mouse Hovers a part
	local Highlight = Part:FindFirstChild("Highlight") -- Looking for a hihghlight object
	local NewHighlight	-- if there is no highlight object creates a placeholder for a new one

	local CD = Instance.new("ClickDetector") -- creates a click detector and parents it to the part
	CD.Parent = Part
	CD.MouseHoverEnter:Connect(function(player) -- enables the highlight whenever the mouse hovers the part
		if Highlight then
			Highlight.Enabled = true
			
		elseif not Highlight then -- uses the placeholder created before and creates a new highlight object
			warn(Part.Name.." No Highlight was found in this part, creating one...")
			
			NewHighlight = Instance.new("Highlight")
			
			NewHighlight.Parent = Part -- Parenting the new Highlight and parents it to the part
			NewHighlight.Enabled = true
		end
	end)
	
	CD.MouseHoverLeave:Connect(function(player) -- disables the highlight when the mouse leaves the part
		if Highlight then
			Highlight.Enabled = false
		end
	end)
end

function Framework.Breakblock(Block) -- Fires when a player clicks the block
	local BreakableValue = Block:FindFirstChild("Breakable")
	local NewBreakableValue	-- Another placeholder variable in case there is no BoolValue called Breakable
	local CD = Block:FindFirstChild("ClickDetector")
	
	if CD then
		print("Click detector found")	-- Looks for a click detector
	else
		warn(Block.Name.." Does not have a click detector") -- warns the user/developer if the block doesn't has a click detector
	end
	
	CD.MouseClick:Connect(function(player)
		if BreakableValue then
			if BreakableValue.Value == true then
				Block:Destroy()
			end
		elseif  BreakableValue.Value == false then
			warn(Block.Name.." Breakable property is set to false, you can't destroy the block")
		elseif not BreakableValue then
			warn(Block.Name.." Does not have a breakable value") -- warns the user/developer if the block doesn't has a breakable value
			
	
			NewBreakableValue = Instance.new("BoolValue") -- uses the placeholder variablr and parents it to the block
			
			NewBreakableValue.Parent = Block
			NewBreakableValue.Name = "Breakable"
			NewBreakableValue.Value = true
			Block:Destroy()
		end
	end)
end

print(Framework.Version)

return Framework

--[[

Created By: SoyFabian_YT3
Description: used for testing purposes
Version: 1.0.0

------------------------------------------
Changelog:

Version: 1.0.0
- First release

]]--
