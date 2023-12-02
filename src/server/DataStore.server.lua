local DataStoreService = game:GetService("DataStoreService")
local deliveryStore = DataStoreService:GetDataStore("RbxDelivery")
local RunService = game:GetService("RunService")

game.Players.PlayerAdded:Connect(function(player)
    local leaderstats = Instance.new("Folder", player)
    leaderstats.Name = "leaderstats"

    local level = Instance.new("IntValue", leaderstats)
    level.Name = "Level"
    level.Value = 1

    local money = Instance.new("IntValue", leaderstats)
    money.Name = "Money"

    local success, data = pcall(function()
        return deliveryStore:GetAsync(player.UserId)
    end)

    if success then
        level.Value = data.Level
        money.Value = data.Money
    else
        print(data)
    end
end)

game.Players.PlayerRemoving:Connect(function(player)
    local level = player.leaderstats:WaitForChild("Level")
    local money = player.leaderstats:WaitForChild("Money")

    local data = {
        Level = level.Value,
        Money = money.Value
    }

    local success, errorMessage = pcall(function()
	    deliveryStore:SetAsync(player.UserId, data)
    end)

    if not success then
        print(errorMessage)
    end
end)

game:BindToClose(function()
	if RunService:IsStudio() then
		wait(2)
	end
end)