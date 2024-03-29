-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local config = {}

function config.telescope()
  local fb_actions = require('telescope').extensions.file_browser.actions
  require('telescope').setup({
    defaults = {
      prompt_prefix = '🔭 ',
      selection_caret = ' ',
      layout_config = {
        horizontal = { prompt_position = 'top', results_width = 0.6 },
        vertical = { mirror = false },
      },
      sorting_strategy = 'ascending',
      file_previewer = require('telescope.previewers').vim_buffer_cat.new,
      grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
      qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
      file_ignore_patterns = {
        "node_modules"
      },
    },
    extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
      },
      file_browser = {
        mappings = {
          ['n'] = {
            ['c'] = fb_actions.create,
            ['r'] = fb_actions.rename,
            ['d'] = fb_actions.remove,
            ['o'] = fb_actions.open,
            ['u'] = fb_actions.goto_parent_dir,
          },
        },
      },
    },
  })
  require('telescope').load_extension('fzy_native')
  require('telescope').load_extension('file_browser')
end

function config.comment()
  require('Comment').setup({})
end

function config.gitsigns()
  require('gitsigns').setup()
end

return config
