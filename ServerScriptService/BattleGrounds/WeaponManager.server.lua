-- WeaponManager.server.lua

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local SharedUtils = require(ReplicatedStorage:WaitForChild("BattleGrounds"):WaitForChild("SharedUtils"))

local function onPlayerAdded(player)
    -- Give player a weapon
    local weapon = SharedUtils.createWeapon("Pistol")
    weapon.Parent = player:WaitForChild("Backpack")
end

Players.PlayerAdded:Connect(onPlayerAdded)