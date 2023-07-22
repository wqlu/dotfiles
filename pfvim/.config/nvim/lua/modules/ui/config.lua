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
      'Normal', 'NormalFloat', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
      'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
      'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
      'SignColumn', 'CursorLineNr', 'CursorColumn', 'EndOfBuffer', 'StatusLine', 'StatusLineNC','PMenu',
      'FloatBorder', 'TermCursor', 'NvimTreeCursorLine', 'NvimTreeVertSplit', 'NvimTreeSignColumn',
      'NvimTreeNormal', 'NvimTreeEndOfBuffer'
    },
    extra_groups = {}, -- table: additional groups that should be cleared
    exclude_groups = {}, -- table: groups you don't want to clear
  })
end

function config.galaxyline()
  require('modules.ui.eviline')
end

function config.indent_blankline()
  require('indent_blankline').setup({
    show_end_of_line = true,
  })
end

function config.nvim_tree()
  require('nvim-tree').setup({
    disable_netrw = false,
    hijack_cursor = true,
    hijack_netrw = true,
  })
end

return config
