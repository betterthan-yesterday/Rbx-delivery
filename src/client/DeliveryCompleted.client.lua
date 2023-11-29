local ReplicatedStorage = game:GetService("ReplicatedStorage")
local changeMoney = ReplicatedStorage:FindFirstChild("ChangeMoney", true)

local disp = game.Workspace:WaitForChild("Disp")
local hopp = game.Workspace:WaitForChild("Hopp")
local hasTouched = false

disp.Touched:Connect(function(player)
    hasTouched = true
end)

hopp.Touched:Connect(function(hit)
    if hasTouched and hit.Parent:FindFirstChild("Humanoid") then
        changeMoney:FireServer(hit)
        hasTouched = false
    end
end)
