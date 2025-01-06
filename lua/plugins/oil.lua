return {
  "stevearc/oil.nvim",
  opts = {
    -- Configure options for oil.nvim
    view_options = {
      show_hidden = true,
    },
  },
  config = function(_, opts)
    -- Setup oil.nvim with provided options
    require("oil").setup(opts)

    -- Custom keybinding for opening oil and enabling preview
    vim.keymap.set("n", "-", function()
      -- Open oil.nvim
      require("oil").open()

      -- Wait for oil to open and check if a file is selected, up to 1 second
      vim.wait(1000, function()
        return require("oil").get_cursor_entry() ~= nil
      end)

      -- If a file is selected, open the preview
      if require("oil").get_cursor_entry() then
        require("oil").open_preview()
      end
    end, { noremap = true, silent = true })
  end,
}
