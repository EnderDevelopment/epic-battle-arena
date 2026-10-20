-- PlayerUI.client.lua

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function updateUI()
    -- Update player UI
    -- ...
end

player.CharacterAdded:Connect(function(character)
    updateUI()
end)

player:GetAttributeChangedSignal("Health"):Connect(updateUI)
player:GetAttributeChangedSignal("Kills"):Connect(updateUI)
player:GetAttributeChangedSignal("Deaths"):Connect(updateUI)