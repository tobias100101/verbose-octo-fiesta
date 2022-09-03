local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Lyfyts pro", "Ocean")

getgenv().autoCoins = true
getgenv().autoCommon = true
getgenv().autoUncommon = true
getgenv().autoRare = true
getgenv().autoEpic = true
getgenv().autoLegendary = true
getgenv().autoPro = true
getgenv().autoDamage = true
getgenv().autoSpeed = true
getgenv().autoRange = true
getgenv().autoDrop = true
getgenv().petEq1 = true
getgenv().petEq2 = true
getgenv().petEq3 = true
getgenv().petEq4 = true
getgenv().petEq5 = true
getgenv().petEq6 = true
getgenv().autoFuse = true



--funktioner
function aCoins()
    spawn(function()
         while autoCoins do task.wait()
            for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v:IsA"Model" and v.Parent.Name == "Drops" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Base.CFrame
                end
            end
        end
    end)
 end
 function aCommon()
    spawn(function()
        while getgenv().autoCommon == true do
            local args = {[1] = 1}
            game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aUncommon()
    spawn(function()
        while getgenv().autoUncommon == true do
                local args = {[1] = 2}
                game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aRare()
    spawn(function()
        while getgenv().autoRare == true do
                local args = {[1] = 3}
                game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aEpic()
    spawn(function()
        while getgenv().autoEpic == true do
                local args = {[1] = 4}
                game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aLegendary()
    spawn(function()
        while getgenv().autoLegendary == true do
                local args = {[1] = 5}
                game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aPro()
    spawn(function()
        while getgenv().autoRare == true do
                local args = {[1] = 6}
                game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aDamage()
    spawn(function()
        while getgenv().autoDamage == true do
            local args = {[1] = "Damage"}
            game:GetService("ReplicatedStorage").Remotes.BuyStatIncrease:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aSpeed()
    spawn(function()
        while getgenv().autoSpeed == true do
            local args = {[1] = "Speed"}
            game:GetService("ReplicatedStorage").Remotes.BuyStatIncrease:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aRange()
    spawn(function()
        while getgenv().autoRange == true do
            local args = {[1] = "DropCollectionRange"}
            game:GetService("ReplicatedStorage").Remotes.BuyStatIncrease:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aDrop()
    spawn(function()
        while getgenv().autoDrop == true do
            local args = {[1] = "DropRate"}
            game:GetService("ReplicatedStorage").Remotes.BuyStatIncrease:FireServer(unpack(args))
            wait()
        end
    end)
 end
 
 function aEq1()
    spawn(function()
        while getgenv().petEq1 == true do
            local args = {[1] = 1}
            game:GetService("ReplicatedStorage").Remotes.BuyPetEquipSlot:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aEq2()
    spawn(function()
        while getgenv().petEq2 == true do
            local args = {[1] = 2}
            game:GetService("ReplicatedStorage").Remotes.BuyPetEquipSlot:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aEq3()
    spawn(function()
        while getgenv().petEq3 == true do
            local args = {[1] = 3}
            game:GetService("ReplicatedStorage").Remotes.BuyPetEquipSlot:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aEq4()
    spawn(function()
        while getgenv().petEq4 == true do
            local args = {[1] = 4}
            game:GetService("ReplicatedStorage").Remotes.BuyPetEquipSlot:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aEq5()
    spawn(function()
        while getgenv().petEq5 == true do
            local args = {[1] = 5}
            game:GetService("ReplicatedStorage").Remotes.BuyPetEquipSlot:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function aEq6()
    spawn(function()
        while getgenv().petEq6 == true do
            local args = {[1] = 6}
            game:GetService("ReplicatedStorage").Remotes.BuyPetEquipSlot:FireServer(unpack(args))
            wait()
        end
    end)
 end
 function autoFuse()
     spawn(function()
         while getgenv().autoFuse == true do
             local args = {
                 [1] = {
                     [1] = true,
                     [2] = true,
                     [3] = true,
                     [4] = true,
                     [5] = true,
                     [6] = true,
                     [7] = true,
                     [8] = false
                 }
             }
             game:GetService("ReplicatedStorage").Remotes.AutoFuse:FireServer(unpack(args))
             wait()
         end
     end)
  end






--start






--AutoHatch

local AutoHatch = Window:NewTab("Auto Hatch")

local Egg = AutoHatch:NewSection("Æg")


Egg:NewToggle("Common Egg", "auto køb", function(bool)
    getgenv().autoCommon = bool
    print('Auto egg is: ', bool);
    if bool then
    aCommon()
end
end)

Egg:NewToggle("UnCommon Egg", "auto køb", function(bool)
    getgenv().autoUncommon = bool
    print('Auto egg is: ', bool);
    if bool then
    aUncommon()
end
end)

Egg:NewToggle("Rare Egg", "auto køb", function(bool)
    getgenv().autoRare = bool
    print('Auto egg is: ', bool);
    if bool then
    aRare()
end
end)

Egg:NewToggle("Epic Egg", "auto køb", function(bool)
    getgenv().autoEpic = bool
    print('Auto egg is: ', bool);
    if bool then
    aEpic()
end
end)

Egg:NewToggle("Legendary Egg", "auto køb", function(bool)
    getgenv().autoLegendary = bool
    print('Auto egg is: ', bool);
    if bool then
    aLegendary()
end
end)

Egg:NewToggle("Pro Egg", "auto køb", function(bool)
    getgenv().autoPro = bool
    print('Auto egg is: ', bool);
    if bool then
    aPro()
end
end)

local Fuse = AutoHatch:NewSection("Fuse")

Fuse:NewToggle("Auto Fuse", "auto Fuse", function(bool)
    getgenv().autoFuse = bool
    print('autofuse: ', bool);
    if bool then
    autoFuse()
end
end)


--Enkelt Æg Køb

local KobEnkeltegg = Window:NewTab("EnkeltÆg")

local Eggo = KobEnkeltegg:NewSection("Æg")

Eggo:NewButton("Common æg", "Køb et æg", function()
    local args = {[1] = 1}
    game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
end)

Eggo:NewButton("UnCommon æg", "Køb et æg", function()
    local args = {[1] = 2}
    game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
end)

Eggo:NewButton("Rare æg", "Køb et æg", function()
    local args = {[1] = 3}
    game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
end)

Eggo:NewButton("epic æg", "Køb et æg", function()
    local args = {[1] = 4}
    game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
end)

Eggo:NewButton("Legendary æg", "Køb et æg", function()
    local args = {[1] = 5}
    game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
end)

Eggo:NewButton("Pro æg", "Køb et æg", function()
    local args = {[1] = 6}
    game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
end)


--Andre scripts

local Misc = Window:NewTab("Andet")

local Andet = Misc:NewSection("Andet")

Andet:NewButton("Spoof", "Spoof", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KodaLINEN/spoof/main/main'))()
end)

Andet:NewButton("inf y", "inf y", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Andet:NewButton("andet 1", "Andet", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/NotAManager-cloud/for-peasents/main/Collect%20All%20Pets%20(Secret%20Hub)%20Raw%20WL%20Free%20For%20All'))()
end)

Andet:NewButton("andet 2", "Andet", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/NotAManager-cloud/for-peasents/main/Collect%20All%20Pets%20(Secret%20Hub)%20Raw%20WL%20Free%20For%20All'))()
end)

Andet:NewButton("andet 3", "Andet", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KodaLINEN/Collect-All-Pets/main/main'))()
end)


local Teleport = Window:NewTab("Teleport")

local Tp = Teleport:NewSection("Æg")

Tp:NewButton("egg 1", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-46.2225151, 8.07455921, -484.939392, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Tp:NewButton("egg 2", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.9807587, 17.190691, -228.473541, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Tp:NewButton("egg 3", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(76.2722855, 30.7728672, -236.058197, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Tp:NewButton("egg 4", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-69.4395447, 21.4671841, -191.519394, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Tp:NewButton("egg 5", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(251.12912, 8.41178989, -307.311218, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Tp:NewButton("egg 6", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(214.026428, 7.97948837, -481.357239, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Tp:NewButton("egg 7", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.974884, 36.7695007, -325.252899, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Tp:NewButton("egg 8", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207.55864, 31.8015175, -475.257996, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Tp:NewButton("egg 9", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.0060539, 4.1507864, -492.251678, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Tp:NewButton("egg 10", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(110.912849, 6.91059971, -51.9557762, 0.535309255, -0, -0.844656229, 0, 1, -0, 0.844656229, 0, 0.535309255)
end)

Tp:NewButton("egg 11", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(82.3300247, 4.68738794, -101.110176, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Tp:NewButton("egg 12", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-61.0322762, 5.23528528, -20.0109425, 0.999379814, -0, -0.0352139287, 0, 1, -0, 0.0352139287, 0, 0.999379814)
end)

Tp:NewButton("egg 13", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(283.004669, -1.20801365, -151.595001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Tp:NewButton("egg 14", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(204.793747, 6.25313377, 130.614792, 0.975430131, 0, 0.220309094, 0, 1, 0, -0.220309094, 0, 0.975430131)
end)

Tp:NewButton("egg 15", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(79.9539948, 59.8366127, -273.793762, 0.00463348627, -0, -0.999989212, 0, 1, -0, 0.999989212, 0, 0.00463348627)
end)

Tp:NewButton("egg 16", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(140.395706, 50.424202, 138.90773, 0.999783576, -0, -0.020802483, 0, 1, -0, 0.020802483, 0, 0.999783576)
end)

Tp:NewButton("egg 17", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(14.1126566, 65.4872208, -48.3473892, 0.999891043, -0, -0.0147606619, 0, 1, -0, 0.0147606619, 0, 0.999891043)
end)

Tp:NewButton("egg 18", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8.03232765, 52.0443077, 100.8964, 0.376437128, -0, -0.926442206, 0, 1, -0, 0.926442206, 0, 0.376437128)
end)

Tp:NewButton("egg 19", "tp æg", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(45.0726166, 24.9971657, -146.293259, 0.775471091, -0, -0.631383121, 0, 1, -0, 0.631383121, 0, 0.775471091)
end)

