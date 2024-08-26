-- Crear un ScreenGui para el Hub
local darkHubGui = Instance.new("ScreenGui")
darkHubGui.Name = "DarkHub"
darkHubGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Crear un marco principal para el Hub
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0.3, 0, 0.4, 0)
mainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = darkHubGui
mainFrame.Draggable = true

-- Crear un título para el Hub
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.15, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Dark Hub"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 28
titleLabel.Parent = mainFrame

-- Función para crear botones en el Hub
local function createButton(buttonText, scriptUrl, position)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0.15, 0)
    button.Position = UDim2.new(0.1, 0, position, 0)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Text = buttonText
    button.TextSize = 20
    button.Parent = mainFrame

    button.MouseButton1Click:Connect(function()
        local success, result = pcall(function()
            return loadstring(game:HttpGet(scriptUrl))()
        end)
        if not success then
            warn("Error ejecutando el script: " .. tostring(result))
        end
    end)
end

-- Crear botones con diferentes scripts
createButton("Script 1", "https://raw.githubusercontent.com/YourUsername/YourRepo/main/script1.lua", 0.25)
createButton("Script 2", "https://raw.githubusercontent.com/YourUsername/YourRepo/main/script2.lua", 0.45)
createButton("Script 3", "https://raw.githubusercontent.com/YourUsername/YourRepo/main/script3.lua", 0.65)

-- Añadir un botón de cierre
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.2, 0, 0.15, 0)
closeButton.Position = UDim2.new(0.75, 0, 0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Text = "X"
closeButton.TextSize = 20
closeButton.Parent = mainFrame

closeButton.MouseButton1Click:Connect(function()
    darkHubGui:Destroy()
end)

