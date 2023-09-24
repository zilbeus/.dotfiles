local colors = {
  black   = '#262626',
  white   = '#ffffff',
  red     = '#b52c2c',
  green   = '#42be65',
  blue    = '#33b1ff',
  yellow  = '#ffe97b',
  cyan    = '#3ddbd9',
  magenta = '#ff73b6',
  b_black = '#090909',
  accent  = '#3e2b00',
  accent_fg  = '#eda601',
  accent_r  = '#0d4746',
}

local lualine_theme = {
  normal = {
    a = { bg = colors.accent, fg = colors.accent_fg, gui = 'bold' },
    b = { bg = colors.b_black, fg = colors.white },
    c = { bg = colors.black, fg = colors.white },
    y = { bg = colors.b_black, fg = colors.white },
    z = { bg = colors.accent_r, fg = colors.white }
  },
  insert = {
    a = { bg = colors.accent, fg = colors.accent_fg, gui = 'bold' },
    b = { bg = colors.b_black, fg = colors.white },
    c = { bg = colors.black, fg = colors.white },
    y = { bg = colors.b_black, fg = colors.blue },
    z = { bg = colors.accent_r, fg = colors.white }
  },
  visual = {
    a = { bg = colors.accent, fg = colors.accent_fg, gui = 'bold' },
    b = { bg = colors.b_black, fg = colors.white },
    c = { bg = colors.black, fg = colors.white },
    y = { bg = colors.b_black, fg = colors.magenta },
    z = { bg = colors.accent_r, fg = colors.white }
  },
  replace = {
    a = { bg = colors.accent, fg = colors.accent_fg, gui = 'bold' },
    b = { bg = colors.b_black, fg = colors.white },
    c = { bg = colors.black, fg = colors.white },
    y = { bg = colors.b_black, fg = colors.green },
    z = { bg = colors.accent_r, fg = colors.white }
  },
  command = {
    a = { bg = colors.accent, fg = colors.accent_fg, gui = 'bold' },
    b = { bg = colors.b_black, fg = colors.white },
    c = { bg = colors.black, fg = colors.white },
    y = { bg = colors.b_black, fg = colors.red },
    z = { bg = colors.accent_r, fg = colors.white }
  },
  inactive = {
    a = { bg = colors.black, fg = colors.white, gui = 'bold' },
    b = { bg = colors.black, fg = colors.white },
    c = { bg = colors.black, fg = colors.white }
  }
}

local function test()
  return [[]]
end

require("lualine").setup({
  options = {
    theme = lualine_theme,
    icons_enabled = true,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {
      test
    },
    lualine_b = {
      {
        "filename",
        file_status = true,
        path = 1,
        symbols = {
          modified = "[+]",
          readonly = "[RO]",
          unnamed = "[NO NAME]",
          newfile = "[NEW]",
        }
      }
    },
    lualine_c = {
      {'branch', icon = {'', color={fg='#7cfc00'}}, color={fg='#4c9a00'}},
      {
        "diff",
        colored = true,
        symbols = {
          added = " ",
          modified = " ",
          removed = " ",
        },
      },
      "diagnostics",
    },
    lualine_x = { "encoding", "filetype" },
    lualine_y = { 
      {
        "mode"
      }
    },
    lualine_z = {
      {
        "location",
        icons_enabled = true,
        icon = ''
      }
    }
  },
})
