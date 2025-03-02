local common = require("common")

local robots = {}
for _, name in pairs(common.robot_names) do
  if not data.raw[name] then goto continue end
  local quality_string = ""
  for _, q in pairs(data.raw["quality"]) do
    local k = common.padleft(q.level, 2, "0").."-"..q.name
    local v = 1 + settings.startup["robot-payload-size-multiplier"].value * q.level

    local robot = table.deepcopy(data.raw[name][name])
    robot.name = k.."-"..robot.name
    robot.max_payload_size = robot.max_payload_size * v
    robot.localised_name = {"entity-name."..name}
    robot.localised_description = {"entity-description."..name}
    robot.placeable_by = {item = name, count = 1, quality = k}
    table.insert(robots, robot)

    quality_string = quality_string..q.name.." -> "..robot.max_payload_size.."\n"
  end
  data.raw[name][name].factoriopedia_description = {"",quality_string}
  ::continue::
end
data:extend(robots)