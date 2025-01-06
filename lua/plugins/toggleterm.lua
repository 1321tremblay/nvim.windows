return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    shell = "pwsh",
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    vim.api.nvim_set_keymap(
      "n",
      "<leader>t",
      "<cmd>ToggleTerm direction=horizontal size=10<cr>",
      { noremap = true, silent = true, desc = "Horizontal Terminal" }
    )

    vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
  end,

  keys = {
    { "<leader>t", desc = "Horizontal Terminal" },
  },
}
