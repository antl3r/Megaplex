local RainModule = {}

function RainModule.NewEmitterProperties()
    local EmitterProperties = {
        PartProperties = {
            Size = Vector3.new(10,1,10),
            Transparency = 1
        },
        Texture = "http://www.roblox.com/asset/?id=3806148993",
        Orientation = Enum.ParticleOrientation.FacingCameraWorldUp,
        EmissionDirection = Enum.NormalId.Bottom,
        Speed = 50,
        Rate = 50,
        Lifetime = 1,
    }

    return EmitterProperties
end

function RainModule.CreateEmitter(EmitterProperties)
    local NewEmitterPart = Instance.new("Part")
    NewEmitterPart.Size = EmitterProperties.PartProperties.Size
    NewEmitterPart.Transparency = EmitterProperties.PartProperties.Transparency

    local NewParticleEmitter = Instance.new("ParticleEmitter")
    for Index, Value in pairs(EmitterProperties) do
        NewParticleEmitter[Index] = Value
    end

    NewParticleEmitter.Parent = NewEmitterPart
    return NewEmitterPart
end



return RainModule