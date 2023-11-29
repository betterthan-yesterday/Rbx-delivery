game.Players.PlayerAdded:Connect(function(player)
	
    local leaderstats = Instance.new("Folder", player)
    leaderstats.Name = "leaderstats"

    local money = Instance.new("IntValue", leaderstats)
    money.Name = "Money"

end)