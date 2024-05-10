local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ESPon = Instance.new("TextButton")
local ESPOff = Instance.new("TextButton")
local HIDE = Instance.new("TextButton")
local OPEN = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.Position = UDim2.new(0.166156977, 0, 0, 0)
Frame.Size = UDim2.new(0, 163, 0, 227)

ESPon.Name = "ESPon"
ESPon.Parent = ScreenGui
ESPon.BackgroundColor3 = Color3.new(0, 1, 0)
ESPon.Position = UDim2.new(0.166156977, 0, -4.41335142e-05, 0)
ESPon.Size = UDim2.new(0, 163, 0, 50)
ESPon.Font = Enum.Font.SourceSans
ESPon.Text = "ESP ON (press E)"
ESPon.TextColor3 = Color3.new(0, 0, 0)
ESPon.TextScaled = true
ESPon.TextSize = 14
ESPon.TextWrapped = true

ESPOff.Name = "ESPOff"
ESPOff.Parent = ScreenGui
ESPOff.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
ESPOff.Position = UDim2.new(0.166156977, 0, 0.105935514, 0)
ESPOff.Size = UDim2.new(0, 163, 0, 50)
ESPOff.Font = Enum.Font.SourceSans
ESPOff.Text = "ESP OFF (press F)"
ESPOff.TextColor3 = Color3.new(0, 0, 0)
ESPOff.TextScaled = true
ESPOff.TextSize = 14
ESPOff.TextWrapped = true

HIDE.Name = "HIDE"
HIDE.Parent = ScreenGui
HIDE.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
HIDE.Position = UDim2.new(0.166156977, 0, 0.211999387, 0)
HIDE.Size = UDim2.new(0, 163, 0, 56)
HIDE.Font = Enum.Font.SourceSans
HIDE.Text = "HIDE"
HIDE.TextColor3 = Color3.new(0, 0, 0)
HIDE.TextScaled = true
HIDE.TextSize = 14
HIDE.TextWrapped = true

OPEN.Name = "OPEN"
OPEN.Parent = ScreenGui
OPEN.Active = false
OPEN.BackgroundColor3 = Color3.new(0.0117647, 1, 0.0117647)
OPEN.Position = UDim2.new(0, 0, 0.0418502204, 0)
OPEN.Size = UDim2.new(0, 116, 0, 19)
OPEN.Visible = false
OPEN.Font = Enum.Font.SourceSans
OPEN.Text = "OPEN"
OPEN.TextColor3 = Color3.new(0, 0, 0)
OPEN.TextScaled = true
OPEN.TextSize = 14
OPEN.TextWrapped = true

local function XVGFY_fake_script()
	local script = Instance.new('LocalScript', ScreenGui)

	function murderer()
		for i, v in pairs(game.Players:GetPlayers()) do
			if v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") then
				return v
			end
		end
	end

	function sherrif()
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

	script.Parent.HIDE.MouseButton1Down:Connect(function()
		for i, v in pairs(script.Parent:GetChildren()) do
			if v.Name ~= "OPEN" then
				v.Visible = false
				v.Active = false
			else
				v.Active = true
				v.Visible = true
			end
		end
	end)

	script.Parent.OPEN.MouseButton1Down:Connect(function()
		for i, v in pairs(script.Parent:GetChildren()) do
			if v.Name ~= "OPEN" then
				v.Visible = true
				v.Active = true
			else
				v.Active = false
				v.Visible = false
			end
		end
	end)
end
coroutine.wrap(XVGFY_fake_script)()

-- discord.gg/924ycm7jr6
-- by slayer946
