-- Optional session state. Missing/orphaned refs keep the standalone/SCP path active.
local session = {}
local active_ref

function session.active()
    if not active_ref then
        active_ref = sasl.findDataRef("crew154/session/active", TYPE_INT, true)
    end
    return active_ref ~= nil and sasl.getDataRef(active_ref) == 1
end

return session
