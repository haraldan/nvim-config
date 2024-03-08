return{
  {
    "williamboman/mason.nvim",
    config = true,
    lazy = false
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "clangd" }
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")

      lspconfig.clangd.setup({
        -- cmd = {"clangd-12", '--query-driver=/opt/arm-gnu-toolchain-13_2/bin/arm-none-eabi-gcc', "--pretty", "--clang-tidy"},
        -- cmd = {"clangd-12", '--query-driver=/usr/bin/arm-none-eabi-gcc'},
        cmd = {"clangd-12"},
        single_file_support = false
      })
      lspconfig.lua_ls.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  }
}
