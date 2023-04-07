return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "java",
      "python",
      "c",
      "html",
      "css",
      "javascript"
    },
    highlight = {
      enable = true,
      disable = {}
    },
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil
    }
  },
}
