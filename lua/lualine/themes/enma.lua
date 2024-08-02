local colors = require("enma.colors").setup({ transform = true })
local config = require("enma.config").options

local enma = {}

enma.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.base0, fg = colors.base04 },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

enma.insert = {
  a = { bg = colors.green, fg = colors.black },
}

enma.command = {
  a = { bg = colors.yellow, fg = colors.black },
}

enma.visual = {
  a = { bg = colors.magenta, fg = colors.black },
}

enma.replace = {
  a = { bg = colors.red, fg = colors.black },
}

enma.terminal = {
  a = { bg = colors.green, fg = colors.black },
}

enma.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

if config.lualine_bold then
  for _, mode in pairs(enma) do
    mode.a.gui = "bold"
  end
end

return enma
