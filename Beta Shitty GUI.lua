if game.PlaceId==4734949248 then if not game:IsLoaded()then local a=Instance.new("Message",workspace)a.Text='Waiting For The Game To Load....'game.Loaded:Wait()a:Destroy()end;for b,c in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MenuScreen:GetChildren())do if c.Name=="MenuMusic"and c.Volume==2 then warn("Anti-Cheat Bypassed")local d=game:service'VirtualUser'game:service'Players'.LocalPlayer.Idled:connect(function()d:CaptureController()d:ClickButton2(Vector2.new())end)local e=game.Players.LocalPlayer:GetMouse()local f="Katana"local g;Sword="Nichirin Sword"local h=game:GetService("Players").LocalPlayer;local i=game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()local j=i:FindFirstChild("HumanoidRootPart")local k=j.Position.magnitude;local l=nil;Clip=false;local m={}for n,c in pairs(game.Workspace.NPC.Targets:GetChildren())do if c:FindFirstChild("HumanoidRootPart")or c:FindFirstChild("TargetFinder")then table.insert(m,c.Name)end end;local o={}for n,c in pairs(game.Workspace.NPC.Quests:GetChildren())do if c:FindFirstChild("Talk")or c:FindFirstChild("Interaction")then table.insert(o,c.Name)end end;local p={}for n,c in pairs(game.Workspace.NPC.Targets:GetChildren())do if c:FindFirstChild("ClickDetector")then table.insert(p,c.Name)end end;local q={}for n,c in pairs(game.Workspace.NPC.Teacher:GetChildren())do if c:FindFirstChild("Talk")or c:FindFirstChild("ClickDetector")then table.insert(q,c.Name)end end;local r={}for n,c in pairs(game.Workspace.NPC.Spawnables:GetChildren())do if c:FindFirstChild("Despawn")or c:FindFirstChild("ClickDetector")then table.insert(r,c.Name)end end;local s={}for n,c in pairs(game.ReplicatedStorage.All.NPCs:GetChildren())do table.insert(s,c.Name)end;local t={}for n,c in pairs(game.Workspace.AreaPlaces:GetChildren())do table.insert(t,c.Name)end;local u={}local v=game:GetService("Players")for b,c in next,v:GetChildren()do table.insert(u,c.Name)end;v.PlayerRemoving:Connect(function(w)for n,c in next,u do if c==w.Name then table.remove(u,n)end end end)v.PlayerAdded:Connect(function(w)table.insert(u,w.Name)end)local x=loadstring(game:HttpGet("https://pastebin.com/raw/xpT46ucU"))()local y=x.new(true)y.ChangeToggleKey(Enum.KeyCode.RightAlt)local z=y:Category("Farming")local A=y:Category("Quests")local B=y:Category("Spoof Clicking")local C=y:Category("Teachers")local D=y:Category("TP 2 Spawnable")local E=y:Category("Mobs")local F=y:Category("Misc")local G=y:Category("Version")local H=y:Category("Credits")local I=y:Category("ReExecute")local J=z:Sector("Farming")local K=A:Sector("Quests")local L=B:Sector("Spoof Clicking")local M=C:Sector("Teachers")local N=D:Sector("Spawned NPCs")local O=E:Sector("Mobs")local P=F:Sector("Misc")local Q=H:Sector("Finity Library Creator")local R=H:Sector("Scripts Creator")local S=H:Sector("Credits")local T=H:Sector("Discord Server")local U=G:Sector("Version")local V=I:Sector("ReExecute")R:Cheat("Label","Terebi @ v3rmillion.net")R:Cheat("Label","Terebi#0001 @ discord.gg")Q:Cheat("Label","detourious @ v3rmillion.net")Q:Cheat("Label","deto#7612 @ discord.gg")T:Cheat("Label","https://discord.gg/npFg3k4 - Shitty DSRPG 2 GUI Server")U:Cheat("Label","v0.19")U:Cheat("Label","Look In Discord For Changelogs")local W=P:Cheat("Slider","Teleportation Speed:",function(X)end,{min=50,max=350}),{placeholder="200"}W.value="200"J:Cheat("Checkbox","Fist Attack Spam Enabled",function(Y)Spam=Y;while Spam do wait()game:GetService("ReplicatedStorage").All.Animations.CombatRemote.LIGHTATTACKS:FireServer(1,"AttackConfirmation")wait(0.35)game:GetService("ReplicatedStorage").All.Animations.CombatRemote.LIGHTATTACKS:FireServer(2,"AttackConfirmation")wait(0.35)game:GetService("ReplicatedStorage").All.Animations.CombatRemote.LIGHTATTACKS:FireServer(3,"AttackConfirmation")wait(0.35)end end)J:Cheat("Checkbox","Katana Attack Spam Enabled",function(Z)Spam2=Z;while Spam2 do wait()if h.Backpack:FindFirstChild(f)and h.Character:FindFirstChild(f)==nil then local _=h.Backpack:FindFirstChild(f)h.Character.Humanoid:EquipTool(_)end;workspace.Live[game.Players.LocalPlayer.Name].Katana.Remotes.KatanaLight:FireServer(1,"AttackConfirmation",workspace.Live[game.Players.LocalPlayer.Name].Katana.Blade)wait(0.35)workspace.Live[game.Players.LocalPlayer.Name].Katana.Remotes.KatanaLight:FireServer(2,"AttackConfirmation",workspace.Live[game.Players.LocalPlayer.Name].Katana.Blade)wait(0.35)workspace.Live[game.Players.LocalPlayer.Name].Katana.Remotes.KatanaLight:FireServer(3,"AttackConfirmation",workspace.Live[game.Players.LocalPlayer.Name].Katana.Blade)wait(0.35)end end)J:Cheat("Checkbox","Nichirin Attack Spam Enabled",function(a0)SpamNi=a0;while SpamNi do wait()if h.Backpack:FindFirstChild("Nichirin Sword")and h.Character:FindFirstChild("Nichirin Sword")==nil then local _=h.Backpack:FindFirstChild("Nichirin Sword")h.Character.Humanoid:EquipTool(_)end;workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Remotes.KatanaLight:FireServer(1,"AttackConfirmation",workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Blade)wait(0.35)workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Remotes.KatanaLight:FireServer(2,"AttackConfirmation",workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Blade)wait(0.35)workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Remotes.KatanaLight:FireServer(3,"AttackConfirmation",workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Blade)wait(0.35)end end)K:Cheat("Dropdown","Quest Target NPC TP",function(a1)local a2=(game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position-game.Workspace.NPC.Targets[a1]:FindFirstChild("HumanoidRootPart").Position).magnitude;tweenService,tweenInfo=game:GetService("TweenService"),TweenInfo.new(a2/W.value,Enum.EasingStyle.Linear)tween=tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,tweenInfo,{CFrame=CFrame.new(game.Workspace.NPC.Targets[a1]:FindFirstChild("HumanoidRootPart").Position)})tween:Play()local function a3()game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)end;l=game:GetService('RunService').Stepped:connect(a3)wait(a2/W.value)if l then l:Disconnect()end end,{options={"Chest","Matt","Nanuski","Rice Farmer","Tanjiro","Vinsho Katana","pink guy"}})K:Cheat("Dropdown","Quest Target NPC TP v2",function(a1)local a2=(game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position-game.Workspace.NPC.Targets[a1].Position).magnitude;tweenService,tweenInfo=game:GetService("TweenService"),TweenInfo.new(a2/W.value,Enum.EasingStyle.Linear)tween=tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,tweenInfo,{CFrame=CFrame.new(game.Workspace.NPC.Targets[a1].Position)})tween:Play()local function a3()game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)end;l=game:GetService('RunService').Stepped:connect(a3)wait(a2/W.value)if l then l:Disconnect()end end,{options={"Abnormal Demon","Abnormal Demon","Abnormal Mutated Demon","Bandit","Beginner Insect Demon Corps","Butterfly Estate","Chaos Emerald","Chris","Diavolo (Super Weak)","Female Infected Human (Explosion)","Female Infected Human","Glowing Blue Crystal","Higoshi","Higoshi's Picture","Hokkaido Town","Intermediate Insect Demon Corps","Issey Headband","Issey","Male Infected Human (Akaza)","Male Infected Human (Swamp)","Male Infected Human","Minobu Village","Mist Village","Mizunoto (Demon Corp.)","Mutated Demon","Nezuko","Nikone Katana","Oye Katana","Pacific","Purchase Katana","Ricefield","Rock","Samurai","Slightly Weak Demon","Swordmen","Tanjiro Kamado","Tinho","Vinsho","Water Breathing Student","Water Breathing Student","Weak Demon","Yahaba","Yellow Thunder","vidgamenate"}})K:Cheat("Dropdown","Quest NPC TP",function(a4)local a2=(game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position-game.ReplicatedStorage.RenderCache[a4].HumanoidRootPart.Position).magnitude;tweenService,tweenInfo=game:GetService("TweenService"),TweenInfo.new(a2/W.value,Enum.EasingStyle.Linear)tween=tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,tweenInfo,{CFrame=CFrame.new(game.ReplicatedStorage.RenderCache[a4]:FindFirstChild("HumanoidRootPart").Position)})tween:Play()local function a3()game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)end;l=game:GetService('RunService').Stepped:connect(a3)wait(a2/W.value)if l then l:Disconnect()end end,{options=o})K:Cheat("Dropdown","Quest Item",function(a5)fireclickdetector(game.Workspace.NPC.Targets[a5]:FindFirstChild("ClickDetector"))end,{options=p})K:Cheat("Dropdown","Area TP",function(a5)local a2=(game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position-game.Workspace.AreaPlaces[a5].Position).magnitude;tweenService,tweenInfo=game:GetService("TweenService"),TweenInfo.new(a2/W.value,Enum.EasingStyle.Linear)tween=tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,tweenInfo,{CFrame=CFrame.new(game.Workspace.AreaPlaces[a5].Position)})tween:Play()local function a3()game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)end;l=game:GetService('RunService').Stepped:connect(a3)wait(a2/W.value)if l then l:Disconnect()end end,{options=t})M:Cheat("Dropdown","Teacher NPC TP",function(a6)local a2=(game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position-game.Workspace.NPC.Teacher[a6].HumanoidRootPart.Position).magnitude;tweenService,tweenInfo=game:GetService("TweenService"),TweenInfo.new(a2/W.value,Enum.EasingStyle.Linear)tween=tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,tweenInfo,{CFrame=CFrame.new(game.Workspace.NPC.Teacher[a6]:FindFirstChild("HumanoidRootPart").Position)})tween:Play()local function a3()game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)end;l=game:GetService('RunService').Stepped:connect(a3)wait(a2/W.value)if l then l:Disconnect()end end,{options=q})N:Cheat("Dropdown","Spawned NPC TP",function(a7)local a2=(game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position-game.Workspace.NPC.Spawnables[a7].HumanoidRootPart.Position).magnitude;tweenService,tweenInfo=game:GetService("TweenService"),TweenInfo.new(a2/W.value,Enum.EasingStyle.Linear)tween=tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,tweenInfo,{CFrame=CFrame.new(game.Workspace.NPC.Spawnables[a7]:FindFirstChild("HumanoidRootPart").Position)})tween:Play()local function a3()game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)end;l=game:GetService('RunService').Stepped:connect(a3)wait(a2/W.value)if l then l:Disconnect()end end,{options={"Muzan","Mororo","Nezuko"}})local a8=O:Cheat("Dropdown","Current Mob Selected",function(a9)end,{options=s})O:Cheat("Checkbox","Farm Selected Mob",function(aa)Spam666=aa;while Spam666 do wait()pcall(function()for n,c in pairs(game.Workspace.Live:GetChildren())do if c:FindFirstChild("HumanoidRootPart")and c.Name==a8.value then if c.Humanoid.Health>1 then repeat wait()local a2=(game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position-c:FindFirstChild("HumanoidRootPart").Position).magnitude;tweenService,tweenInfo=game:GetService("TweenService"),TweenInfo.new(a2/W.value,Enum.EasingStyle.Linear)tween=tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,tweenInfo,{CFrame=CFrame.new(c:FindFirstChild("HumanoidRootPart").Position+c:FindFirstChild("HumanoidRootPart").CFrame.lookVector*-1.5)})tween:Play()game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)until c.Humanoid.Health<=0 end end end end)end end)local ab=O:Cheat("Dropdown","Current Victim Selected",function(a9)_G.SelectedPlayer=a9 end,{options=u,default=u[1]})O:Cheat("Checkbox","Farm Selected Player",function(ac)Spam999=ac;while Spam999 do wait()pcall(function()for n,c in pairs(game.Workspace.Live:GetChildren())do if c:FindFirstChild("HumanoidRootPart")and c.Name==ab.value then if c.Humanoid.Health>1 then repeat wait()local a2=(game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position-c:FindFirstChild("HumanoidRootPart").Position).magnitude;tweenService,tweenInfo=game:GetService("TweenService"),TweenInfo.new(a2/W.value,Enum.EasingStyle.Linear)tween=tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,tweenInfo,{CFrame=CFrame.new(c:FindFirstChild("HumanoidRootPart").Position+c:FindFirstChild("HumanoidRootPart").CFrame.lookVector*-1.5)})tween:Play()game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)until c.Humanoid.Health<=0 end end end end)end end)J:Cheat("Checkbox","Exercise EXP Enabled",function(ad)Spam3=ad;while Spam3 do wait()game:GetService("ReplicatedStorage").All.Events.System:FireServer("ExerciseXP",true)end end)J:Cheat("Checkbox","Blowing EXP Enabled",function(ae)Spam4=ae;while Spam4 do wait()game:GetService("ReplicatedStorage").All.Events.System:FireServer("BlowsXP",true)end end)J:Cheat("Checkbox","Infinite Breathing Enabled",function(af)Spam5=af;while Spam5 do wait()game:GetService("ReplicatedStorage").All.Events.System:FireServer("BreathingRegen")end end)J:Cheat("Button","Print Breathing/Exercise Lvl",function()warn(game.ReplicatedStorage.Values[game.Players.LocalPlayer.Name].BreathingLvl.Value)warn(game.ReplicatedStorage.Values[game.Players.LocalPlayer.Name].ExerciseLvl.Value)end)L:Cheat("Label","Spoof Click Any Of The Following 5 Items")L:Cheat("Dropdown","Quest NPC",function(ag)fireclickdetector(game:GetService("ReplicatedStorage").RenderCache[ag]:FindFirstChild("ClickDetector"))end,{options={"Cuansety2","Tinho","Daisuke","Giorno","Hiroyuki","Sota","Jin","Vinsho","Haruki","Nanika","Lisa","Kinko","Erina","Pacific","Chris","Kenjo","Higoshi","Kumiko","Akari","Himari","Shirino","Satamoto","Higoshi Demon Corps","Jaru","Aiya","Elissa","Nikone","Kenji","Naozumi","DemonQ1","Muzan Tanjiro Quest","Tanjiro Kamado","Tsuko","Haru","Fuji","Issey","Kane","Kai","Morino","Rio","Seiji","Ramu","Mimamoto","Rose","Koji","Renchi","Sachi","Sumire","Namiko","Liz","Maro","Toyotomi","Sara","Nomi","Papa Franku","Senku","Ninya","Monko","Mieko","Kamei","Namba","Tengan","Oye","Tomio","Maki","Kanda","Kinko2","Momoko","Nishihara","Cuansety2"}})L:Cheat("Dropdown","Quest Target",function(ag)fireclickdetector(game.Workspace.NPC.Targets[ag]:FindFirstChild("ClickDetector"))end,{options=m})L:Cheat("Dropdown","Quest Item",function(ag)fireclickdetector(game.Workspace.NPC.Targets[ag]:FindFirstChild("ClickDetector"))end,{options=p})L:Cheat("Dropdown","Teacher",function(ag)fireclickdetector(game.Workspace.NPC.Teacher[ag]:FindFirstChild("ClickDetector"))end,{options=q})L:Cheat("Dropdown","Spawned NPC",function(ag)fireclickdetector(game.Workspace.NPC.Spawnables[ag]:FindFirstChild("ClickDetector"))end,{options={"Muzan","Mororo","Nezuko"}})P:Cheat("Checkbox","Inf Block Bar Enabled",function(ah)Spam6=ah;while Spam6 do wait()game.Workspace.Live[game.Players.LocalPlayer.Name].BlockBar.Value=100 end end)P:Cheat("Checkbox","God Mode Enabled",function(ai)Spam7=ai;while Spam7 do wait()for b,c in pairs(game.Workspace.Live[game.Players.LocalPlayer.Name]:GetDescendants())do if c.Name=="Defense"then game.Workspace.Live[game.Players.LocalPlayer.Name].Detection.Disabled=true;game.Workspace.Live[game.Players.LocalPlayer.Name].Buffs.Defense:Destroy()end end end end)P:Cheat("Checkbox","No Attack CD Enabled",function(aj)Spam8=aj;while Spam8 do wait()for n,c in pairs(game.Workspace.Live[game.Players.LocalPlayer.Name]:GetChildren())do if c.Name=="Combo"and c.Value==4 then c.Value=1 end end end end)P:Cheat("Checkbox","No Starve Enabled",function(ak)Spam10=ak;while Spam10 do wait()for b,c in pairs(game.Players.LocalPlayer.PlayerGui.HUDGui:GetChildren())do if c.Name=="HungerScript"then game.Players.LocalPlayer.PlayerGui.HUDGui.HungerScript:Destroy()end end end end)P:Cheat("Checkbox","Infinite 2x EXP Enabled",function(al)Spam11=al;while Spam11 do wait()for b,c in pairs(game.Players.LocalPlayer.PlayerGui.HUDGui:GetChildren())do if c.Name=="LocalScript"then game.Players.LocalPlayer.PlayerGui.HUDGui.LocalScript.Disabled=true end end end end)P:Cheat("Button","Purchase Apple $4",function()fireclickdetector(game.Workspace.NPC["Demons cannot buy this!"]["Apple $4"]:FindFirstChild("ClickDetector"))end)P:Cheat("Button","Purchase Meat $28",function()fireclickdetector(game.Workspace["Meat $28"]:FindFirstChild("ClickDetector"))end)V:Cheat("Button","ReExecute The GUI?",function()for b,c in pairs(game.CoreGui:GetDescendants())do if c.Name=="FinityUI"then game.CoreGui.FinityUI:Destroy()wait(1.35)loadstring(game:HttpGet("https://raw.githubusercontent.com/HDTerebi/Beta-DSRPG2/master/Beta%20Shitty%20GUI.lua"))()end end end)P:Cheat("Dropdown","Gender Wanted:",function(am)game.ReplicatedStorage.All.Events.System:FireServer("GenderDecide",am)end,{options={"Male","Female"}})P:Cheat("Textbox","Run Speed:",function(an)for b,c in pairs(game.Workspace.Live[game.Players.LocalPlayer.Name]:GetDescendants())do if c.Name=="Speed"then game.Workspace.Live[game.Players.LocalPlayer.Name].Buffs.Speed.Value=an end end end,{placeholder="10"})P:Cheat("Checkbox","Clear Lighting Enabled",function(ao)Spam8=ao;while Spam8 do wait()game.Lighting.FogEnd=1000000;for n,c in pairs(game.Lighting:GetDescendants())do c:Destroy()end end end)P:Cheat("Checkbox","Auto Correct Level & Yen",function(ap)Spam8888=ap;while Spam8888 do wait()game:GetService("Players").LocalPlayer.PlayerGui.HUDGui.Level.Text="Level: "..game.ReplicatedStorage.Values[game.Players.LocalPlayer.Name].Level.Value;game:GetService("Players").LocalPlayer.PlayerGui.HUDGui.Money.Text="¥"..game.ReplicatedStorage.Values[game.Players.LocalPlayer.Name].Money.Value end end)local aq=P:Cheat("Slider","Aimbot Range:",function(ar)end,{min=50,max=400}),{placeholder="160"}aq.value="160"P:Cheat("Checkbox","Move And Skill Aimbot",function(as)AimSpam=as;while AimSpam do wait()for n,c in pairs(game.Workspace.Live:GetChildren())do if c:FindFirstChild("HumanoidRootPart")and c.Humanoid.Health>0 and(c.HumanoidRootPart.Position and(game.Workspace.Live[game.Players.LocalPlayer.Name].HumanoidRootPart.Position-c.HumanoidRootPart.Position).magnitude<aq.value)then game:GetService("ReplicatedStorage").All.Events.TargetChanged:FireServer(c.HumanoidRootPart.Position)break end end end end)game.StarterGui:SetCore("SendNotification",{Title="Beta DSRPG 2 Gui",Text="Made By Terebi#0001",Icon="rbxassetid://5472203252",Duration=6})game.StarterGui:SetCore("SendNotification",{Title="Beta DSRPG 2 Gui",Text="Bypassed Anti-Cheat, Congratulations!",Icon="rbxassetid://5472203252",Duration=6})local at=Instance.new("Sound")at.Name="Congrats"at.SoundId="http://www.roblox.com/asset/?id=284494758"at.Volume=10;at.Pitch=1;at.Looped=false;at.archivable=false;at:Play()at.Parent=game.Workspace;mt=getrawmetatable(game)setreadonly(mt,false)old=mt.__namecall;mt.__namecall=newcclosure(function(self,...)local au={...}if getnamecallmethod()=="FireServer"and au[1]=="stringb"then return nil end;return old(self,...)end)end end end;for b,c in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MenuScreen:GetChildren())do if c.Name=="MenuMusic"and c.Volume==0 then warn("Unable To Bypass Anti-Cheat, Run It From The Main Menu You BAKA!")local at=Instance.new("Sound")at.Name="Sound"at.SoundId="http://www.roblox.com/asset/?id=3720230884"at.Volume=10;at.Pitch=1;at.Looped=true;at.archivable=false;at:Play()at.Parent=game.Workspace;game.StarterGui:SetCore("SendNotification",{Title="Beta DSRPG 2 Gui",Text="Made By Terebi#0001",Icon="rbxassetid://5472203252",Duration=6})while wait(3)do game.StarterGui:SetCore("SendNotification",{Title="Beta DSRPG 2 Gui",Text="Critical Error! Failed 2 Bypass Anti-Cheat (F9)",Icon="rbxassetid://5472203252",Duration=999})end end end;if game.PlaceId==5450225021 then loadstring(game:HttpGet("https://raw.githubusercontent.com/HDTerebi/Beta-DSRPG2/master/Ranked"))()end
