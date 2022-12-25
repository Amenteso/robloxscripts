local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Ragdoll Jump | Made By Amentes#0001", "DarkTheme")

local PlayerTab = Window:NewTab("Player")
local PlayerSection = PlayerTab:NewSection("Player")

local TeleportTab = Window:NewTab("Teleport")
local TeleportSection = TeleportTab:NewSection("Teleport")

local UpgradesTab = Window:NewTab("Upgrades")
local UpgradesSection = UpgradesTab:NewSection("Upgrades")

local PotionTab = Window:NewTab("Potion")
local PotionSection = PotionTab:NewSection("Potion")

local FarmTab = Window:NewTab("Farm")
local FarmSection = FarmTab:NewSection("Farm")

local tp_table = {
    tp0 = Vector3.new(-441.460205, 195.073425, -379.825745),
    tp1 = Vector3.new(-441.460205, 158.073425, -379.825745),
    tp2 = Vector3.new(-441.460205, 11161.073425, -379.825745),
    tp3 = Vector3.new(1365.82886, 195.101196, -903.250916),
    tp4 = Vector3.new(1365.82886, 158.101196, -903.250916),
    tp5 = Vector3.new(1365.82886, 100062.101196, -903.250916),
    tp6 = Vector3.new(3236.95679, 195.912582, -1459.03821),
    tp7 = Vector3.new(3236.95679, 158.912582, -1459.03821),
    tp8 = Vector3.new(3236.95679, 160002.912582, -1459.03821),
}

local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(1, Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function tween_tp(v)
    if lp.Character and
        lp.Character:FindFirstChild('HumanoidRootPart') then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, { CFrame = cf })
        a:Play()
        a.Completed:Wait()
    end
end

FarmSection:NewToggle("Auto Farm Earth", "World 1 Auto Farm", function(state)
    if state then
        getgenv().World1farm = true
        print("World 1 Farm on")
        while World1farm do
            wait(0)
        tween_tp(tp_table.tp1)
        tween_tp(tp_table.tp0)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        tween_tp(tp_table.tp2)
        wait(5)
    end
    else
        getgenv().World1farm = false
        print("World 1 Farm off")
    end
end)

FarmSection:NewToggle("Auto Farm Space", "World 2 Auto Farm", function(state)
    if state then
        getgenv().World2farm = true
        print("World 2 Farm on")
        while World2farm do
            wait(0)
        tween_tp(tp_table.tp4)
        tween_tp(tp_table.tp3)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        tween_tp(tp_table.tp5)
        wait(5)
    end
    else
        getgenv().World2farm = false
        print("World 2 Farm off")
    end
end)

FarmSection:NewToggle("Auto Farm Hell", "World 3 Auto Farm", function(state)
    if state then
        getgenv().World3farm = true
        print("World 3 Farm on")
        while World3farm do
            wait(0)
        tween_tp(tp_table.tp7)
        tween_tp(tp_table.tp6)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        tween_tp(tp_table.tp8)
        wait(5)
    end
    else
        getgenv().World3farm = false
        print("World 3 Farm off")
    end
end)

PlayerSection:NewTextBox("Name Changer", "Name Changer", function(Value)
	while game:IsLoaded() == false do wait() end
local fakeplr = {["Name"] = (Value), ["UserId"] = "145056420"}
local lplr = game:GetService("Players").LocalPlayer

local function plrthing(obj, property)
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v ~= lplr then
        else
            obj[property] = obj[property]:gsub(v.Name, fakeplr["Name"])
            obj[property] = obj[property]:gsub(v.DisplayName, fakeplr["Name"])
            obj[property] = obj[property]:gsub(v.UserId, fakeplr["UserId"])
        end
    end
end

local function newobj(v)
    if v:IsA("TextLabel") or v:IsA("TextButton") then
        plrthing(v, "Text")
        v:GetPropertyChangedSignal("Text"):connect(function()
            plrthing(v, "Text")
        end)
    end
    if v:IsA("ImageLabel") then
        plrthing(v, "Image")
        v:GetPropertyChangedSignal("Image"):connect(function()
            plrthing(v, "Image")
        end)
    end
end

for i,v in pairs(game:GetDescendants()) do
    newobj(v)
end
game.DescendantAdded:connect(newobj)
end)

PlayerSection:NewButton("Anti Esp", "anti highlight", function()
    local Player = game:GetService("Players").LocalPlayer
    game:GetService("Workspace")[Player.Name].Highlight:Destroy()
end)

PlayerSection:NewButton("Speed", "Always Give Speed", function()
    game:GetService("Workspace").Hizlandirici.Size = Vector3.new(1000, 10, 1000)
    game:GetService("Workspace").HizlandiriciSpace.Size = Vector3.new(1000, 10, 1000)
    game:GetService("Workspace").HizlandiriciHell.Size = Vector3.new(1000, 10, 1000)
end)

TeleportSection:NewButton("Teleport Earth", "Teleport Earth", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-427.087799, 161.02034, -256.230408)
end)

TeleportSection:NewButton("Teleport Space", "Teleport Space", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1395.66565, 161.020355, -792.889343)
end)

TeleportSection:NewButton("Teleport Hell", "Teleport Hell", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3274.24512, 161.020355, -1337.35522)
end)

UpgradesSection:NewToggle("Auto Buy Jump", "Auto Buy Jump", function(state)
    if state then
        getgenv().buyjump = true
        print("Auto Buy Jump on")
        while buyjump do
            wait(0)
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Jump")
    end
    else
        getgenv().buyjump = false
        print("Auto Buy Jump off")
    end
end)

UpgradesSection:NewToggle("Auto Buy Studs", "Auto Buy Studs", function(state)
    if state then
        getgenv().buystuds = true
        print("Auto Buy Studs on")
        while buystuds do
            wait(0)
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Studs")
    end
    else
        getgenv().buystuds = false
        print("Auto Buy Studs off")
    end
end)

UpgradesSection:NewToggle("Auto Buy Gem", "Auto Buy Gem", function(state)
    if state then
        getgenv().buygem = true
        print("Auto Buy Gem on")
        while buygem do
            wait(0)
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Gem")
    end
    else
        getgenv().buygem = false
        print("Auto Buy Gem off")
    end
end)

UpgradesSection:NewToggle("Auto Buy Speed", "Auto Buy Speed", function(state)
    if state then
        getgenv().buyspeed = true
        print("Auto Buy Speed on")
        while buyspeed do
            wait(0)
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Speed")
    end
    else
        getgenv().buyspeed = false
        print("Auto Buy Speed off")
    end
end)

UpgradesSection:NewToggle("Auto Buy Equip", "Auto Buy Equip", function(state)
    if state then
        getgenv().buyequip = true
        print("Auto Buy Equip on")
        while buyequip do
            wait(0)
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Equip")
    end
    else
        getgenv().buyequip = false
        print("Auto Buy Equip off")
    end
end)

UpgradesSection:NewToggle("Auto Buy Luck", "Auto Buy Luck", function(state)
    if state then
        getgenv().buyluck = true
        print("Auto Buy Luck on")
        while buyluck do
            wait(0)
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Luck")
    end
    else
        getgenv().buyluck = false
        print("Auto Buy Luck off")
    end
end)

UpgradesSection:NewToggle("Auto Buy Storage", "Auto Buy Storage", function(state)
    if state then
        getgenv().buystorage = true
        print("Auto Buy Storage on")
        while buystorage do
            wait(0)
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Storage")
    end
    else
        getgenv().buystorage = false
        print("Auto Buy Storage off")
    end
end)

PotionSection:NewToggle("Auto Buy Triple Gems", "Auto Buy Double Jump", function(state)
    if state then
        getgenv().buytgems = true
        print("Auto Buy Triple Gems on")
        while buytgems do
            wait(0)
        game:GetService("ReplicatedStorage").Events.GemUse:FireServer()
    end
    else
        getgenv().buytgems = false
        print("Auto Buy Triple Gems off")
    end
end)

PotionSection:NewToggle("Auto Buy Double Jump", "Auto Buy Double Jump", function(state)
    if state then
        getgenv().buydjump = true
        print("Auto Buy Double Jump on")
        while buydjump do
            wait(0)
        game:GetService("ReplicatedStorage").Events.JumpUse:FireServer()
    end
    else
        getgenv().buydjump = false
        print("Auto Buy Double Jump off")
    end
end)

PotionSection:NewToggle("Auto Buy Double Studs", "Auto Buy Double Studs", function(state)
    if state then
        getgenv().buydstuds = true
        print("Auto Buy Double Studs on")
        while buydstuds do
            wait(0)
        game:GetService("ReplicatedStorage").Events.StudsUse:FireServer()
    end
    else
        getgenv().buydstuds = false
        print("Auto Buy Double Studs off")
    end
end)

PotionSection:NewToggle("Auto Buy Luck", "Auto Buy Luck", function(state)
    if state then
        getgenv().buyluck = true
        print("Auto Buy Luck on")
        while buyluck do
            wait(0)
        game:GetService("ReplicatedStorage").Events.LuckUse:FireServer()
    end
    else
        getgenv().buyluck = false
        print("Auto Buy Luck off")
    end
end)

PotionSection:NewToggle("Auto Buy Ultra Luck", "Auto Buy Ultra Luck", function(state)
    if state then
        getgenv().buyuluck = true
        print("Auto Buy Ultra Luck on")
        while buyuluck do
            wait(0)
        game:GetService("ReplicatedStorage").Events.UltraLuckUse:FireServer()
    end
    else
        getgenv().buyuluck = false
        print("Auto Buy Ultra Luck off")
    end
end)

local a = game:GetService("ReplicatedStorage").Modules.CodeModule.EnterCode

PotionSection:NewButton("Redeem All Codes", "Redeem All Codes", function()
    a:InvokeServer("RELEASE")
    wait(1)
    a:InvokeServer("ORYON")
    wait(1)
    a:InvokeServer("BENRISK")
    wait(1)
    a:InvokeServer("DNZY")
    wait(1)
    a:InvokeServer("TPC")
    wait(1)
    a:InvokeServer("KABASAKAL")
    wait(1)
    a:InvokeServer("ALIKEREM")
end)