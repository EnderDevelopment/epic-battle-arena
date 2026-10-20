-- PlayerManager.server.lua

local Players = game:GetService("Players")

local function onPlayerAdded(player)
    -- Initialize player data
    player:SetAttribute("Health", 100)
    player:SetAttribute("Kills", 0)
    player:SetAttribute("Deaths", 0)
    
    -- Set up player character
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    -- Handle player death
    humanoid.Died:Connect(function()
        player:SetAttribute("Deaths", player:GetAttribute("Deaths") + 1)
    end)
end

Players.PlayerAdded:Connect(onPlayerAdded)