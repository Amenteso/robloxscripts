local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({ IntroText = "Amentes", Name = "Anime Tower Tycoon | Made By Amentes#1762", HidePremium = true, SaveConfig = false,IntroEnabled = true, ConfigFolder = "Amentes" })


function autofarm()
    getgenv().Collect = _G.autofarm

    spawn(function()
       local plr = game:service'Players'.LocalPlayer
       while wait() do
           if not getgenv().Collect then break end
           for i,v in pairs(game:service'Workspace'.Drops:GetDescendants()) do
               if v.Name == 'Dropper_Drop' and v:IsA('Part') then
                   plr.Character.HumanoidRootPart.CFrame = v.CFrame
               end
           end
       end
    end)

end

function autodeposit()
    while _G.autodeposit do
        wait(0)
     game:GetService("ReplicatedStorage").remotes.dropDeposit:FireServer()
    end
end

function automerge()
    while _G.automerge do
        wait(0)
       game:GetService("ReplicatedStorage").remotes.dropMerge:FireServer()
    end
end

function autobuy()
     while _G.autobuy do
        wait()
        game:GetService("ReplicatedStorage").remotes.dropBuy:FireServer(_G.autobuynumber)
     end
end

function rebirth()
    while _G.rebirth do
        wait()
        game:GetService("ReplicatedStorage").remotes.rebirthConfirm:FireServer()
    end
end

local AutoFarmTab = Window:MakeTab({
    Name = "Auto Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


AutoFarmTab:AddToggle({
    Name = "Auto Collect Orbs",
    Default = false,
    Callback = function(Value)
        _G.autofarm = Value
        autofarm()
    end
})

AutoFarmTab:AddToggle({
    Name = "Auto Deposit Orbs",
    Default = false,
    Callback = function(Value)
        _G.autodeposit = Value
        autodeposit()
    end
})

AutoFarmTab:AddToggle({
    Name = "Auto Merge",
    Default = false,
    Callback = function(Value)
        _G.automerge = Value
        automerge()
    end
})

AutoFarmTab:AddDropdown({
	Name = "Type",
	Default = "1",
	Options = {1,5,25,50,100},
	Callback = function(Value)
		_G.autobuynumber = Value
	end    
})

AutoFarmTab:AddToggle({
    Name = "Auto Buy",
    Default = false,
    Callback = function(Value)
        _G.autobuy = Value
        autobuy()
    end
})

AutoFarmTab:AddToggle({
    Name = "Auto Rebirth",
    Default = false,
    Callback = function(Value)
        _G.rebirth = Value
        rebirth()
    end
})



OrionLib:Init()