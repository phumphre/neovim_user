local mappings = {
  -- normal mode mappings
  n = {
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<Tab>"] = {
      function()
        if #vim.t.bufs > 1 then
          require("telescope.builtin").buffers { sort_mru = true, ignore_current_buffer = true }
        else
        end
      end,
      desc = "Switch Buffers",
    },
    -- better increment/decrement
    ["-"] = { "<c-x>", desc = "Descrement number" },
    ["+"] = { "<c-a>", desc = "Increment number" },
    ["<S-Up>"] = { function() require("smart-splits").resize_up(2) end, desc = "Resize split up" },
    ["<S-Down>"] = { function() require("smart-splits").resize_down(2) end, desc = "Resize split down" },
    ["<S-Left>"] = { function() require("smart-splits").resize_left(2) end, desc = "Resize split left" },
    ["<S-Right>"] = { function() require("smart-splits").resize_right(2) end, desc = "Resize split right" },
    ["<leader>fe"] = { "<cmd>Telescope file_browser<cr>", desc = "File explorer" },
    ["<leader>r"] = { desc = " REPL" },
    ["<leader>rr"] = { "<Plug>Send", desc = "Send to REPL" },
    ["<leader>rl"] = { "<Plug>SendLine", desc = "Send line to REPL" },
    ["<leader>r<cr>"] = { "<cmd>SendHere<cr>", desc = "Set REPL" },
  },
  -- visual mappings
  v = {
    ["<leader>r"] = { "<Plug>Send", desc = "Send to REPL" },
  },
  -- terminal mappings
  t = {
    ["<C-BS>"] = { "<C-\\><C-n>", desc = "Terminal normal mode" },
    ["<esc><esc>"] = { "<C-\\><C-n>:q<cr>", desc = "Terminal quit" },
  },
  x = {
    -- better increment/decrement
    ["+"] = { "g<C-a>", desc = "Increment number" },
    ["-"] = { "g<C-x>", desc = "Descrement number" },
  },
}

return mappings

