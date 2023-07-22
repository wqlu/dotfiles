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
  { '<Leader>p', cmd('Lazy'), opts(noremap, silent) },
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
  { '<C-x>\\', cmd(':vsplit<Return><C-w>w'), opts(noremap, silent) },
  { '<C-x>-', cmd(':split<Return><C-w>w'), opts(noremap, silent) },
  -- window resize
  { '<C-a>', '<C-w>>', opts(noremap, silent) },
  { '<C-f>', '<C-w><', opts(noremap, silent) },
  { '<C-d>', '<C-w>-', opts(noremap, silent) },
  { '<C-s>', '<C-w>+', opts(noremap, silent) },
  -- window move
  { '<space>', '<C-w>w', opts(noremap, silent) },
  { '<C-h>', '<C-w>h', opts(noremap, silent) },
  { '<C-j>', '<C-w>j', opts(noremap, silent) },
  { '<C-k>', '<C-w>k', opts(noremap, silent) },
  { '<C-l>', '<C-w>l', opts(noremap, silent) },
  -- save file
  -- { '<C-s>', cmd(':w'), opts(noremap, silent) }
})


--- Lspsaga floaterminal
nmap({ '<Leader>t', cmd('Lspsaga term_toggle'), opts(noremap, silent) })
tmap({ 'jk', [[<C-\><C-n>:Lspsaga term_toggle<CR>]]})
