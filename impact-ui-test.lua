local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20UI%20Library/Source.lua'))()
local Window = Library:CreateWindow('Impact Hub', 'Prison Life', 'Visual UI Library', 'rbxassetid://10618928818', false, 'VisualUIConfigs', 'Default')

--1.) <String> Name of the UI.
--2.) <String> Name of the Game.
--3.) <String> Text that shows in the intro screen.
--4.) <String> URL of the icon that shows in the intro screen.
--5.) <Bool> if true, themes will be disabled, if false, themes will be enabled (this setting is to increase performance)
--6.) <String> the path that the config folder should be in your exploits workspace folder.
--7.) <String or Table> The name of a pre-made theme or a table with your custom theme (Find more in Themes.md).

local Tab = Window:CreateTab('Player', true, 'rbxassetid://3926305904', Vector2.new(484, 44), Vector2.new(36, 36))
local Section = Tab:CreateSection('Main')
local Slider = Section:CreateSlider('Speed', 1, 100, 16, Color3.fromRGB(0, 125, 255), function(Value)
    local plr = game.Players.LocalPlayer.Character.Humanoid
    plr.WalkSpeed = Value
end)

local Slider = Section:CreateSlider('Jumppower', 1, 100, 50, Color3.fromRGB(0, 125, 255), function(Value)
    local plr = game.Players.LocalPlayer.Character.Humanoid
    plr.JumpPower = Value
end)

--1.) <String> Name of the slider.
--2.) <Number> Minimum value of the slider.
--3.) <Number> Maximum value of the slider.
--4.) <Number> Default value of the slider.
--5.) <Color3> Color of the slider.
--6.) <Function> Function / Callback of the slider.
