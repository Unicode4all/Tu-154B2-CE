-- Optional Crew154 input bridge. No aircraft calculations live in the plugin.
local control = {}
local refs = {}

local function ref(name, kind)
    if not refs[name] then
        refs[name] = sasl.findDataRef("crew154/control/" .. name, kind, true)
    end

    return refs[name]
end

function control.active()
    local value = ref("active", TYPE_INT)

    return value ~= nil and sasl.getDataRef(value) == 1
end

function control.input_allowed()
    if not control.active() then
        return true
    end

    local value = ref("owned", TYPE_INT)

    return value ~= nil and sasl.getDataRef(value) == 1
end

function control.outputs_allowed(master, hascontrol)
    if control.active() then
        return master ~= 1
    end

    return hascontrol ~= 1
end

function control.register_adapter()
    local ready = ref("adapter_ready", TYPE_INT)
    if ready then
        sasl.setDataRef(ready, 1)
    end
end

function control.brakes(left, right)
    if control.input_allowed() then
        sasl.setDataRef(ref("brake_left_input", TYPE_FLOAT), left)
        sasl.setDataRef(ref("brake_right_input", TYPE_FLOAT), right)
    end

    return sasl.getDataRef(ref("brake_left", TYPE_FLOAT)),
        sasl.getDataRef(ref("brake_right", TYPE_FLOAT))
end

return control
