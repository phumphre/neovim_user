return {
  {
    "mtikekar/nvim-send-to-term",
    init = function() vim.g.send_disable_mapping = true end,
    keys = { "<Plug>Send", "<Plug>SendLine" },
    cmd = "SendHere",
  },
  {
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
          -- Configuration here, or leave empty to use defaults
      })
    end
  },
}
