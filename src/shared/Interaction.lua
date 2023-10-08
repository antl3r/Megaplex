local InteractionList = {}

function InteractionList:New(self)
    local NewInteractionList = {
        Options = {},
        setmetatable(self.Options, {

        })
    }
end 