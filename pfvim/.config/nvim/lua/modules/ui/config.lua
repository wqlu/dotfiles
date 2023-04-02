-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local config = {}

function config.gruvbox()
  vim.cmd.colorscheme('gruvbox-material')
  vim.g.gruvbox_material_transparent_background = 2
end

function config.transparent()
  require("transparent").setup({
    groups = { -- table: default groups
      'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
      'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
      'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
      'SignColumn', 'CursorLineNr', 'EndOfBuffer',
    },
    extra_groups = {}, -- table: additional groups that should be cleared
    exclude_groups = {}, -- table: groups you don't want to clear
  })
end

function config.galaxyline()
  require('modules.ui.eviline')
end

function config.tabline()
  require('tabline').setup({
    enable = true,
    options = {
      section_separators = {'|', '|'},
      component_separators = {'|', '|'},
      max_bufferline_percent = 66,
      show_tabs_always = false,
      show_devicons = true,
      show_bufnr = false,
      show_filename_only = true,
      modified_icon = "+ ",
      modified_italic = false,
      show_tabs_only = false,
    }
  })
  vim.api.nvim_command('hi tabline_a_normal guifg=#a9b665')
end

function config.nvim_tree()
  require('nvim-tree').setup({
    disable_netrw = false,
    hijack_cursor = true,
    hijack_netrw = true,
  })
end

function config.indent_blankline()
  require('indent_blankline').setup({
    show_end_of_line = true,
  })
end

return config
