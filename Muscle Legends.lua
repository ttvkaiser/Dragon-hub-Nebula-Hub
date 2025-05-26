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

-- Example Content --
mainTab:AddLabel("Local Player Configuration")

features:AddTextBox("free click", function(text) -- u can add any text to "text"
	game:GetService("ReplicatedStorage").Events.FreeGifts.Gift2:FireServer(text,"Clicks",false,false,"Normal")
end)

local switch = features:AddSwitch("Set Walkspeed", function(bool)
	 -- toggle_god_mode(bool)
end)
switch:Set(true)

local switch = features:AddSwitch("Infinite Jumps", function(bool)
	 -- toggle_god_mode(bool)
end)
switch:Set(true)

local switch = features:AddSwitch("No Clip", function(bool)
	 -- toggle_god_mode(bool)
end)
switch:Set(true)

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
