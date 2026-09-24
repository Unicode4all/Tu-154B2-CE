-- Optional Crew154 bridge. Missing/orphaned refs leave the original SCP path active.
local bridge = {}
local active_ref, owned_ref, take_ref

function bridge.active()
    if not active_ref then
        active_ref = sasl.findDataRef("crew154/throttle/active", TYPE_INT, true)
    end
    return active_ref ~= nil and sasl.getDataRef(active_ref) == 1
end

function bridge.owned()
    if not owned_ref then
        owned_ref = sasl.findDataRef("crew154/throttle/owned", TYPE_INT, true)
    end
    return owned_ref ~= nil and sasl.getDataRef(owned_ref) == 1
end

function bridge.take()
    if not bridge.active() or bridge.owned() then return end
    if not take_ref then
        take_ref = sasl.findDataRef("crew154/throttle/take", TYPE_INT, true)
    end
    if take_ref then sasl.setDataRef(take_ref, 1) end
end

return bridge