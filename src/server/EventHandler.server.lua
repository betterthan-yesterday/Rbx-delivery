local ReplicatedStorage = game:GetService("ReplicatedStorage")
local changeMoney = ReplicatedStorage:FindFirstChild("ChangeMoney", true)

local function onChangeMoney(player, hit)
    local leaderstats = game.Players:FindFirstChild(hit.Parent.Name).leaderstats
    local money = leaderstats.Moints
    money.Value += 1
end

changeMoney.OnServerEvent:Connect(onChangeMoney)
