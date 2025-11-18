local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Library/refs/heads/main/redz-V5-remake/main.luau"))()

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


