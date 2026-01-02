# Contributing to Tu-154B2 for X-Plane 12

## Prerequisites

- X-Plane 12
- Text editor with Lua support. I personally use Zed with Lua language server.
- Basic understanding of aircraft systems

## Development Setup
1. Fork this repository
2. Clone your fork repository into `X-Plane 12/Aircraft/`
3. Launch X-Plane and load the Tu-154B2

## Making Changes

### Codebase organization

SASL is the primary framework that's used to implement actual aircraft systems,
however XTLua is also used for some systems improvements during Tu-154's closed source days.
It's suggested to use only SASL for new features and do not touch XTLua scripts at all.

SASL codebase is in `plugins/sasl/data/modules/Custom Module/`
XTLua scripts are in `plugins/xtlua/`

### Warning

When reloading the aircraft or SASL module, the simulator may freeze or crash,
this is caused by XTLua, so before doing so, make sure to disable XTLua in Plugins -> Show Plugin Admin.
If you reload the whole aircraft, XTLua will be reenabled automatically.

### Testing

1. Edit Lua files
2. In X-Plane: **Developer → Reload the Current Aircraft** (if you change something outside SASL)
3. Or (preferably) use SASL widget: **Plugins → Tu154B2 (SASL) → Show Widget → Reboot**
4. Check logs at `plugins/sasl/data/output/SASLLog.txt`

### Code Style

As total overhaul of codebase is still pending, there's no strict code style yet.
However, it's recommended to follow this Dataref naming convention:
`tu154b2/custom/system/subsystem/name`

Also it's recommended to follow modern SASL property declaration style:
```lua
prop = createGlobalPropertyi("tu154b2/custom/system/subsystem/name", 0)
```

### Note on AI

While this repository contains CLAUDE.md, we *do not encourage* full "vibe coding", because
a codebase such as this pretty much falls into edge case area, where LLMs can make serious mistakes.
Always triple-check any generated code, review and test thoroughly. If you use AI for assistance
in implementing/improving an aircraft system, always feed it with relevant and accurate data: aircraft
documentation, specific system documentation, system characteristics.
In most cases some knowledge of Russian is needed of course. It's always recommended to
consult SMEs if available.

## Submitting Changes

1. Create a feature branch
2. Test thoroughly in X-Plane
3. Submit a pull request with clear description of changes

## Resources

- [SASL 3 Manual](https://1-sim.com/files/SASL3Manual.pdf)
- [X-Plane DataRefs](https://developer.x-plane.com/datarefs/)
