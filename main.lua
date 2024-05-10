local function murderer()
    for i, v in pairs(game.Players:GetPlayers()) do
        if v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") then
            return v
        end
    end
end

local function sherrif()
    for i, v in pairs(game.Players:GetPlayers()) do
        if v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") then
            return v
        end
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.E then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") then
                local esp = Instance.new("BoxHandleAdornment")
                esp.Parent = v.Character.Head
                esp.Size = Vector3.new(1,1,1)
                esp.Color3 = Color3.new(255, 0, 0)
                esp.AlwaysOnTop = true
                esp.Adornee = v.Character.Head
                esp.Visible = true
                esp.ZIndex = 2
            elseif v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") then
                local esp = Instance.new("BoxHandleAdornment")
                esp.Parent = v.Character.Head
                esp.Size = Vector3.new(1,1,1)
                esp.Color3 = Color3.new(0, 0, 255)
                esp.AlwaysOnTop = true
                esp.Adornee = v.Character.Head
                esp.Visible = true
                esp.ZIndex = 2
            else
                local esp = Instance.new("BoxHandleAdornment")
                esp.Parent = v.Character.Head
                esp.Size = Vector3.new(1,1,1)
                esp.Color3 = Color3.new(0, 255, 0)
                esp.AlwaysOnTop = true
                esp.Adornee = v.Character.Head
                esp.Visible = true
                esp.ZIndex = 2
            end
        end
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.F then
        for i, v in pairs(game.Players:GetPlayers()) do
            for i, a in pairs(v.Character.Head:GetChildren()) do
                if a:IsA("BoxHandleAdornment") then
                    a:Remove()
                end
            end
        end
    end
end)

-- discord.gg/924ycm7jr6
-- by slayer946
