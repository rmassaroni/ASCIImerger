local function split_string(input_str)
    local lines = {}
    for line in input_str:gmatch("[^\r\n]+") do
        table.insert(lines, line)
    end
    return lines
end

local function longest_line_length(lines)
    local max_length = 0
    for _, line in ipairs(lines) do
        if #line > max_length then
            max_length = #line
        end
    end
    return max_length
end

local function print_ascii_side_by_side(ascii1, ascii2)
    local ascii1_lines = split_string(ascii1)
    local ascii2_lines = split_string(ascii2)

    local max_lines = math.max(#ascii1_lines, #ascii2_lines)

    local ascii1_max_length = longest_line_length(ascii1_lines)

    for i = #ascii1_lines + 1, max_lines do
        table.insert(ascii1_lines, "")
    end
    for i = #ascii2_lines + 1, max_lines do
        table.insert(ascii2_lines, "")
    end

    for i = 1, max_lines do
        -- print(ascii1_lines[i] .. "    " .. ascii2_lines[i])
        local padded_ascii1_line = ascii1_lines[i] .. string.rep(" ", ascii1_max_length - #ascii1_lines[i])
        print(padded_ascii1_line .. "    " .. ascii2_lines[i])
    end
end

--example
local ascii1 = [[
  /\_/\
 ( o.o )
  > ^ <
]]

local ascii2 = [[
   .--.
  |o_o |
  |:_/ |
 //   \ \
(|     | )
/'\_   _/`\
\___)=(___/
]]

print_ascii_side_by_side(ascii1, ascii2)

