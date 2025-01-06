return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    opts.highlights = opts.highlights or {}

    -- Remove italics and GUI styling from bufferline highlights
    opts.highlights.buffer_selected = {
      gui = "NONE",
      italic = false,
    }
    opts.highlights.buffer_visible = {
      gui = "NONE",
      italic = false,
    }
    opts.highlights.close_button_selected = {
      gui = "NONE",
      italic = false,
    }
    opts.highlights.close_button_visible = {
      gui = "NONE",
      italic = false,
    }

    opts.options = opts.options or {}
    opts.options.numbers = "ordinal" -- Optional: Display buffer numbers
  end,
  config = function(_, opts)
    require("bufferline").setup(opts)

    -- Map <leader>b + 1 to 9 to switch to respective buffers
    for i = 1, 9 do
      vim.api.nvim_set_keymap(
        "n",
        "<leader>b" .. i,
        "<cmd>BufferLineGoToBuffer " .. i .. "<cr>",
        { noremap = true, silent = true, desc = "Go to Buffer " .. i }
      )
    end
  end,
  keys = {
    { "<leader>b1", desc = "Go to Buffer 1" },
    { "<leader>b2", desc = "Go to Buffer 2" },
    { "<leader>b3", desc = "Go to Buffer 3" },
    { "<leader>b4", desc = "Go to Buffer 4" },
    { "<leader>b5", desc = "Go to Buffer 5" },
    { "<leader>b6", desc = "Go to Buffer 6" },
    { "<leader>b7", desc = "Go to Buffer 7" },
    { "<leader>b8", desc = "Go to Buffer 8" },
    { "<leader>b9", desc = "Go to Buffer 9" },
  },
}
