local sololib = loadstring(game:HttpGet("https://raw.githubusercontent.com/salo345/Solo-Library-ui-refs-heads-main/refs/heads/main/Solohubui.lua"))()

if game.PlaceId == 2753915549 then
	Sea1 = true;
elseif game.PlaceId == 4442272183 then
	Sea2 = true;
elseif game.PlaceId == 7449423635 then
	Sea3 = true;
end;


local Window = redzlib:MakeWindow({
  Title = "Solo Hub : Blox Fruits",
  SubTitle = "by solo3333",
  SaveFolder = "solobreak | redz lib v5.lua"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://71014873973869", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})

local Discord = Window:MakeTab({"Discord", "Info"})

Discord:AddDiscordInvite({
   Name = "redz Hub | Community",
   Description = "Join our discord community to receive information about the next update",
   Logo = "rbxassetid://15298567397",
   Invite = "https://discord.gg/7aR7kNVt4g"
})

local MainFarm = Window:MakeTab({"Farm", "Home"})


if Sea3 then
   local AutoSea = Window:MakeTab({"Sea", "Waves"})
   AutoSea:AddSection({"Kitsune"})
   local KILabel = AutoSea:AddParagraph({"Kitsune Island : not spawn"})
   AutoSea:AddToggle({Name = "Auto Kitsune Island",Callback = function(Value)
     getgenv().AutoKitsuneIsland = Value;AutoKitsuneIsland()
   end})
   AutoSea:AddToggle({Name = "Auto Trade Azure Ember",Callback = function(Value)
     getgenv().TradeAzureEmber = Value
     task.spawn(function()
       local Modules = ReplicatedStorage:WaitForChild("Modules", 9e9)
       local Net = Modules:WaitForChild("Net", 9e9)
       local KitsuneRemote = Net:WaitForChild("RF/KitsuneStatuePray", 9e9)

local Paragraph = Tab1:AddParagraph({"Paragraph", "This is a Paragraph\nSecond Line"})

  local Dialog = Window:Dialog({
    Title = "Dialog",
    Text = "This is a Dialog",
    Options = {
      {"Confirm", function()
        
      end},
      {"Maybe", function()
        
      end},
      {"Cancel", function()
        
      end}
    }
  })
  
  Tab1:AddButton({"Print", function(Value)
print("Hello World!")
end})

local Toggle1 = Tab1:AddToggle({
  Name = "Toggle",
  Description = "This is a <font color='rgb(88, 101, 242)'>Toggle</font> Example",
  Default = false 
})
Toggle1:Callback(function(Value)
 
end)

Tab1:AddToggle({
    Name = "Toggle",
    Default = false,
    Callback = function(v)

    end
})

Tab1:AddSlider({
  Name = "Speed",
  Min = 1,
  Max = 100,
  Increase = 1,
  Default = 16,
  Callback = function(Value)
  
  end
})

local Dropdown = Tab1:AddDropdown({
  Name = "Players List",
  Description = "Select the <font color='rgb(88, 101, 242)'>Number</font>",
  Options = {"one", "two", "three"},
  Default = "two",
  Flag = "dropdown teste",
  Callback = function(Value)
    
  end
})

Tab1:AddTextBox({
  Name = "Name item",
  Description = "1 Item on 1 Server", 
  PlaceholderText = "item only",
  Callback = function(Value)
    
  end
})
