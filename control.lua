local common = require("common")

local on_built = function (data)
    local entity = data.entity --[[@as LuaEntity]]
    if entity.quality.level == 0 then return end
    local surface = entity.surface
    local info = {
        name = common.padleft(entity.quality.level, 2, "0").."-"..entity.quality.name.."-"..entity.name,
        position = entity.position,
        quality = entity.quality,
        force = entity.force,
        fast_replace = true,
        player = entity.last_user,
    }
    entity.destroy()
    surface.create_entity(info)
end

local filters = {}

for _, name in pairs(common.robot_names) do
    filters[name] = {
        filter = "type",
        type = name
    }
end

script.on_event(defines.events.on_built_entity, on_built, filters)
script.on_event(defines.events.on_robot_built_entity, on_built, filters)