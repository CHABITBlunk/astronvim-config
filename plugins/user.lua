return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- TODO take a nice little break
  {
    "catppuccin/nvim",
    name = "catppuccin"
  },
  {
    "mrjones2014/nvim-ts-rainbow",
    event = "VeryLazy"
  },
  {
    "folke/todo-comments.nvim",
    config = function ()
      require('todo-comments').setup {}
    end,
    event = "VeryLazy"
  }
}
