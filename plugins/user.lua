return {
  {
    "Exafunction/codeium.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        require("codeium").setup({
        })
    end,
    event = "User AstroFile"
  },
  {
      "hrsh7th/nvim-cmp",
      opts = function(_, opts)
        local cmp = require "cmp"

        opts.sources = cmp.config.sources {
          { name = "nvim_lsp", priority = 1000 },
          { name = "codeium", priority = 750 },
        }

        return opts
      end,
  },
}
