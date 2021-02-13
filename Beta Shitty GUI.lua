if not game:IsLoaded() then
	local Loading = Instance.new("Message",workspace)
	Loading.Text = 'Waiting For The Game To Load....'
	game.Loaded:Wait()
	Loading:Destroy()
end
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)

local travelSpeed = 200
local Mouse = game.Players.LocalPlayer:GetMouse()

local Katana = "Katana"
local Nichirin Sword = "Nichirin Sword"
local Plr = game:GetService("Players").LocalPlayer
local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()
local hm = char:FindFirstChild("HumanoidRootPart")
local dist = (hm.Position).magnitude
local Noclipping = nil
Clip = false

local QuestTargets = {}
for i,v in pairs(game.Workspace.NPC.Targets:GetChildren()) do
    if v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("TargetFinder") then
       table.insert(QuestTargets, v.Name)
    end
end

local QuestNPCs = {}
for i,v in pairs(game.Workspace.NPC.Quests:GetChildren()) do
    if v:FindFirstChild("Talk") or v:FindFirstChild("Interaction") then
       table.insert(QuestNPCs, v.Name)
    end
end

local QuestItems = {}
for i,v in pairs(game.Workspace.NPC.Targets:GetChildren()) do
    if v:FindFirstChild("ClickDetector") then
       table.insert(QuestItems, v.Name)
    end
end

local TeacherNPCs = {}
for i,v in pairs(game.Workspace.NPC.Teacher:GetChildren()) do
    if v:FindFirstChild("Talk") or v:FindFirstChild("ClickDetector") then
       table.insert(TeacherNPCs, v.Name)
    end
end

local SpawnedNPCs = {}
for i,v in pairs(game.Workspace.NPC.Spawnables:GetChildren()) do
    if v:FindFirstChild("Despawn") or v:FindFirstChild("ClickDetector") then
       table.insert(SpawnedNPCs, v.Name)
    end
end

local Mobs = {}
for i,v in pairs(game.ReplicatedStorage.All.NPCs:GetChildren()) do
       table.insert(Mobs, v.Name)
    end

local AreasAndTowns = {}
for i,v in pairs(game.Workspace.AreaPlaces:GetChildren()) do
       table.insert(AreasAndTowns, v.Name)
    end

local Finity = loadstring(game:HttpGet("https://pastebin.com/raw/xpT46ucU"))()
   local FinityWindow = Finity.new(true)
FinityWindow.ChangeToggleKey(Enum.KeyCode.RightAlt)
local FarmingCategory = FinityWindow:Category("Farming")
local QuestsCategory = FinityWindow:Category("Quests")
local Quests2Category = FinityWindow:Category("Spoof Clicking")
local TeacherCategory = FinityWindow:Category("Teachers")
local DroppedCategory = FinityWindow:Category("TP 2 Spawnable")
local MobsCategory = FinityWindow:Category("Mobs")
local MiscCategory = FinityWindow:Category("Misc")
local UpdateLogCategory = FinityWindow:Category("Version")
local CreditsCategory = FinityWindow:Category("Credits")
local ReExecuteCategory = FinityWindow:Category("ReExecute")

local FarmingSettings = FarmingCategory:Sector("Farming")
local QuestsSettings = QuestsCategory:Sector("Quests")
local InstantQuestsSettings = Quests2Category:Sector("Spoof Clicking")
local TeacherSettings = TeacherCategory:Sector("Teachers")
local DroppedSettings = DroppedCategory:Sector("Spawned NPCs")
local MobsSettings = MobsCategory:Sector("Mobs")
local MiscSettings = MiscCategory:Sector("Misc")
local CreditsCreator = CreditsCategory:Sector("Finity Library Creator")
local CreditsMaker = CreditsCategory:Sector("Scripts Creator")
local CreditsMaker2 = CreditsCategory:Sector("Credits")
local CreditsMaker3 = CreditsCategory:Sector("Discord Server")
local VersionSettings = UpdateLogCategory:Sector("Version")
local ReExecuteSettings = ReExecuteCategory:Sector("ReExecute")

CreditsMaker:Cheat("Label", "Terebi @ v3rmillion.net")
CreditsMaker:Cheat("Label", "Terebi#0001 @ discord.gg")
CreditsCreator:Cheat("Label", "detourious @ v3rmillion.net")
CreditsCreator:Cheat("Label", "deto#7612 @ discord.gg")
CreditsMaker2:Cheat("Label", "Chim#2575 @ discord.gg - Auto Farm Mob Maker")
CreditsMaker3:Cheat("Label", "https://discord.gg/npFg3k4 - Shitty DSRPG 2 GUI Server")
VersionSettings:Cheat("Label", "v0.11")
VersionSettings:Cheat("Label", "Look In Discord For Changelogs")

local speed = MiscSettings:Cheat("Slider", "Teleportation Speed:", function(Test)
end, {min = 50, max = 300}), {
	placeholder = "200"
	}

FarmingSettings:Cheat(
	"Checkbox", -- Type
	"Fist Attack Spam Enabled", -- Name
	function(AttackSpaming) -- Callback function
		Spam = AttackSpaming
		while Spam do wait()
   game:GetService("ReplicatedStorage").All.Animations.CombatRemote.LIGHTATTACKS:FireServer(1,"AttackConfirmation")
   wait(0.35)
   game:GetService("ReplicatedStorage").All.Animations.CombatRemote.LIGHTATTACKS:FireServer(2,"AttackConfirmation")
   wait(0.35)
   game:GetService("ReplicatedStorage").All.Animations.CombatRemote.LIGHTATTACKS:FireServer(3,"AttackConfirmation")
   wait(0.35)
   end
end
)

FarmingSettings:Cheat(
	"Checkbox", -- Type
	"Katana Attack Spam Enabled", -- Name
	function(AttackSpaming2) -- Callback function
		Spam2 = AttackSpaming2
		while Spam2 do wait()
		    if Plr.Backpack:FindFirstChild(Katana) and Plr.Character:FindFirstChild(Katana) == nil then
            local tool = Plr.Backpack:FindFirstChild(Katana)
            Plr.Character.Humanoid:EquipTool(tool)
        end
   workspace.Live[game.Players.LocalPlayer.Name].Katana.Remotes.KatanaLight:FireServer(1, "AttackConfirmation", workspace.Live[game.Players.LocalPlayer.Name].Katana.Blade)
   wait(0.35)
   workspace.Live[game.Players.LocalPlayer.Name].Katana.Remotes.KatanaLight:FireServer(2, "AttackConfirmation", workspace.Live[game.Players.LocalPlayer.Name].Katana.Blade)
   wait(0.35)
   workspace.Live[game.Players.LocalPlayer.Name].Katana.Remotes.KatanaLight:FireServer(3, "AttackConfirmation", workspace.Live[game.Players.LocalPlayer.Name].Katana.Blade)
   wait(0.35)
   end
end
)

FarmingSettings:Cheat(
	"Checkbox", -- Type
	"Nichirin Attack Spam Enabled", -- Name
	function(Nichi) -- Callback function
		SpamNi = Nichi
		while SpamNi do wait()
		    if Plr.Backpack:FindFirstChild("Nichirin Sword") and Plr.Character:FindFirstChild("Nichirin Sword") == nil then
            local tool = Plr.Backpack:FindFirstChild("Nichirin Sword")
            Plr.Character.Humanoid:EquipTool(tool)
        end
   workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Remotes.KatanaLight:FireServer(1, "AttackConfirmation", workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Blade)
   wait(0.35)
   workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Remotes.KatanaLight:FireServer(2, "AttackConfirmation", workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Blade)
   wait(0.35)
   workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Remotes.KatanaLight:FireServer(3, "AttackConfirmation", workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Blade)
   wait(0.35)
   end
end
)

QuestsSettings:Cheat("Dropdown", "Quest Target NPC TP", function(Value)
local distance = (game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position - game.Workspace.NPC.Targets[Value]:FindFirstChild("HumanoidRootPart").Position).magnitude
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((distance/speed.value), Enum.EasingStyle.Linear)

	    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace.NPC.Targets[Value]:FindFirstChild("HumanoidRootPart").Position)})
		tween:Play()
		local function NoclipLoop()
        game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
wait(distance/speed.value)
if Noclipping then
		Noclipping:Disconnect()
	end
end, {
	options = {
		"Tanjiro",
"Nanuski",
"Matt",
"Vinsho Katana",
"Rice Farmer",
"Chest",
"pink guy"
}
})
	
QuestsSettings:Cheat("Dropdown", "Quest Target NPC TP v2", function(Value)
local distance = (game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position - game.Workspace.NPC.Targets[Value].Position).magnitude
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((distance/speed.value), Enum.EasingStyle.Linear)

	    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace.NPC.Targets[Value].Position)})
		tween:Play()
		local function NoclipLoop()
        game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
wait(distance/speed.value)
if Noclipping then
		Noclipping:Disconnect()
	end
end, {
	options = {
		"Higoshi",
"Bandit",
"Rock",
"Nikone Katana",
"Nezuko",
"Diavolo (Super Weak)",
"Glowing Blue Crystal",
"Oye Katana",
"Purchase Katana",
"Vinsho",
"Yahaba",
"Abnormal Mutated Demon",
"Mizunoto (Demon Corp.)",
"Pacific",
"Chaos Emerald",
"vidgamenate",
"Chris",
"Swordmen",
"Higoshi's Picture",
"Abnormal Demon",
"Slightly Weak Demon",
"Weak Demon",
"Hokkaido Town",
"Tanjiro Kamado",
"Mutated Demon",
"Water Breathing Student",
"Tinho",
"Water Breathing Student",
"Abnormal Demon",
"Minobu Village",
"Female Infected Human (Explosion)",
"Samurai",
"Beginner Insect Demon Corps",
"Intermediate Insect Demon Corps",
"Yellow Thunder",
"Male Infected Human",
"Male Infected Human (Swamp)",
"Issey",
"Issey Headband",
"Male Infected Human (Akaza)",
"Mist Village",
"Ricefield",
"Female Infected Human",
"Butterfly Estate",
"Rock"
}
})
	
QuestsSettings:Cheat("Dropdown", "Quest NPC TP", function(Value2)
local distance = (game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position - game.ReplicatedStorage.RenderCache[Value2].HumanoidRootPart.Position).magnitude
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((distance/speed.value), Enum.EasingStyle.Linear)

	    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.ReplicatedStorage.RenderCache[Value2]:FindFirstChild("HumanoidRootPart").Position)})
		tween:Play()
		local function NoclipLoop()
        game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
wait(distance/speed.value)
if Noclipping then
		Noclipping:Disconnect()
	end
end, {
	options = QuestNPCs
	})
	
QuestsSettings:Cheat("Dropdown", "Quest Item", function(Value3)
fireclickdetector(game.Workspace.NPC.Targets[Value3]:FindFirstChild("ClickDetector"))
end, {
	options = QuestItems
	})
	
QuestsSettings:Cheat("Dropdown", "Area TP", function(Value3)
local distance = (game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position - game.Workspace.AreaPlaces[Value3].Position).magnitude
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((distance/speed.value), Enum.EasingStyle.Linear)

	    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace.AreaPlaces[Value3].Position)})
		tween:Play()
		local function NoclipLoop()
        game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
wait(distance/speed.value)
if Noclipping then
		Noclipping:Disconnect()
	end
end, {
	options = AreasAndTowns
	})

TeacherSettings:Cheat("Dropdown", "Teacher NPC TP", function(Value4)
local distance = (game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position - game.Workspace.NPC.Teacher[Value4].HumanoidRootPart.Position).magnitude
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((distance/speed.value), Enum.EasingStyle.Linear)

	    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace.NPC.Teacher[Value4]:FindFirstChild("HumanoidRootPart").Position)})
		tween:Play()
		local function NoclipLoop()
        game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
wait(distance/speed.value)
if Noclipping then
		Noclipping:Disconnect()
	end
end, {
	options = TeacherNPCs
	})

DroppedSettings:Cheat("Dropdown", "Spawned NPC TP", function(Value5)
local distance = (game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position - game.Workspace.NPC.Spawnables[Value5].HumanoidRootPart.Position).magnitude
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((distance/speed.value), Enum.EasingStyle.Linear)

	    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace.NPC.Spawnables[Value5]:FindFirstChild("HumanoidRootPart").Position)})
		tween:Play()
		local function NoclipLoop()
        game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
wait(distance/speed.value)
if Noclipping then
		Noclipping:Disconnect()
	end
end, {
	options = {
		"Muzan",
		"Mororo",
		"Nezuko"
	}
})
	
MobsSettings:Cheat("Dropdown", "Mob TP", function(Value6)
local distance = (game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position - game.Workspace.Live[Value6].HumanoidRootPart.Position).magnitude
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((distance/speed.value), Enum.EasingStyle.Linear)

	    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace.Live[Value6]:FindFirstChild("HumanoidRootPart").Position)})
		tween:Play()
		local function NoclipLoop()
        game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
wait(distance/speed.value)
if Noclipping then
		Noclipping:Disconnect()
	end
end, {
	options = Mobs
	})
	
FarmingSettings:Cheat(
	"Checkbox", -- Type
	"Exercise EXP Enabled", -- Name
	function(Exercise) -- Callback function
		Spam3 = Exercise
		while Spam3 do wait()
		game:GetService("ReplicatedStorage").All.Events.System:FireServer("ExerciseXP", true)
   end
end
)

FarmingSettings:Cheat(
	"Checkbox", -- Type
	"Blowing EXP Enabled", -- Name
	function(Breathing) -- Callback function
		Spam4 = Breathing
		while Spam4 do wait()
		game:GetService("ReplicatedStorage").All.Events.System:FireServer("BlowsXP", true)
   end
end
)

FarmingSettings:Cheat(
	"Checkbox", -- Type
	"Infinite Breathing Enabled", -- Name
	function(BreathingBar) -- Callback function
		Spam5 = BreathingBar
		while Spam5 do wait()
		game:GetService("ReplicatedStorage").All.Events.System:FireServer("BreathingRegen")
   end
end
)

FarmingSettings:Cheat("Button", "Print Breathing/Exercise Lvl", function()
warn(game.ReplicatedStorage.Values[game.Players.LocalPlayer.Name].BreathingLvl.Value)
warn(game.ReplicatedStorage.Values[game.Players.LocalPlayer.Name].ExerciseLvl.Value)
end)

InstantQuestsSettings:Cheat("Label", "Spoof Click Any Of The Following 5 Items")

InstantQuestsSettings:Cheat("Dropdown", "Quest NPC", function(Value7)
fireclickdetector(game:GetService("ReplicatedStorage").RenderCache[Value7]:FindFirstChild("ClickDetector"))
end, {
	options = {
		"Cuansety2",
		"Tinho",
"Daisuke",
"Giorno",
"Hiroyuki",
"Sota",
"Jin",
"Vinsho",
"Haruki",
"Nanika",
"Lisa",
"Kinko",
"Erina",
"Pacific",
"Chris",
"Kenjo",
"Higoshi",
"Kumiko",
"Akari",
"Himari",
"Shirino",
"Satamoto",
"Higoshi Demon Corps",
"Jaru",
"Aiya",
"Elissa",
"Nikone",
"Kenji",
"Naozumi",
"DemonQ1",
"Muzan Tanjiro Quest",
"Tanjiro Kamado",
"Tsuko",
"Haru",
"Fuji",
"Issey",
"Kane",
"Kai",
"Morino",
"Rio",
"Seiji",
"Ramu",
"Mimamoto",
"Rose",
"Koji",
"Renchi",
"Sachi",
"Sumire",
"Namiko",
"Liz",
"Maro",
"Toyotomi",
"Sara",
"Nomi",
"Papa Franku",
"Senku",
"Ninya",
"Monko",
"Mieko",
"Kamei",
"Namba",
"Tengan",
"Oye",
"Tomio",
"Maki",
"Kanda",
"Kinko2",
"Momoko",
"Nishihara",
"Cuansety2"
	}
})
	
InstantQuestsSettings:Cheat("Dropdown", "Quest Target", function(Value7)
fireclickdetector(game.Workspace.NPC.Targets[Value7]:FindFirstChild("ClickDetector"))
end, {
	options = QuestTargets
	})
	
InstantQuestsSettings:Cheat("Dropdown", "Quest Item", function(Value7)
fireclickdetector(game.Workspace.NPC.Targets[Value7]:FindFirstChild("ClickDetector"))
end, {
	options = QuestItems
	})
	
InstantQuestsSettings:Cheat("Dropdown", "Teacher", function(Value7)
fireclickdetector(game.Workspace.NPC.Teacher[Value7]:FindFirstChild("ClickDetector"))
end, {
	options = TeacherNPCs
	})
	
InstantQuestsSettings:Cheat("Dropdown", "Spawned NPC", function(Value7)
fireclickdetector(game.Workspace.NPC.Spawnables[Value7]:FindFirstChild("ClickDetector"))
end, {
	options = {
		"Muzan",
		"Mororo",
		"Nezuko"
	}
})
	
MiscSettings:Cheat(
	"Checkbox", -- Type
	"Inf Block Bar Enabled", -- Name
	function(InfBlock) -- Callback function
		Spam6 = InfBlock
		while Spam6 do wait()
		game.Workspace.Live[game.Players.LocalPlayer.Name].BlockBar.Value = 100
   end
end
)

MiscSettings:Cheat(
	"Checkbox", -- Type
	"God Mode Enabled", -- Name
	function(GodMode) -- Callback function
		Spam7 = GodMode
		while Spam7 do wait()
		for _,v in pairs(game.Workspace.Live[game.Players.LocalPlayer.Name]:GetDescendants()) do
		if v.Name == "Defense" then
		game.Workspace.Live[game.Players.LocalPlayer.Name].Detection.Disabled = true
        game.Workspace.Live[game.Players.LocalPlayer.Name].Buffs.Defense:Destroy()
		end
		end
		end
		end
)

MiscSettings:Cheat(
	"Checkbox", -- Type
	"No Attack CD Enabled", -- Name
	function(NoCD) -- Callback function
		Spam8 = NoCD
		while Spam8 do wait()
		for i,v in pairs(game.Workspace.Live[game.Players.LocalPlayer.Name]:GetChildren()) do
if v.Name == "Combo" and v.Value == 4 then
    v.Value = 1
end
end
   end
end
)

MiscSettings:Cheat(
	"Checkbox", -- Type
	"No Starve Enabled", -- Name
	function(Starve) -- Callback function
		Spam10 = Starve
		while Spam10 do wait()
		for _,v in pairs(game.Players.LocalPlayer.PlayerGui.HUDGui:GetChildren()) do
		if v.Name == "HungerScript" then
        game.Players.LocalPlayer.PlayerGui.HUDGui.HungerScript:Destroy()
		end
		end
		end
		end
)

MiscSettings:Cheat(
	"Checkbox", -- Type
	"Infinite 2x EXP Enabled", -- Name
	function(InfEXP) -- Callback function
		Spam11 = InfEXP
		while Spam11 do wait()
		for _,v in pairs(game.Players.LocalPlayer.PlayerGui.HUDGui:GetChildren()) do
		if v.Name == "LocalScript" then
        game.Players.LocalPlayer.PlayerGui.HUDGui.LocalScript.Disabled = true
		end
		end
		end
		end
)

MiscSettings:Cheat("Button", "Purchase Apple $4", function()
fireclickdetector(game.Workspace.NPC["Demons cannot buy this!"]["Apple $4"]:FindFirstChild("ClickDetector"))
end)

MiscSettings:Cheat("Button", "Purchase Meat $28", function()
fireclickdetector(game.Workspace["Meat $28"]:FindFirstChild("ClickDetector"))
end)

MiscSettings:Cheat("Button", "Collect All Flowers", function()
for _,v in pairs(workspace.Flowers:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
end)

ReExecuteSettings:Cheat("Button", "ReExecute The GUI?", function()
for _,v in pairs(game.CoreGui:GetDescendants()) do
if v.Name == "FinityUI" then
game.CoreGui.FinityUI:Destroy()
wait(1.35)
loadstring(game:HttpGet("https://raw.githubusercontent.com/HDTerebi/Beta-DSRPG2/master/Beta%20Shitty%20GUI.lua"))()
end
end
end)

MiscSettings:Cheat("Dropdown", "Gender Wanted:", function(Option)
game.ReplicatedStorage.All.Events.System:FireServer("GenderDecide", Option)
end, {
	options = {
		"Male",
		"Female"
	}
})

MiscSettings:Cheat("Textbox", "Run Speed:", function(Value8)
for _,v in pairs(game.Workspace.Live[game.Players.LocalPlayer.Name]:GetDescendants()) do
		if v.Name == "Speed" then
		game.Workspace.Live[game.Players.LocalPlayer.Name].Buffs.Speed.Value = Value8
		end
		end
end, {
	placeholder = "10"
	})
	
MiscSettings:Cheat("Button", "Print Current Speed", function()
print(speed.value)
end)
	
MiscSettings:Cheat(
	"Checkbox", -- Type
	"Clear Lighting Enabled", -- Name
	function(Light) -- Callback function
		Spam8 = Light
		while Spam8 do wait()
			game.Lighting.FogEnd = 1000000
		for i,v in pairs(game.Lighting:GetDescendants()) do
		v:Destroy()
		end
		end
		end
)
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/chimnguu/ngu/master/dsrpg2.lua"))()

game.StarterGui:SetCore("SendNotification", {
Title = "Beta DSRPG 2 Gui";
Text = "Made By Terebi#0001",
Icon = "rbxassetid://5472203252";
Duration = 6;
})
