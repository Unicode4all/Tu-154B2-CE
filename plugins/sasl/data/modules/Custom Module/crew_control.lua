-- Optional Crew154 input bridge. No aircraft calculations live in the plugin.
local control = {}

local function ref(name, kind)
    return sasl.findDataRef("crew154/control/" .. name, kind, true)
end

local function flag(name)
    local value = ref(name, TYPE_INT)

    return value ~= nil and sasl.getDataRef(value) == 1
end

function control.active()
    return flag("active")
end

function control.input_allowed()
    return not control.active() or flag("owned")
end

function control.register_adapter()
    local ready = ref("adapter_ready", TYPE_INT)
    if ready then
        sasl.setDataRef(ready, 1)
    end
end

function control.request_pending()
    return flag("pending")
end

function control.take_handover_thrust_commands()
    local pending = ref("engine_pending", TYPE_INT)

    if not pending or sasl.getDataRef(pending) ~= 1 then
        return
    end

    local left = sasl.getDataRef(ref("engine_command_1", TYPE_FLOAT))
    local center = sasl.getDataRef(ref("engine_command_2", TYPE_FLOAT))
    local right = sasl.getDataRef(ref("engine_command_3", TYPE_FLOAT))

    sasl.setDataRef(pending, 0)

    return left, center, right
end

function control.brakes(left, right)
    if control.input_allowed() then
        sasl.setDataRef(ref("brake_left_input", TYPE_FLOAT), left)
        sasl.setDataRef(ref("brake_right_input", TYPE_FLOAT), right)

        return left, right
    end

    return sasl.getDataRef(ref("brake_left", TYPE_FLOAT)),
        sasl.getDataRef(ref("brake_right", TYPE_FLOAT))
end

return control
