local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/salo345/Solo-Library-ui-refs-heads-main/refs/heads/main/solo-V5-remake/menu.luau"))()


local AFKOptions = {}

local Window = redzlib:MakeWindow({
  Title = "solo Hub : Blox Fruits",
  SubTitle = "by solo3333",
  SaveFolder = "solbreack | redz lib v5.lua"
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
  Name = "solo Hub | Community",
  Description = "Join our discord community to receive information about the next update",
  Logo = "rbxassetid://15298567397",
  Invite = "https://discord.gg/7aR7kNVt4g"
})
--end discord

local QuestsTabs = Window:MakeTab({"Quests/Items", "Swords"})
local FruitAndRaid = Window:MakeTab({"Fruit/Raid", "Cherry"})
local MainFarm = Window:MakeTab({"Farm", "Home"})
local Teleport = Window:MakeTab({"Teleport", "Locate"})
local Visual = Window:MakeTab({"Visual", "User"})
local Shop = Window:MakeTab({"Shop", "ShoppingCart"})
local Misc = Window:MakeTab({"Misc", "Settings"})

 
