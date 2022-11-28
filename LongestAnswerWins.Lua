

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local AutoWinLegit = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
main.Position = UDim2.new(0.297267765, 0, 0.291164637, 0)
main.Size = UDim2.new(0, 370, 0, 208)
main.Active = true
main.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = main

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.Size = UDim2.new(0, 370, 0, 50)
Title.Font = Enum.Font.DenkOne
Title.Text = "Made By DINO#1390 | Longest Answer Wins"
Title.TextColor3 = Color3.fromRGB(255, 0, 4)
Title.TextSize = 20.000

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = Title

AutoWinLegit.Name = "AutoWinLegit"
AutoWinLegit.Parent = main
AutoWinLegit.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoWinLegit.Position = UDim2.new(0.229729727, 0, 0.4375, 0)
AutoWinLegit.Size = UDim2.new(0, 200, 0, 50)
AutoWinLegit.Font = Enum.Font.DenkOne
AutoWinLegit.Text = "AutoWin Legit (Every 5 Seconds)"
AutoWinLegit.TextColor3 = Color3.fromRGB(255, 0, 4)
AutoWinLegit.TextSize = 20.000
AutoWinLegit.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = AutoWinLegit

-- Scripts:

local function UTRQFFU_fake_script() -- AutoWinLegit.LocalScript 
	local script = Instance.new('LocalScript', AutoWinLegit)

	script.Parent.MouseButton1Click:connect(function()
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
	
		local hintAnswer = ReplicatedStorage.HintAnswer
		local submitAnswer = ReplicatedStorage.SubmittedAnswer
	
		local function answerQuestion()
			local correctAnswer = hintAnswer.Value
			local answerLength = #correctAnswer
	
			task.wait(math.random(20, 30) / 10 + answerLength / 5) -- 2 - 3s of "thinking", typing speed at 5 cps (average)
	
			submitAnswer:FireServer(correctAnswer, answerLength)
		end
	
		answerQuestion()
	
		hintAnswer:GetPropertyChangedSignal("Value"):Connect(answerQuestion)
	end)
	
end
coroutine.wrap(UTRQFFU_fake_script)()
