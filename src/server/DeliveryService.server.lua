local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local hopp = Workspace.Hopp

hopp.Touched:Connect(function(hit)
    if hit:FindFirstAncestorWhichIsA("Tool") then
        local char = hit.Parent:FindFirstAncestorWhichIsA("Model")
        local player = Players:GetPlayerFromCharacter(char)

        player.leaderstats.Money.Value += 10
    end
end)
