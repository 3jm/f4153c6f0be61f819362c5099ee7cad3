local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local topbar = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local HomeTab = Instance.new("Frame")
local MainNotifierBtn = Instance.new("TextButton")
local MainNotifierText = Instance.new("TextLabel")
local webhook = Instance.new("TextBox")
local CreditsButton = Instance.new("TextButton")
local HomeButton = Instance.new("TextButton")
local CreditsTab = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.178270847, 0, 0.539753556, 0)
main.Size = UDim2.new(0, 266, 0, 165)
main.Active = true
main.Draggable = true

topbar.Name = "topbar"
topbar.Parent = main
topbar.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
topbar.BorderSizePixel = 0
topbar.Size = UDim2.new(0, 266, 0, 25)

TextLabel.Parent = topbar
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 266, 0, 25)
TextLabel.Font = Enum.Font.GothamMedium
TextLabel.Text = "Astro's Notifier"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000
TextLabel.TextWrapped = true

HomeTab.Name = "HomeTab"
HomeTab.Parent = main
HomeTab.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
HomeTab.BorderSizePixel = 0
HomeTab.Position = UDim2.new(0, 0, 0.290909082, 0)
HomeTab.Size = UDim2.new(0, 266, 0, 117)

MainNotifierBtn.Name = "MainNotifierBtn"
MainNotifierBtn.Parent = HomeTab
MainNotifierBtn.BackgroundColor3 = Color3.fromRGB(130, 130, 130)
MainNotifierBtn.Position = UDim2.new(0.0263157897, 0, 0.0644468069, 0)
MainNotifierBtn.Size = UDim2.new(0, 20, 0, 20)
MainNotifierBtn.Font = Enum.Font.SourceSans
MainNotifierBtn.Text = ""
MainNotifierBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
MainNotifierBtn.TextSize = 14.000
local mainnotiferbool = false
MainNotifierBtn.MouseButton1Click:Connect(function()
	if mainnotiferbool == false then
		mainnotiferbool = true
		MainNotifierBtn.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
	else
		MainNotifierBtn.BackgroundColor3 = Color3.fromRGB(130, 130, 130)
		mainnotiferbool = false
	end
end)

MainNotifierText.Name = "MainNotifierText"
MainNotifierText.Parent = HomeTab
MainNotifierText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainNotifierText.BackgroundTransparency = 1.000
MainNotifierText.Position = UDim2.new(0.139097735, 0, 0.0644468069, 0)
MainNotifierText.Size = UDim2.new(0, 121, 0, 20)
MainNotifierText.Font = Enum.Font.GothamMedium
MainNotifierText.Text = "Main Notifier"
MainNotifierText.TextColor3 = Color3.fromRGB(255, 255, 255)
MainNotifierText.TextSize = 14.000
MainNotifierText.TextXAlignment = Enum.TextXAlignment.Left

webhook.Name = "webhook"
webhook.Parent = HomeTab
webhook.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
webhook.Position = UDim2.new(0.0260000005, 0, 0.76581198, 0)
webhook.Size = UDim2.new(0, 252, 0, 21)
webhook.Font = Enum.Font.GothamMedium
webhook.PlaceholderColor3 = Color3.fromRGB(213, 213, 213)
webhook.PlaceholderText = "Webhook URL here"
webhook.Text = ""
webhook.TextColor3 = Color3.fromRGB(255, 255, 255)
webhook.TextSize = 12.000

CreditsButton.Name = "CreditsButton"
CreditsButton.Parent = main
CreditsButton.BackgroundColor3 = Color3.fromRGB(0, 129, 136)
CreditsButton.Position = UDim2.new(0.488721818, 0, 0.187878788, 0)
CreditsButton.Size = UDim2.new(0, 129, 0, 17)
CreditsButton.Font = Enum.Font.GothamMedium
CreditsButton.Text = "Credits"
CreditsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditsButton.TextSize = 14.000
CreditsButton.MouseButton1Click:Connect(function()
	HomeTab.Visible = false
	CreditsTab.Visible = true
end)

HomeButton.Name = "HomeButton"
HomeButton.Parent = main
HomeButton.BackgroundColor3 = Color3.fromRGB(0, 129, 136)
HomeButton.Position = UDim2.new(0.0263157897, 0, 0.187878788, 0)
HomeButton.Size = UDim2.new(0, 123, 0, 17)
HomeButton.Font = Enum.Font.GothamMedium
HomeButton.Text = "Home"
HomeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.TextSize = 14.000
HomeButton.MouseButton1Click:Connect(function()
	HomeTab.Visible = true
	CreditsTab.Visible = false
end)

CreditsTab.Name = "CreditsTab"
CreditsTab.Parent = main
CreditsTab.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
CreditsTab.BorderSizePixel = 0
CreditsTab.Position = UDim2.new(0, 0, 0.290909082, 0)
CreditsTab.Size = UDim2.new(0, 266, 0, 116)
CreditsTab.Visible = false

UIGridLayout.Parent = CreditsTab
UIGridLayout.FillDirection = Enum.FillDirection.Vertical
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIGridLayout.CellSize = UDim2.new(0, 266, 0, 25)

TextLabel_2.Parent = CreditsTab
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 0.750
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.GothamMedium
TextLabel_2.Text = "Lead Dev : Blind#2665"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000

TextLabel_3.Parent = CreditsTab
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 0.750
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
TextLabel_3.Font = Enum.Font.GothamMedium
TextLabel_3.Text = "Script Dev : HKPlays#4587"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 14.000

TextLabel_4.Parent = CreditsTab
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 0.750
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
TextLabel_4.Font = Enum.Font.GothamMedium
TextLabel_4.Text = "Base Dev : fayy#9999"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 14.000

local isOpen = true

local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.Equals then
		if isOpen == true then
			isOpen = false 
			main.Visible = false
		else
			isOpen = true
			main.Visible = true
		end
	end
end)
