local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()


local Window = Library.CreateLib("SPGT", "RJTheme1")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Player")

Section:NewSlider("Speed", "SliderInfo", 1000, 16, function(s)
    game:GetService("Workspace").PotKirillyt.Character.Humanoid.Speed = s
end)

Section:NewSlider("Jump", "SliderInfo", 1000, 50, function(j)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
end)

Section:NewButton("Reset Player Setting", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

local Tab = Window:NewTab("World")

local Section = Tab:NewSection("Global")

Section:NewSlider("Gravity", "SliderInfo", 500, 20, function(G)
    game:GetService("Workspace").Gravity = G
end)

Section:NewButton("Reset gravity", "ButtonInfo", function()
    game:GetService("Workspace").Gravity = 196.2
end)

local Section = Tab:NewSection("Esp")

Section:NewButton("Box Esp", "ButtonInfo", function()
    while wait(0.5) do
    for i, esk in ipairs(workspace:GetDescendants()) do
        if esk:FindFirstChild("Humanoid") then
            if not esk:FindFirstChild("EspBox") then
                if esk ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment",esk)
                    esp.Adornee = esk
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 5, 4)
                    esp.Transparency = 0.65
                    esp.Color3 = Color3.fromRGB(173,255,47)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
end)


local Tab = Window:NewTab("Global")

local Section = Tab:NewSection("GUI")

Section:NewSlider("Fov", "SliderInfo", 120, -120, function(F)
    game:GetService("Workspace").Camera.FieldOfView = F
end)


local Section = Tab:NewSection("Ather")

Section:NewButton("Off shadows", "ButtonInfo", function()
game.Lightting.GlobalShadows = false
end)

local Tab = Window:NewTab("WorkSpace menu")

local Section = Tab:NewSection("Functions")

Section:NewButton("Tp to wall", "ButtonInfo", function()
    game:GetService("Workspace").PotKirillyt.HumanoidRootPart.CFrame = CFrame.new (41.9370155, 757.919556, 489.199036, 0.17623277, 2.7155588e-08, 0.984348536, -1.21955395e-07, 1, -5.75309622e-09, -0.984348536, -1.19032727e-07, 0.176232777)
end)


Section:NewButton("Delete walls", "ButtonInfo", function()
game:GetService("Workspace").WareHouseMap.Interior:destroy()
end)

Section:NewButton("TP to box", "ButtonInfo", function()
game:GetService("Workspace").PotKirillyt.HumanoidRootPart.CFrame = CFrame.new (12.167346, 759.167847, 360.327179, 0.770628333, -9.28365562e-09, 0.637284815, -2.50543875e-09, 1, 1.75971824e-08, -0.637284815, -1.51575659e-08, 0.770628333)
end)



local Tab = Window:NewTab("About")

local Section = Tab:NewSection("Roblox Hack by Madloss For Realistic gun test")
