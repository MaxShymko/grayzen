local theme = require("grayzen.theme")

local M = {}

-- Highlight the given group according to the color values
function M.highlight(group, colors)
  local style = colors.style and "gui=" .. colors.style or "gui=NONE"
  local fg = colors.fg and "guifg=" .. colors.fg or "guifg=NONE"
  local bg = colors.bg and "guibg=" .. colors.bg or "guibg=NONE"
  local sp = colors.sp and "guisp=" .. colors.sp or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  vim.cmd(hl)
  if colors.link then
    vim.cmd("highlight! link " .. group .. " " .. colors.link)
  end
end

-- Load the theme
function M.load(colors, options)
  -- Set the theme environment
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "grayzen"

  -- Load highlights
  local highlights = theme.highlights(colors)

  options.on_highlights(highlights, colors)

  for group, color in pairs(highlights) do
    M.highlight(group, color)
  end

  vim.cmd("doautocmd ColorScheme")
end

M.defaults = {
  on_highlights = function() end,
}

function M.setup(opts)
  local colors = require("grayzen.colors")
  local options = vim.tbl_deep_extend("force", {}, M.defaults, opts or {})
  M.load(colors, options)
end

return M
