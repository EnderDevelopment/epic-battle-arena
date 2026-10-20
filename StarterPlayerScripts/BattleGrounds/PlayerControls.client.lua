-- PlayerControls.client.lua

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function setupControls(character)
    -- Set up player controls
    -- ...
end

player.CharacterAdded:Connect(setupControls)