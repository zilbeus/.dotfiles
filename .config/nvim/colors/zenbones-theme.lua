local colors_name = "zilq"
vim.g.colors_name = colors_name

local lush = require "lush"
local hsluv = lush.hsluv
local util = require "zenbones.util"

local bg = vim.o.background

local palette
palette = util.palette_extend({
  bg = hsluv "#000000",
  fg = hsluv "#f5f5f5",
  statement = hsluv "#eda601",
  telescope_match = hsluv "#eda601",
  telescope_caret = "#b80000",
  type = hsluv "#a3a3a3",
  special = hsluv "#a3a3a3",
  string = "#58a758",
  number = "#648aed",
  hint = "#8c9cc5",
  error = "#b80000",
  warning = "#ffa500",
  comment = "#4f4f4f",
  search_bg = hsluv "#eda601",
  search_fg = hsluv "#000000",
  selection_bg = "#eda601",
  selection_fg = "#000000",
  selection_match = "#eda601",
  git_add = "#58a758",
  git_delete = "#b80000",
  diff_delete_bg = "#251214"
}, bg)

local generator = require "zenbones.specs"
local base_specs = generator.generate(palette, bg, generator.get_global_config(colors_name, bg))

local specs = lush.extends({ base_specs }).with(function(injected_functions)
  local sym = injected_functions.sym
  return {
    Statement { base_specs.Statement, fg = palette.statement },
    Special { fg = palette.special },
    Type { fg = palette.type },
    String { fg = palette.string, gui = "bold" },
    NormalFloat { bg = palette.bg },
    sym "@number" { fg = palette.number, gui = "bold" },
    sym "@boolean" { fg = palette.number, gui = "bold" },
    sym "@string" { fg = palette.string, gui = "bold" },
    sym "@operator" { fg = palette.type, gui = "bold" },
    sym "@comment" { fg = palette.comment, gui = "bold" },
    DiagnosticHint { fg = palette.hint, gui = "bold" },
    DiagnosticSignHint { fg = palette.hint, gui = "bold" },
    DiagnosticVirtualTextHint { fg = palette.hint, gui = "bold" },
    DiagnosticError { fg = palette.error, gui = "bold" },
    DiagnosticSignError { fg = palette.error, gui = "bold" },
    DiagnosticVirtualTextError { fg = palette.error, gui = "bold" },
    DiagnosticWarn { fg = palette.warning, gui = "bold" },
    DiagnosticSignWarn { fg = palette.warning, gui = "bold" },
    DiagnosticVirtualTextWarn { fg = palette.warning, gui = "bold" },
    TelescopeMatching { fg = palette.telescope_match, gui = "bold" },
    TelescopeSelectionCaret { fg = palette.telescope_caret, gui = "bold" },
    IncSearch { fg = palette.search_fg, bg = palette.search_bg },
    Pmenu { fg = palette.fg, bg = palette.bg },
    PmenuSel { fg = palette.selection_fg, bg = palette.selection_bg },
    CmpItemAbbrMatch { fg = palette.selection_match },
    GitSignsDelete { fg = palette.git_delete },
    GitSignsAdd { fg = palette.git_add },
    DiffDelete { fg = palette.comment, bg = palette.diff_delete_bg },
  }
end)

lush(specs)
require("zenbones.term").apply_colors(palette)


-- vim.cmd("colorscheme zilq")
