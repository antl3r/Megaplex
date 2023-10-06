local UtilModule = {}

function UtilModule:SetInstanceProperties(Instance, PropertyTable)
	for Property, Value in pairs(PropertyTable) do
		Instance[Property] = Value
	end
end

return UtilModule