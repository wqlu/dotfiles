---@type MappingsTable
local M = {}

M.disabled = {
  t = {
    ["<A-h>"] = "",
    ["<A-v>"] = ""
  },
  n = {
    ["<A-h>"] = "",
    ["<A-v>"] = "",
    ["<leader>h"] = "",
    ["<leader>v"] = ""
  }
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.nvterm = {
  t = {
    -- toggle in terminal mode
    ["<A-->"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["<A-\\>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },
  },

  n = {
    ["<A-->"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["<A-\\>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },

    ["<leader>-"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "New horizontal term",
    },

    ["<leader>\\"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "New vertical term",
    },
  }
}

-- more keybinds!

return M
