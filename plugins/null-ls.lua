return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettierd.with({
			  extra_filetypes = { "toml" },
			  env = {
				  PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/lua/user/lsp/settings/prettier.json"),
			  },
		  }),
      null_ls.builtins.formatting.rustfmt,
      null_ls.builtins.formatting.black.with({ extra_args = { "--fast" }}),
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.shfmt.with({
        extra_filetypes = { "zsh" }
      }),
      null_ls.builtins.diagnostics.shellcheck,
      null_ls.builtins.diagnostics.pylint
    }
    return config -- return final config table
  end,
}
