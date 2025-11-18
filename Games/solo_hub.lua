local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/salo345/Solo-Library-ui-refs-heads-main/refs/heads/main/solo-V5-remake/menu.luau"))()


local AFKOptions = {}

local Window = redzlib:MakeWindow({
  Title = "solo Hub : Blox Fruits",
  SubTitle = "by solo3333",
  SaveFolder = "solbreack | redz lib v5.lua"
})

Window:AddMinimizeButton({
  Button = { Image = "rbxassetid://15298567397", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0.01, 0.01) },
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

--teleport--
Teleport:AddDropdown({
   Name = "Select Island",
   Options = IslandsList,
   Default = "",
   Callback = function(Value)
     getgenv().TeleportIslandSelect = Value
   end
})
local TPToggle = Teleport:AddToggle({Name = "Teleport To Island",Callback =
function(Value)
   getgenv().TeleportToIsland = Value
   task.spawn(function()
     while getgenv().TeleportToIsland do task.wait()
       local Island = getgenv().TeleportIslandSelect
       if Sea1 then
         -- Sea 1 Teleports
         if Island == "Middle Town" then
           PlayerTP(CFrame.new(-688, 15, 1585))
         elseif Island == "MarineFord" then
           PlayerTP(CFrame.new(-4810, 21, 4359))
         elseif Island == "Marine" then
           PlayerTP(CFrame.new(-2728, 25, 2056))
         elseif Island == "WindMill" then
           PlayerTP(CFrame.new(889, 17, 1434))
         elseif Island == "Desert" then
           PlayerTP(CFrame.new())
         elseif Island == "Snow Island" then
           PlayerTP(CFrame.new(1298, 87, -1344))
         elseif Island == "Pirate Village" then
           PlayerTP(CFrame.new(-1173, 45, 3837))
         elseif Island == "Jungle" then
           PlayerTP(CFrame.new(-1614, 37, 146))
         elseif Island == "Prison" then
           PlayerTP(CFrame.new(4870, 6, 736))
         elseif Island == "Under Water Island" then
           PlayerTP(CFrame.new(61164, 5, 1820))
         elseif Island == "Colosseum" then
           PlayerTP(CFrame.new(-1535, 7, -3014))
         elseif Island == "Magma Village" then
           PlayerTP(CFrame.new(-5290, 9, 8349))
         elseif Island == "Sky Island 1" then
           PlayerTP(CFrame.new(-4814, 718, -2551))
         elseif Island == "Sky Island 2" then
           PlayerTP(CFrame.new(-4652, 873, -1754))
         elseif Island == "Sky Island 3" then
           PlayerTP(CFrame.new(-7895, 5547, -380))
  elseif Island == "Fountain City" then
    PlayerTP(CFrame.new())
  end
elseif Sea2 then
  -- Sea 2 Teleports
  if Island == "The Cafe" then
    PlayerTP(CFrame.new(-382, 73, 290))
  elseif Island == "Frist Spot" then
    PlayerTP(CFrame.new(-11, 29, 2771))
  elseif Island == "Dark Area" then
    PlayerTP(CFrame.new(3494, 13, -3259))
  elseif Island == "Flamingo Mansion" then
    PlayerTP(CFrame.new(-317, 331, 597))
  elseif Island == "Flamingo Room" then
    PlayerTP(CFrame.new(2285, 15, 905))
  elseif Island == "Green Zone" then
    PlayerTP(CFrame.new(-2258, 73, -2696))
  elseif Island == "Zombie Island" then
    PlayerTP(CFrame.new(-5552, 194, -776))
  elseif Island == "Two Snow Mountain" then
    PlayerTP(CFrame.new(752, 408, -5277))
  elseif Island == "Punk Hazard" then
    PlayerTP(CFrame.new(-5897, 18, -5096))
  elseif Island == "Cursed Ship" then
    PlayerTP(CFrame.new(919, 125, 32869))
  elseif Island == "Ice Castle" then
    PlayerTP(CFrame.new(5505, 40, -6178))
  elseif Island == "Forgotten Island" then
    PlayerTP(CFrame.new(-3050, 240, -10178))
  elseif Island == "Ussop Island" then
    PlayerTP(CFrame.new(4816, 8, 2863))
  end
elseif Sea3 then
  -- Sea 3 Teleports
  if Island == "Mansion" then
    PlayerTP(CFrame.new(-12471, 374, -7551))
  elseif Island == "Port Town" then
    PlayerTP(CFrame.new(-334, 7, 5300))
  elseif Island == "Castle On The Sea" then
    PlayerTP(CFrame.new(-5073, 315, -3153))
  elseif Island == "Hydra Island" then
    PlayerTP(CFrame.new(5756, 610, -282))
  elseif Island == "Great Tree" then
    PlayerTP(CFrame.new(2681, 1682, -7190))
  elseif Island == "Floating Turtle" then
    PlayerTP(CFrame.new(-12528, 332, -8658))
  elseif Island == "Haunted Castle" then
    PlayerTP(CFrame.new(-9517, 142, 5528))
  elseif Island == "Ice Cream Island" then
    PlayerTP(CFrame.new(-902, 79, -10988))
  elseif Island == "Peanut Island" then
    PlayerTP(CFrame.new(-2062, 50, -10232))
  elseif Island == "Cake Island" then
    PlayerTP(CFrame.new(-1897, 14, -11576))
  elseif Island == "Candy Cane Island" then
    PlayerTP(CFrame.new(-1038, 10, -14076))
  elseif Island == "Tiki Outpost" then
    PlayerTP(CFrame.new(-16224, 9, 439))
  end
       end
    end
  end)
end})

TPToggle:Callback(function(Value)
  if Value then
     local Mag = math.huge
     repeat task.wait()
       local plrPP = Player.Character and Player.Character.PrimaryPart
       if plrPP then
         Mag = (plrPP.Position - TeleportPos).Magnitude
       end
     until not getgenv().TeleportToIsland or Mag < 15
     TPToggle:Set(false)
  end
end)

if Sea3 then
  Teleport:AddSection({"Race V4"})

  Teleport:AddButton({"Teleport To Temple of Time", function()
    for i = 1, 5 do task.wait()
      Player.Character:SetPrimaryPartCFrame(CFrame.new(28286, 14897, 103))
    end
  end})
end




