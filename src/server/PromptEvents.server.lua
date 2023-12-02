local ProximityPromptService = game:GetService("ProximityPromptService")

ProximityPromptService.PromptTriggered:Connect(function(prompt, playerWhoTriggered)
    local ancestorPart = prompt:FindFirstAncestorWhichIsA("Part")
    ancestorPart:Destroy()

    local ancestorTool = game.ServerStorage.Parts:FindFirstChild(ancestorPart.Name)
    local newTool = ancestorTool:Clone()
    newTool.Parent = playerWhoTriggered.Backpack
end)