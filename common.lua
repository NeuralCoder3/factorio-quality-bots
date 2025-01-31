local Public = {}

function Public.padleft(str, len, char)
    str = tostring(str)
    if char == nil then char = " " end
    return string.rep(char, len - #str)..str
end

Public.robot_names =  { 
    "construction-robot", "logistic-robot",
    "construction-robot-fission", "logistic-robot-fission",
    "antimatter-construction-robot", "antimatter-logistic-robot",
}

return Public