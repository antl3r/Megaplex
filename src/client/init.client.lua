local PlayerService = game:GetService("Players")

local Shared = game:GetService("ReplicatedStorage"):WaitForChild("Shared")
local RainModule = require(Shared:WaitForChild("Rain"))

PlayerService.LocalPlayer.CharacterAdded:Connect(function(Character)
    local Emitter = RainModule.CreateEmitter(RainModule.NewEmitterProperties())
    RainModule.AttachEmitterPart(Emitter, Character)
end)
