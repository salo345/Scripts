local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/salo345/Solo-Library-ui-refs-heads-main/refs/heads/main/solo-V5-remake/main.luau"))()

Library:SetUIScale(1.0)

local Window = Library:MakeWindow({
  Title = "Solo Hub : Bloxfruit",
  SubTitle = "by solo3333",
  ScriptFolder = "redz-library-V5"
})

local Minimizer = Window:NewMinimizer({
  KeyCode = Enum.KeyCode.LeftControl
})

local MobileButton = Minimizer:CreateMobileMinimizer({
  Image = "rbxassetid://15298567397",
  BackgroundColor3 = Color3.fromRGB(0, 0, 0)
})

--discord--

local Discord = Window:MakeTab({"Discord", "Info"})

Discord:AddDiscordInvite({
	Title = "solo Hub | Community",
	Description = "A community for redz Hub Users -- official scripts, updates, and suport in one place.",
	Banner = "rbxassetid://17382040552", -- You can put an RGB Color: Color3.fromRGB(233, 37, 69)
	Logo = "rbxassetid://17382040552",
	Invite = "https://discord.gg/redz-hub",
	Members = 470000, -- Optional
	Online = 20000, -- Optional
})

--end discord

local QuestsTabs = Window:MakeTab({"Quests/Items", "Swords"})
local FruitAndRaid = Window:MakeTab({"Fruit/Raid", "Cherry"})
local MainFarm = Window:MakeTab({"Farm", "Home"})
local Teleport = Window:MakeTab({"Teleport", "Locate"})
local Visual = Window:MakeTab({"Visual", "User"})
local Shop = Window:MakeTab({"Shop", "ShoppingCart"})
local Misc = Window:MakeTab({"Misc", "Settings"})

 
