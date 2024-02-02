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
    "rebelot/kanagawa.nvim"
  },
  {
    "mfussenegger/nvim-jdtls",
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "jdtls" }
      }
    }
  },
  {
    'elkowar/yuck.vim',
    event = "VeryLazy"
  },
  {
    "mrjones2014/nvim-ts-rainbow",
    event = "VeryLazy"
  },
}
