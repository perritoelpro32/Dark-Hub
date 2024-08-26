-- Cargar la librería Orion
local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

-- Crear la ventana principal
local Window = OrionLib:MakeWindow({
    Name = "Dark Hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "DarkHubConfig"
})

-- Crear la pestaña principal en la ventana
local MainTab = Window:MakeTab({
    Name = "Scripts",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Añadir botones que ejecutan scripts
MainTab:AddButton({
    Name = "Ejecutar Script 1",
    Callback = function()
        local success, result = pcall(function()
            return loadstring(game:HttpGet('https://raw.githubusercontent.com/YourUsername/YourRepo/main/script1.lua'))()
        end)
        if not success then
            warn("Error ejecutando Script 1: " .. tostring(result))
        end
    end
})

MainTab:AddButton({
    Name = "Ejecutar Script 2",
    Callback = function()
        local success, result = pcall(function()
            return loadstring(game:HttpGet('https://raw.githubusercontent.com/YourUsername/YourRepo/main/script2.lua'))()
        end)
        if not success then
            warn("Error ejecutando Script 2: " .. tostring(result))
        end
    end
})

MainTab:AddButton({
    Name = "Ejecutar Script 3",
    Callback = function()
        local success, result = pcall(function()
            return loadstring(game:HttpGet('https://raw.githubusercontent.com/YourUsername/YourRepo/main/script3.lua'))()
        end)
        if not success then
            warn("Error ejecutando Script 3: " .. tostring(result))
        end
    end
})

-- Crear una nueva pestaña llamada "Config"
local ConfigTab = Window:MakeTab({
    Name = "Config",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Añadir un botón en la pestaña "Config" para eliminar el hub
ConfigTab:AddButton({
    Name = "Eliminar Hub",
    Callback = function()
        OrionLib:Destroy() -- Eliminar todo el hub
    end
})

-- Función para mostrar/ocultar la ventana
local isVisible = true
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        if isVisible then
            Window:Hide()
        else
            Window:Show()
        end
        isVisible = not isVisible
    end
end)

-- Mostrar la ventana al inicio
OrionLib:Init()

-- Notificación al usuario
OrionLib:MakeNotification({
    Name = "Dark Hub",
    Content = "Presiona LeftCtrl para mostrar/ocultar el hub.",
    Image = "rbxassetid://4483345998",
    Time = 5
})

