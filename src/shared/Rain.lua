local RainModule = {}
local RunService = game:GetService("RunService")

local Player = game:GetService("Players").LocalPlayer

function RainModule.NewEmitterProperties()
    local EmitterProperties = {
        PartProperties = {
            Size = Vector3.new(20,1,20),
            Transparency = 1
        },
        Texture = "http://www.roblox.com/asset/?id=3806148993",
        Orientation = Enum.ParticleOrientation.FacingCameraWorldUp,
        EmissionDirection = Enum.NormalId.Bottom,
        Speed = NumberRange.new(50,50),
        Rate = 100,
        Lifetime = NumberRange.new(1,1),
    }

    return EmitterProperties
end

function RainModule.CreateEmitter(EmitterProperties)
    local NewEmitterPart = Instance.new("Part")
    NewEmitterPart.Size = EmitterProperties.PartProperties.Size
    NewEmitterPart.Transparency = EmitterProperties.PartProperties.Transparency
    NewEmitterPart.Anchored = true

    local NewParticleEmitter = Instance.new("ParticleEmitter")
    for Index, Value in ipairs({
        "Texture",
        "Orientation",
        "EmissionDirection",
        "Speed",
        "Rate",
        "Lifetime"
    })
    do
        NewParticleEmitter[Value] = EmitterProperties[Value]
    end

    NewParticleEmitter.Parent = NewEmitterPart
    NewEmitterPart.Parent = game.Workspace
    NewEmitterPart.Name = "doggydog"
    print(NewEmitterPart)
    return NewEmitterPart
end

function RainModule.AttachEmitterPart(EmitterPart, Character)
    RunService:BindToRenderStep("UpdateRainPosition", Enum.RenderPriority.Character.Value + 1,
    function(Delta)
        EmitterPart.CFrame = Character.PrimaryPart.CFrame * CFrame.new(0, 10, 0)
    end)
end

return RainModule