-- SharedUtils.lua

local SharedUtils = {}

function SharedUtils.createWeapon(weaponType)
    local weapon = Instance.new("Tool")
    weapon.Name = weaponType
    
    -- Set up weapon properties
    -- ...
    
    return weapon
end

return SharedUtils