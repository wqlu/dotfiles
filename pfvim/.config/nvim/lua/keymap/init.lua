-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT
-- recommend plugins key defines in this file

require('keymap.config')
local key = require('core.keymap')
local nmap = key.nmap
local silent, noremap = key.silent, key.noremap
local tmap = key.tmap
local opts = key.new_opts
local cmd = key.cmd

-- usage of plugins
nmap({
  -- packer
  { '<Leader>pu', cmd('Lazy update'), opts(noremap, silent) },
  { '<Leader>pi', cmd('Lazy install'), opts(noremap, silent) },
  -- dashboard
  { '<Leader>ss', cmd('SessionSave'), opts(noremap, silent) },
  { '<Leader>sl', cmd('SessionLoad'), opts(noremap, silent) },
    -- nvimtree
  { '<Leader>e', cmd('NvimTreeToggle'), opts(noremap, silent) },
  -- Telescope
  { '<Leader>b', cmd('Telescope buffers'), opts(noremap, silent) },
  { '<Leader>fg', cmd('Telescope live_grep'), opts(noremap, silent) },
  { '<Leader>ff', cmd('Telescope find_files'), opts(noremap, silent) },
  { '<Leader>fb', cmd('Telescope file_browser'), opts(noremap, silent) },
  -- window split
  { '<C-w>\\', cmd(':vsplit<Return><C-w>w'), opts(noremap, silent) },
  { '<C-w>-', cmd(':split<Return><C-w>w'), opts(noremap, silent) },
  -- window resize
  { '<M-h>', '<C-w>>', opts(noremap, silent) },
  { '<M-l>', '<C-w><', opts(noremap, silent) },
  { '<M-j>', '<C-w>-', opts(noremap, silent) },
  { '<M-k>', '<C-w>+', opts(noremap, silent) },
  -- window move
  { '<space>', '<C-w>w', opts(noremap, silent) },
  -- save file
  { '<C-s>', cmd(':w'), opts(noremap, silent) }
})


--- Lspsaga floaterminal
nmap({ '<Leader>t', cmd('Lspsaga term_toggle'), opts(noremap, silent) })
tmap({ 'jk', [[<C-\><C-n>:Lspsaga term_toggle<CR>]]})
