local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library/main/Library", true))()

local window = library:AddWindow("Dragon Hub | Game: Muscle Legends | Version [v.1.2.0] | by FLX_Liam & ttvkaiser", {
    main_color = Color3.fromRGB(50, 85, 135),
    min_size = Vector2.new(720, 560),
    can_resize = true
})

-- Tabs --
local mainTab = window:AddTab("Main Tab")
local infoTab = window:AddTab("Info")
local glitchingTab = window:AddTab("Glitching")
local killingTab = window:AddTab("Killing")
local autoFarmTab = window:AddTab("Auto Farm")
local farmPlusTab = window:AddTab("Farm++")
local paidTab = window:AddTab("Paid Tab")
local creditsTab = window:AddTab("Credits")
local miscTab = window:AddTab("Misc")
local rocksTab = window:AddTab("Rocks")
local calcTab = window:AddTab("Calc")

-- Labels --
mainTab:AddLabel("Local Player Configuration")
farmPlusTab:AddLabel("Auto lift soon")
calcTab:AddLabel("Stats per hour like rebs and strength")
creditsTab:AddLabel([[
Credits to Liam, Evx, and Ryuxc for creating the script.
Discord server:
Dragon Hub - https://discord.gg/WPYK5C2w
Nebula Hub - https://discord.gg/A4MP4UYC4w
]])
rocksTab:AddLabel("Auto punch any rocks from anywhere")
paidTab:AddLabel("Paid features: buy the paid version, DM liamofdarkness on Discord to purchase.")

-- local player config
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local speedValue = 16
local speedEnabled = false

-- this also helps, btw i have these comments for you liam
mainTab:AddTextBox("WalkSpeed Amount", function(text)
	local num = tonumber(text)
	if num then
		speedValue = num
		if speedEnabled and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
			LocalPlayer.Character.Humanoid.WalkSpeed = speedValue
		end
	end
end)

-- the walkspeed switch??
local wsSwitch = mainTab:AddSwitch("Enable WalkSpeed", function(enabled)
	speedEnabled = enabled
	local char = LocalPlayer.Character
	if char and char:FindFirstChild("Humanoid") then
		char.Humanoid.WalkSpeed = enabled and speedValue or 16
	end
end)
wsSwitch:Set(false)

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local infiniteJump = false

local jumpSwitch = mainTab:AddSwitch("Infinite Jumps", function(bool)
	infiniteJump = bool
end)
jumpSwitch:Set(false)

UserInputService.JumpRequest:Connect(function()
	if infiniteJump and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
		LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)

local noclipSwitch = mainTab:AddSwitch("No Clip", function(bool)
	print("No Clip toggled:", bool)
end)
noclipSwitch:Set(false)

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local noclip = false

local noclipSwitch = mainTab:AddSwitch("No Clip", function(bool)
	noclip = bool
end)
noclipSwitch:Set(false)

RunService.Stepped:Connect(function()
	if noclip and LocalPlayer.Character then
		for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
			if part:IsA("BasePart") then
				part.CanCollide = false
			end
		end
	end
end)
