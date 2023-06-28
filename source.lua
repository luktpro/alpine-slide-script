local main_gui = Instance.new("ScreenGui")
main_gui.IgnoreGuiInset = false
main_gui.ResetOnSpawn = true
main_gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
main_gui.Name = "MainGui"
main_gui.Parent = game.CoreGui

main_gui.Enabled = false
if not game:IsLoaded() then 
	wait() 
else if game:IsLoaded() then 
	main_gui.Enabled = true
end

local main = Instance.new("Frame")
main.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
main.Position = UDim2.new(0.0253968239, 0, 0.0401376188, 0)
main.Size = UDim2.new(0, 226, 0, 550)
main.Visible = true
main.Name = "Main"
main.Parent = main_gui

local uicorner = Instance.new("UICorner")
uicorner.Parent = main

local rainbow = Instance.new("Frame")
rainbow.BackgroundColor3 = Color3.new(1, 1, 1)
rainbow.Size = UDim2.new(0, 225, 0, 10)
rainbow.Visible = true
rainbow.Name = "Rainbow"
rainbow.Parent = main

local uicorner_2 = Instance.new("UICorner")
uicorner_2.Parent = rainbow

local uigradient = Instance.new("UIGradient")
uigradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0, 0.866667, 1)), ColorSequenceKeypoint.new(1, Color3.new(0, 0.0156863, 1))})
uigradient.Offset = Vector2.new(0, 4)
uigradient.Parent = rainbow

local rotate = Instance.new("LocalScript")
rotate.Name = "Rotate"
rotate.Parent = uigradient

local drag = Instance.new("LocalScript")
drag.Name = "Drag"
drag.Parent = main

local label = Instance.new("TextLabel")
label.Font = Enum.Font.SourceSansBold
label.Text = "Main Tab"
label.TextColor3 = Color3.new(1, 1, 1)
label.TextSize = 18
label.TextWrapped = true
label.TextXAlignment = Enum.TextXAlignment.Left
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BackgroundTransparency = 1
label.Position = UDim2.new(0.0884955749, 0, 0, 0)
label.Size = UDim2.new(0, 207, 0, 23)
label.Visible = true
label.Name = "Label"
label.Parent = main

local uistroke = Instance.new("UIStroke")
uistroke.Color = Color3.new(0.141176, 0.141176, 0.141176)
uistroke.Parent = label

local features = Instance.new("Frame")
features.BackgroundColor3 = Color3.new(1, 1, 1)
features.BackgroundTransparency = 1
features.Position = UDim2.new(0.0619469024, 0, 0.0818181783, 0)
features.Size = UDim2.new(0, 204, 0, 490)
features.Visible = true
features.Name = "Features"
features.Parent = main

local auto_win = Instance.new("Frame")
auto_win.BackgroundColor3 = Color3.new(1, 1, 1)
auto_win.BackgroundTransparency = 1
auto_win.Size = UDim2.new(0, 204, 0, 55)
auto_win.Visible = true
auto_win.Name = "Auto Win"
auto_win.Parent = features

local name = Instance.new("TextLabel")
name.Font = Enum.Font.SourceSansBold
name.Text = "Auto Win"
name.TextColor3 = Color3.new(1, 1, 1)
name.TextSize = 19
name.TextWrapped = true
name.TextXAlignment = Enum.TextXAlignment.Left
name.BackgroundColor3 = Color3.new(1, 1, 1)
name.BackgroundTransparency = 1
name.Position = UDim2.new(0.0637254938, 0, 0, 0)
name.Size = UDim2.new(0, 137, 0, 24)
name.Visible = true
name.Name = "Name"
name.Parent = auto_win

local uicorner_3 = Instance.new("UICorner")
uicorner_3.Parent = auto_win

local uistroke_2 = Instance.new("UIStroke")
uistroke_2.Color = Color3.new(1, 1, 1)
uistroke_2.Parent = auto_win

local uigradient_2 = Instance.new("UIGradient")
uigradient_2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0, 0.866667, 1)), ColorSequenceKeypoint.new(0.7024221420288086, Color3.new(0.141176, 0.133333, 0.121569)), ColorSequenceKeypoint.new(1, Color3.new(0.141176, 0.133333, 0.121569))})
uigradient_2.Offset = Vector2.new(0, 4)
uigradient_2.Parent = uistroke_2

local description = Instance.new("TextLabel")
description.Font = Enum.Font.SourceSansLight
description.Text = " Automatically puts you into a cart and triggers win."
description.TextColor3 = Color3.new(1, 1, 1)
description.TextSize = 14
description.TextWrapped = true
description.TextXAlignment = Enum.TextXAlignment.Left
description.TextYAlignment = Enum.TextYAlignment.Top
description.BackgroundColor3 = Color3.new(1, 1, 1)
description.BackgroundTransparency = 1
description.Position = UDim2.new(0.0392156877, 0, 0.327272713, 0)
description.Size = UDim2.new(0, 138, 0, 35)
description.Visible = true
description.Name = "Description"
description.Parent = auto_win

local text_button = Instance.new("TextButton")
text_button.Font = Enum.Font.SourceSans
text_button.Text = ""
text_button.TextColor3 = Color3.new(0, 0, 0)
text_button.TextSize = 14
text_button.BackgroundColor3 = Color3.new(1, 1, 1)
text_button.BackgroundTransparency = 1
text_button.Size = UDim2.new(0, 195, 0, 55)
text_button.Visible = true
text_button.Parent = auto_win

local scriptfunction = Instance.new("LocalScript")
scriptfunction.Name = "scriptfunction"
scriptfunction.Parent = text_button

local uilist_layout = Instance.new("UIListLayout")
uilist_layout.Padding = UDim.new(0, 10)
uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
uilist_layout.Parent = features

local visibility = Instance.new("LocalScript")
visibility.Name = "Visibility"
visibility.Parent = main_gui

--//Modules

local modules = {}

--// Scripts

-- Rotate
task.spawn(function()
	local script = rotate

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	while task.wait() do
		script.Parent.Rotation = script.Parent.Rotation + 1
	end
end)

-- Drag
task.spawn(function()
	local script = drag

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end)

-- scriptfunction
task.spawn(function()
	local script = scriptfunction

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	function Script()
		while wait(2) do
			fireclickdetector(game.Workspace.Main.EndRegen.ClickDetector)
			wait(7)
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(7)
			game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position = Vector3.new(17.131027221679688, 598.2047119140625, -306.1595764160156)
			wait(7)
			fireclickdetector(game.Workspace.Main.Regen.ClickDetector)
			wait(7)
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(7)
			game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position = Vector3.new(94.96814727783203, 766.9998779296875, -513.9981079101562)
		end
		print(script.Parent.Parent.Name.." executed.")
	end
	
	script.Parent.MouseButton1Down:Connect(Script)
end)

-- Visibility
task.spawn(function()
	local script = visibility

	local oldreq = require
	local function require(target)
		if modules[target] then
			return modules[target]()
		end
		return oldreq(target)
	end

	local visible = true
	local blur = Instance.new("BlurEffect")
	
	blur.Parent = game.Lighting
	blur.Size = 0
	
	for i,v in pairs(main_gui:GetChildren()) do
		if v.ClassName == "Frame" then
			v.Visible = false
		end
	end
	
	game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
		if key == "p" then
			if visible == false then
				for i,v in pairs(main_gui:GetChildren()) do
					if v.ClassName == "Frame" then
					v.Visible = true
				end
			end
				blur.Size = 20
				visible = true
				elseif visible == true then
				for i,v in pairs(main_gui:GetChildren()) do
				if v.ClassName == "Frame" then
					v.Visible = false
				end
			end
				blur.Size = 0
				visible = false
			end
		end
	end)
end)
end
